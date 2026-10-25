import assert from 'node:assert/strict';
import {execFileSync} from 'node:child_process';
import {readFileSync,writeFileSync,mkdirSync} from 'node:fs';
assert.equal(process.env.GITHUB_ACTIONS,'true');assert.equal(process.platform,'linux');
const p=JSON.parse(readFileSync('reviewed-source.json'));
assert.equal(p.base,'12f93fa0ceb1345551dd9d9b7b3a9dd0663bc26a');
const run=(exe,args)=>execFileSync(exe,args,{encoding:'utf8',maxBuffer:64e6,stdio:['pipe','pipe','pipe']});
assert.equal(run('calcit',['-v']).trim(),'0.30.1');
const norm=v=>Array.isArray(v)?v.map(norm):v&&typeof v==='object'?Object.fromEntries(Object.entries(v).map(([k,x])=>[k,k==='__edn_set'?x.map(norm).sort((a,b)=>JSON.stringify(a).localeCompare(JSON.stringify(b))):norm(x)])):v;
const q=(...a)=>{const r=JSON.parse(run('calcit',['calcit.cirru','query',...a,'--format','json']));assert.ok(!r.diagnostics?.some(d=>d.severity==='error'));return norm(r.data);};
function views(){const namespaces=[],defs=[];for(const n of q('ns').namespaces){const info=q('ns',n);namespaces.push(info);const names=run('calcit',['calcit.cirru','query','defs',n]).split('\n').filter(l=>/^  \S/.test(l)).map(l=>l.trim().split(' ')[0]);assert.equal(names.length,info.definition_count);for(const d of names)defs.push(q('def',n+'/'+d));}return {config:q('config'),namespaces,defs};}
const expected=structuredClone(norm(p.before)),operations=[],changes=[];
const aliases={'defatom':'defref','add-watch':'add-watch!','remove-watch':'remove-watch!','option:unwrap-or':'.unwrap-or','option:fold':'.fold'};
const hostDefs=new Set(['app.client/connect!','app.client/simulate-login!','app.client/ssr?','app.comp.history/comp-record']);
const mapDefs=new Set(['app.schema/as-map','app.schema/as-map-option','app.schema/as-string-map','app.schema/as-style','app.server/parse-database']);
function queueCode(before,after,id,path=[]){
 if(JSON.stringify(before)===JSON.stringify(after))return;
 if(Array.isArray(before)&&Array.isArray(after)&&before.length===after.length){before.forEach((x,i)=>queueCode(x,after[i],id,[...path,i]));return;}
 assert.ok(path.length,'root definition replacement requires explicit separate handling');
 operations.push(['tree','replace',id,'--path','@'+path.join('.'),'--input-format','json-ast','--code',JSON.stringify(after)]);
}
function migrate(node,id){
 if(!Array.isArray(node)||['quote','quasiquote',';','comment','defmacro'].includes(node[0]))return node;
 node=node.map(x=>migrate(x,id));
 if(node[0]==='fn'&&JSON.stringify(node[1])===JSON.stringify(['e','d!','m!'])){
  assert.equal(id,'app.comp.profile/comp-profile');assert.equal(node[2][0],'.replace');assert.equal(node[2][1],'js/location');
  node[1]=['e','d!'];changes.push({id,kind:'refresh-event-arity'});
 }
 if(aliases[node[0]]){changes.push({id,kind:'alias',before:node[0],after:aliases[node[0]]});node[0]=aliases[node[0]];}
 if(node[0]==='case-default'){
  assert.equal(id,'app.twig.container/twig-container');assert.ok(node.slice(3).every(c=>Array.isArray(c)&&c.length===2&&/^:/.test(c[0])));
  changes.push({id,kind:'literal-match'});node=['match',node[1],...node.slice(3),['_',node[2]]];
 }
 if(node[0]==='unsafe-coerce'){
  assert.equal(node.length,3);changes.push({id,kind:'checked-boundary'});
  if(hostDefs.has(id))node=['js-cast',node[1],node[2]];
  else if(mapDefs.has(id))node=['decode-map-as',node[1],node[2]];
  else if(id==='app.comp.profile/comp-profile')node=['decode-map-as',node[1],['::',"'Map","'Dynamic","'Dynamic"]];
  else if(['app.client/on-server-data','app.server/as-change-list'].includes(id))node=['recollect.schema/decode-changes',node[1]];
  else if(id==='app.server/persist-db!'){assert.equal(node[1],'@*reel');assert.equal(node[2],"'cumulo-reel.core/ReelState");node=node[1];}
  else throw Error('unreviewed unsafe boundary '+id);
 }
 return node;
}
for(const d of expected.defs){
 const old=structuredClone(d.code);d.code=migrate(d.code,d.id);queueCode(old,d.code,d.id);
 if(mapDefs.has(d.id)||d.id==='app.server/as-change-list'){
  const before=JSON.stringify(d.schema);assert.equal(d.schema[0],'{}');d.schema=d.schema.filter(x=>!Array.isArray(x)||x[0]!==':features');
  if(JSON.stringify(d.schema)!==before)operations.push(['edit','schema',d.id,'--input-format','json-ast','--code',JSON.stringify(d.schema)]);
 }
}
assert.equal(changes.filter(c=>c.kind==='alias').length,23);assert.equal(changes.filter(c=>c.kind==='checked-boundary').length,17);assert.equal(changes.filter(c=>c.kind==='literal-match').length,1);
assert.equal(changes.filter(c=>c.kind==='refresh-event-arity').length,1);
const allDefinitions=JSON.stringify(expected.defs);assert.ok(!allDefinitions.includes('lilac'));assert.ok(!allDefinitions.includes('read-string'));
for(const n of expected.namespaces){
 const require=n.ns_code.find(x=>Array.isArray(x)&&x[0]===':require');if(!require)continue;
 const rules=require.slice(1).map(rule=>{assert.ok(Array.isArray(rule));const r=rule[0]==='[]'?rule.slice(1):rule.slice();for(let i=0;i<r.length;i++)if(Array.isArray(r[i])&&r[i][0]==='[]')r[i]=r[i].slice(1);return r;}).filter(r=>r[0]!=='cljs.reader');
 if(JSON.stringify(rules)!==JSON.stringify(require.slice(1))){require.splice(1,require.length-1,...rules);operations.push(['edit','imports',n.namespace,'--input-format','json-ast','--code',JSON.stringify(['[]',...rules])]);}
}
for(const e of expected.config.entries){assert.ok(e.modules.includes('lilac/'));e.modules=e.modules.filter(m=>m!=='lilac/');operations.push(['config','rm-module','lilac/',...(e.name==='default'?[]:['--entry',e.name])]);}
mkdirSync('acceptance',{recursive:true});const blob=()=>run('git',['hash-object','calcit.cirru']).trim();
if(process.argv[2]==='apply'){
 assert.equal(blob(),p.blob);assert.deepEqual(views(),norm(p.before));
 writeFileSync('acceptance/expected-source.json',JSON.stringify(expected));writeFileSync('acceptance/operations.json',JSON.stringify(operations));
 const args=['calcit.cirru','edit','transaction','--file','acceptance/operations.json','--format','json'];const dry=JSON.parse(run('calcit',[...args,'--dry-run']));assert.ok(dry.scoped_revision);writeFileSync('acceptance/preview.json',JSON.stringify(dry));writeFileSync('acceptance/applied.json',run('calcit',[...args,'--expect-revision',dry.scoped_revision]));writeFileSync('acceptance/modified-blob.txt',blob());
}else assert.equal(process.argv[2],'verify');
assert.deepEqual(views(),expected);assert.equal(blob(),readFileSync('acceptance/modified-blob.txt','utf8'));
for(const[f,s]of Object.entries(p.reviewedManifests))assert.equal(readFileSync(f,'utf8'),s);
const oldLock=p.originalManifests['yarn.lock'],newLock=readFileSync('yarn.lock','utf8');
const nonRuntime=s=>s.replace(/^"(?:@calcit\/(?:procs|finger-vec)|@cirru\/parser\.ts)@[^\n]+":\n(?:  .*\n|\n)*?(?=\S|$)/gm,'').replace(/"@calcit\/procs": "npm:[^"]+"/g,'"@calcit/procs": "npm:RUNTIME"');
assert.equal(nonRuntime(newLock),nonRuntime(oldLock));
assert.match(newLock,/"@calcit\/procs@npm:0\.30\.1":/);assert.match(newLock,/"@calcit\/finger-vec@npm:0\.1\.1":/);assert.match(newLock,/"@cirru\/parser\.ts@npm:0\.0\.10":/);
writeFileSync('acceptance/lock-diff.txt',run('git',['diff','--text','--','yarn.lock']));
run('git',['diff','--exit-code',p.base,'--','.github/workflows/upload.yaml','README.md']);
writeFileSync('acceptance/source-evidence.json',JSON.stringify({beforeBlob:p.blob,afterBlob:blob(),definitions:82,namespaces:24,changes,operationCount:operations.length,fullSourceViewsMatch:true,retiredUnusedLilac:true,manifestsUnchanged:true,runtimeOnlyLock:true}));
