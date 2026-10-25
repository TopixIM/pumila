import assert from 'node:assert/strict';
import {execFileSync} from 'node:child_process';
import {readFileSync,writeFileSync,mkdirSync,readdirSync,statSync,copyFileSync,existsSync} from 'node:fs';
import {createHash} from 'node:crypto';
assert.equal(process.env.GITHUB_ACTIONS,'true');assert.equal(process.platform,'linux');
const run=(exe,args)=>execFileSync(exe,args,{encoding:'utf8',maxBuffer:64e6,stdio:['pipe','pipe','pipe']});
const norm=v=>Array.isArray(v)?v.map(norm):v&&typeof v==='object'?Object.fromEntries(Object.entries(v).map(([k,x])=>[k,k==='__edn_set'?x.map(norm).sort((a,b)=>JSON.stringify(a).localeCompare(JSON.stringify(b))):k==='schema'&&Array.isArray(x)&&x[0]==='{}'?['{}',...x.slice(1).map(norm).sort((a,b)=>a[0].localeCompare(b[0]))]:norm(x)])):v;
const q=(...args)=>{const r=JSON.parse(run('calcit',['query',...args,'--format','json']));assert.deepEqual(r.diagnostics||[],[]);return norm(r.data);};
assert.equal(run('calcit',['-v']).trim(),'0.30.1');const p=JSON.parse(readFileSync('reviewed-source.json')),expected=structuredClone(p.before),mode=process.argv[2],phase=process.argv[3];assert.ok(['copyboard','pumila'].includes(p.name));mkdirSync('acceptance',{recursive:true});assert.equal(p.sites.length,2);
for(const s of p.sites){assert.equal(s.head,'count');let n=expected.defs.find(d=>d.id===s.definition).code;for(const i of s.path.split('.').map(Number))n=n[i];assert.deepEqual(n,s.before);n[0]='.len';}
for(const s of p.schemaChanges){const d=expected.defs.find(d=>d.id===s.definition);assert.deepEqual(d.schema,s.before);d.schema=structuredClone(s.after);}
for(const s of p.boundaryChanges){let n=expected.defs.find(d=>d.id===s.definition).code;const path=s.path.split('.').map(Number);for(const i of path.slice(0,-1))n=n[i];assert.deepEqual(n[path.at(-1)],s.before);n[path.at(-1)]=structuredClone(s.after);}
for(const t of p.newTests){const d=expected.defs.find(d=>d.id===t.definition);assert.equal(d.tests.length,0);d.tests.push({code:t.code,name:t.name,tags:t.tags});}
for(const t of p.testChanges){const d=expected.defs.find(d=>d.id===t.definition);assert.equal(d.tests[t.testIndex].name,t.name);assert.deepEqual(d.tests[t.testIndex].code,t.before);d.tests[t.testIndex].code=structuredClone(t.after);}
const views=()=>{const namespaces=[],defs=[];for(const ns of q('ns').namespaces){const info=q('ns',ns);namespaces.push(info);const names=run('calcit',['query','defs',ns]).split('\n').filter(l=>/^  \S/.test(l)).map(l=>l.trim().split(' ')[0]);assert.equal(names.length,info.definition_count);for(const n of names)defs.push(q('def',ns+'/'+n));}return {config:q('config'),namespaces,defs};};
const blob=()=>run('git',['hash-object','calcit.cirru']).trim(),guard=()=>{for(const[f,h]of Object.entries(p.ordinaryBlobs))assert.equal(run('git',['hash-object',f]).trim(),h,f);};
if(mode==='before'){
 assert.equal(blob(),p.blob);assert.deepEqual(views(),norm(p.before));guard();assert.ok(!p.before.defs.some(d=>d.id.endsWith('/count')));assert.ok(!JSON.stringify(p.before.namespaces).includes('"count"'));
 for(const[i,s]of p.sites.entries()){
  writeFileSync('acceptance/before-subtree-'+i+'.json',run('calcit',['tree','show',s.definition,'--path','@'+s.path,'--format','json']));
  const t=JSON.parse(run('calcit',['--entry','server','query','type-at',s.definition,'--path','@'+s.path+'.1','--format','json']));writeFileSync('acceptance/type-'+i+'.json',JSON.stringify(t));assert.deepEqual(t.diagnostics||[],[]);const m=t.data.static_methods.find(m=>m.name==='.len');assert.equal(m.status,'proven');assert.ok(['calcit.core/&list:count','calcit.core/&map:count'].includes(m.definition));assert.equal(m.call_types.returns,"'Number");assert.deepEqual(m.parameter_types,[]);assert.equal(m.rest_type,null);
 }
 writeFileSync('acceptance/before-source.json',JSON.stringify(views()));
}else if(mode==='apply'){
 assert.equal(blob(),p.blob);assert.deepEqual(views(),norm(p.before));guard();
 const operations=p.sites.map(s=>['tree','replace',s.definition,'--path','@'+s.path+'.0','--input-format','json-ast','--code',JSON.stringify('.len')]);
 for(const s of p.schemaChanges)operations.push(['edit','schema',s.definition,'--input-format','json-ast','--code',JSON.stringify(s.after)]);
 for(const s of p.boundaryChanges)operations.push(['tree','replace',s.definition,'--path','@'+s.path,'--input-format','json-ast','--code',JSON.stringify(s.after)]);
 for(const t of p.newTests)operations.push(['edit','add-test',t.definition,t.name,'--input-format','json-ast','--code',JSON.stringify(t.code)]);
 for(const t of p.testChanges){const op=['edit','add-test',t.definition,t.name,'--overwrite','--input-format','json-ast','--code',JSON.stringify(t.after)];if(t.tags.length)op.push('--tags',t.tags.join(','));operations.push(op);}
 assert.equal(operations.length,p.name==='copyboard'?3:6);writeFileSync('acceptance/operations.json',JSON.stringify(operations));const args=['edit','transaction','--file','acceptance/operations.json','--format','json'];const preview=JSON.parse(run('calcit',[...args,'--dry-run']));assert.ok(preview.scoped_revision);assert.equal(blob(),p.blob);writeFileSync('acceptance/preview.json',JSON.stringify(preview));writeFileSync('acceptance/applied.json',run('calcit',[...args,'--expect-revision',preview.scoped_revision]));writeFileSync('acceptance/modified-blob.txt',blob());assert.deepEqual(views(),norm(expected));guard();writeFileSync('acceptance/expected-source.json',JSON.stringify(norm(expected)));
}else if(mode==='after'){
 assert.deepEqual(views(),norm(expected));assert.equal(blob(),readFileSync('acceptance/modified-blob.txt','utf8'));guard();writeFileSync('acceptance/after-source.json',JSON.stringify(views()));
}else if(mode==='gates'){
 assert.ok(['before','after'].includes(phase));const source=blob();
 const calcitLog=(name,args)=>{const file='acceptance/'+phase+'-'+name;try{writeFileSync(file,run('calcit',args));}catch(e){writeFileSync(file,e.stdout||'');writeFileSync(file+'.stderr',e.stderr||'');throw Error('Required gate failed: '+file+' exit '+e.status);}};
 const format=JSON.parse(run('calcit',['edit','transaction','--code','[["edit","format"]]','--dry-run','--format','json']));assert.equal(format.changed,false);writeFileSync('acceptance/'+phase+'-canonical.json',JSON.stringify(format));assert.equal(blob(),source);
 calcitLog('strict.json',['fix','--workflow','strict','--verify','--format','json']);const strict=JSON.parse(readFileSync('acceptance/'+phase+'-strict.json'));assert.equal(strict.data.workflow.status,'passed');assert.deepEqual(strict.diagnostics,[]);
 calcitLog('browser-entry.log',['--check-only']);calcitLog('server-entry.log',['--entry','server','--check-only']);
 const namespaces=p.before.namespaces.filter(n=>n.definition_count>0).map(n=>n.namespace),browser=namespaces.filter(n=>n!=='app.server'&&!n.startsWith('app.twig.')&&!n.startsWith('app.updater')),server=namespaces.filter(n=>n!=='app.client'&&!n.startsWith('app.comp.')&&n!=='app.style');
 calcitLog('browser.json',['--check-only',...browser.flatMap(n=>['--ns',n]),'--summary-only','--format','json']);calcitLog('server.json',['--entry','server','--check-only',...server.flatMap(n=>['--ns',n]),'--summary-only','--format','json']);calcitLog('native.json',['--entry','server','test','--require-match','--summary-only','--format','json']);
 if(p.name==='copyboard'){
  writeFileSync('acceptance/'+phase+'-original-check.log',run('yarn',['check']));for(const entry of [[],['--entry','server']]){const raw=run('calcit',[...entry,'analyze','weak-types','--only','dynamic-method','--summary-only','--format','json']);assert.equal(JSON.parse(raw).data.summary.findings,0);writeFileSync('acceptance/'+phase+'-dynamic-'+(entry.length?'server':'browser')+'.json',raw);}
  assert.equal(existsSync('storage.cirru'),false,'No tracked/user storage may be used');writeFileSync('acceptance/'+phase+'-original-smoke.log',run('node',['scripts/smoke-native-server.mjs']));assert.equal(existsSync('storage.cirru'),false,'Original smoke removes only its own synthetic fixture');
 }else{
  for(const target of ['app.schema/as-score','app.updater.emotion/create-one','app.twig.container/twig-members','app.server/as-change-list'])calcitLog('original-test-'+target.replaceAll('/','-')+'.json',['--entry','server','test',target,'--require-match','--summary-only','--format','json']);
  calcitLog('original-public-browser.log',['analyze','check-public',...browser.filter(n=>n!=='app.$meta').flatMap(n=>['--ns',n])]);calcitLog('original-public-server.log',['--entry','server','analyze','check-public',...server.flatMap(n=>['--ns',n])]);
 }
 process.env.CALCIT_BIN=run('which',['calcit']).trim();const targets=p.name==='copyboard'?['app.updater.snippet/remove-one']:['app.schema/as-score','app.updater.emotion/create-one','app.twig.container/twig-members',...(phase==='after'?['app.updater/updater']:[])];writeFileSync('acceptance/'+phase+'-shared.log',run('node',['.calcit/core-test-tools/scripts/run-core-tests.mjs','--snapshot','calcit.cirru','--entry','default',...targets.flatMap(t=>['--target',t]),'--backend','native,js','--exclusions','.calcit/core-test-tools/scripts/core-tests-exclusions.cirru','--support-matrix','.calcit/core-test-tools/docs/installation/wasm-support.md','--results-json','acceptance/'+phase+'-shared.json']));
 process.env.VITE_BASE_URL='./';writeFileSync('acceptance/'+phase+'-compile.log',run('yarn',['compile-page']));writeFileSync('acceptance/'+phase+'-build.log',run('yarn',['release-page']));
 const files=[];function visit(dir){for(const n of readdirSync(dir).sort()){const f=dir+'/'+n;if(statSync(f).isDirectory())visit(f);else if(f.endsWith('.mjs'))files.push({path:f,sha256:createHash('sha256').update(readFileSync(f)).digest('hex')});}}visit('js-out');writeFileSync('acceptance/'+phase+'-js.json',JSON.stringify(files));
 if(phase==='before')for(const f of files){const dest='/tmp/pair435-'+p.name+'-before/'+f.path;mkdirSync(dest.slice(0,dest.lastIndexOf('/')),{recursive:true});copyFileSync(f.path,dest);}
 else{const before=JSON.parse(readFileSync('acceptance/before-js.json')),a=new Map(files.map(f=>[f.path,f.sha256])),b=new Map(before.map(f=>[f.path,f.sha256])),changed=[...new Set([...a.keys(),...b.keys()])].filter(f=>a.get(f)!==b.get(f));let diff='';for(const f of changed){try{run('diff',['-u','--label','before/'+f,'--label','after/'+f,b.has(f)?'/tmp/pair435-'+p.name+'-before/'+f:'/dev/null',a.has(f)?f:'/dev/null']);}catch(e){assert.equal(e.status,1);diff+=e.stdout;}}writeFileSync('acceptance/generated-js.diff',diff);writeFileSync('acceptance/generated-js.json',JSON.stringify({before:before.length,after:files.length,changed}));}
 guard();assert.equal(blob(),source);
}else throw Error('invalid mode');
