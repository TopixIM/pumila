import assert from 'node:assert/strict';
import {execFileSync} from 'node:child_process';
import {readFileSync,writeFileSync,mkdirSync} from 'node:fs';
assert.equal(process.env.GITHUB_ACTIONS,'true');assert.equal(process.platform,'linux');
const p=JSON.parse(readFileSync('reviewed-source.json'));
assert.equal(p.base,'12f93fa0ceb1345551dd9d9b7b3a9dd0663bc26a');
const run=(exe,args)=>execFileSync(exe,args,{encoding:'utf8',maxBuffer:64e6,stdio:['pipe','pipe','pipe']});
assert.equal(run('calcit',['-v']).trim(),'0.30.1');
// Schema is an EDN Map: compare every key/value, independent of its printed order.
// Source AST arrays (including executable Map expressions) remain order-sensitive.
const norm=v=>Array.isArray(v)?v.map(norm):v&&typeof v==='object'?Object.fromEntries(Object.entries(v).map(([k,x])=>[k,k==='__edn_set'?x.map(norm).sort((a,b)=>JSON.stringify(a).localeCompare(JSON.stringify(b))):k==='schema'&&Array.isArray(x)&&x[0]==='{}'?['{}',...x.slice(1).map(norm).sort((a,b)=>a[0].localeCompare(b[0]))]:norm(x)])):v;
const q=(...a)=>{const r=JSON.parse(run('calcit',['calcit.cirru','query',...a,'--format','json']));assert.ok(!r.diagnostics?.some(d=>d.severity==='error'));return norm(r.data);};
function views(){const namespaces=[],defs=[];for(const n of q('ns').namespaces){const info=q('ns',n);namespaces.push(info);const names=run('calcit',['calcit.cirru','query','defs',n]).split('\n').filter(l=>/^  \S/.test(l)).map(l=>l.trim().split(' ')[0]);assert.equal(names.length,info.definition_count);for(const d of names)defs.push(q('def',n+'/'+d));}return {config:q('config'),namespaces,defs};}
const expected=structuredClone(norm(p.before)),operations=[],changes=[];
const aliases={'defatom':'defref','add-watch':'add-watch!','remove-watch':'remove-watch!','option:unwrap-or':'.unwrap-or','option:fold':'.fold'};
const hostDefs=new Set(['app.client/connect!','app.client/simulate-login!','app.client/ssr?','app.comp.history/comp-record']);
const mapDefs=new Set(['app.schema/as-map','app.schema/as-map-option','app.schema/as-string-map','app.schema/as-style','app.server/parse-database']);
const mapType=(key="'Dynamic")=>['::',"'Map",key,"'Dynamic"];
const listType=value=>['::',"'List",value];
const checked=(value,type)=>['decode-map-as',value,type];
const fieldTypes={
 'app.comp.container/comp-container':{'store:logged-in?':"'Bool",'store:count':"'Number"},
 'app.comp.dashboard/comp-dashboard':{'mood:text':"'String",'state:show-editor?':"'Bool"},
 'app.comp.login/comp-login':{'state:username':"'String",'state:password':"'String"},
 'app.twig.container/twig-container':{'db:sessions':mapType("'Number"),'db:users':mapType("'String")},
 'app.updater.user/log-in':{'db:users':mapType("'String")},
 'app.updater.user/sign-up':{'db:users':mapType("'String")},
};
function queueCode(before,after,id,path=[]){
 if(JSON.stringify(before)===JSON.stringify(after))return;
 if(Array.isArray(before)&&Array.isArray(after)&&before.length===after.length){before.forEach((x,i)=>queueCode(x,after[i],id,[...path,i]));return;}
 assert.ok(path.length,'root definition replacement requires explicit separate handling');
 operations.push(['tree','replace',id,'--path','@'+path.join('.'),'--input-format','json-ast','--code',JSON.stringify(after)]);
}
function migrate(node,id){
 if(!Array.isArray(node)||['quote','quasiquote',';','comment','defmacro'].includes(node[0]))return node;
 node=node.map(x=>migrate(x,id));
 if(id==='app.client/mount-target'&&node[0]==='js/document.querySelector'){
  assert.deepEqual(node,['js/document.querySelector','|.app']);
  return ['.query-selector',['js-cast','js/document',"'respo.dom/DomDocument"],'|.app'];
 }
 if(id==='app.comp.emotions/comp-emotion'&&JSON.stringify(node)===JSON.stringify(['app.schema/as-style','style'])){
  // This component publicly accepts nil for its optional style; {} is merge's identity.
  return ['if',['nil?','style'],['{}'],node];
 }
 if(node[0]==='comp-emotion'&&Array.isArray(node[1])&&node[1][0]==='get'){
  assert.ok(['app.comp.dashboard/comp-dashboard','app.comp.history/comp-record'].includes(id));
  node[1]=['.unwrap-or',node[1],'nil'];changes.push({id,kind:'unwrap-emotion-lookup'});
 }
 if(id==='app.comp.emotions/comp-emotion'&&JSON.stringify(node)===JSON.stringify(['<>',['app.schema/read-field','emotion',':text']])){
  // Deleted or unavailable emotions retain the old empty label, not a fabricated emotion.
  return ['let',[['text',node[1]]],['if',['nil?','text'],['span',['{}',[':inner-text','nil'],[':style','nil']]],['<>',checked('text',"'String")]]];
 }
 if(['app.comp.emotion-form/comp-emotion-form','app.comp.history/comp-record'].includes(id)&&node[0]==='.show'){
  assert.equal(node[2],'d!');assert.equal(node[3][0],'fn');assert.deepEqual(node[3][1],[]);
  node[2]=['fn',['op'],['hint-fn',['{}',[':args',['[]',"'Enum"]],[':return',"'Unit"]]],['d!','op'],'&unit'];
  node[3].splice(2,0,['hint-fn',['{}',[':args',['[]']],[':return',"'Unit"]]]);node[3].push('&unit');
  changes.push({id,kind:'confirm-unit-adapters'});
 }
 if(['app.updater.user/log-in','app.updater.user/sign-up'].includes(id)&&node[0]==='md5'){
  assert.equal(node[1],'password');node[1]=checked('password',"'String");
 }
 if(id==='app.server/sync-clients!'&&node[0]==='wss-each!'){
  assert.equal(node[1][0],'fn');assert.deepEqual(node[1][1],['sid']);node[1].push('&unit');
 }
 if(id==='app.server/sync-clients!'&&JSON.stringify(node)===JSON.stringify([['get','@*client-caches','sid'],'.unwrap-or','nil'])){
  return ['match',node[0],[[':some','cached-store'],'cached-store'],[[':none'],'nil']];
 }
 if(id==='app.server/run-server!'&&node[0]==='dispatch!'&&Array.isArray(node[1])&&node[1][0]==='parse-cirru-edn'){
  return ['let',[['op',node[1]]],['if',['enum?','op'],['dispatch!','op','sid'],['raise','|Expected an operation Enum']]];
 }
 if(id==='app.server/run-server!'&&node[0]==='wss-serve!'){
  assert.equal(node[2][0],'fn');node[2].push('&unit');
 }
 if(id==='app.server/main!'&&node[0]==='set-interval'){
  assert.equal(node[2][0],'fn');node[2].push('&unit');
 }
 if(id==='app.updater.emotion/create-one'&&node[0]==='merge'){
  return ['let',[['emotion',node]],['assoc','emotion',':score',['app.schema/as-score',['app.schema/read-field','emotion',':score']]]];
 }
 if(node[0]==='last'&&node[1]==='pair'){
  assert.ok(['app.comp.dashboard/comp-dashboard','app.comp.history/comp-history','app.twig.container/twig-container'].includes(id));
  changes.push({id,kind:'unwrap-map-pair-value'});return ['.unwrap',node];
 }
 if(node[0]==='app.schema/read-field'){
  const type=fieldTypes[id]?.[node[1]+node[2]];
  if(type){changes.push({id,kind:'checked-owned-field',field:node[2]});return checked(node,type);}
  if(id==='app.twig.container/twig-container'&&node[2]===':time')return checked(node,"'Number");
 }
 if(id==='app.client/dispatch!'&&node[0]==='update-states'){
  assert.equal(node[2],'cursor');node[2]=checked('cursor',listType("'Dynamic"));
 }
 if(id==='app.comp.profile/comp-profile'&&JSON.stringify(node)===JSON.stringify(['<>','username'])){
  // Guests have no user name; preserve the exact nil-span emitted by the old <>.
  return ['if',['nil?','username'],['span',['{}',[':inner-text','nil'],[':style','nil']]],['<>',checked('username',"'String")]];
 }
 if(id==='app.updater/updater'&&['user/log-in','user/sign-up','router/change','emotion/create-one','mood/create-one'].includes(node[0])){
  assert.equal(node[2],'op-data');node[2]=checked('op-data',node[0].startsWith('user/')?listType("'Dynamic"):mapType());
 }
 if(id==='app.server/sync-clients!'&&node[0]==='app.schema/read-field'&&node[1]==='reel'){
  assert.ok([':db',':records'].includes(node[2]));return [node[2],'reel'];
 }
 if(node[0]==='struct-with'&&node[1]==='reel-schema'){
  assert.equal(id,'app.server/*reel');assert.deepEqual(node.slice(2),[[':base','@*initial-db'],[':db','@*initial-db']]);
  node=['cumulo-reel.core/ReelState',':base','@*initial-db',':db','@*initial-db',':records',['[]'],':merged?','false'];
  changes.push({id,kind:'concrete-reel-constructor'});
 }
 if(node[0]==='assert-type'){
  assert.equal(node.length,3);changes.push({id,kind:'checked-assertion'});
  node=Array.isArray(node[1])&&node[1][0]==='app.schema/read-field'&&node[1][2]===':score'?['app.schema/as-score',node[1]]:['decode-map-as',node[1],node[2]];
 }
 if(node.length===2&&node[1]==='config/site'&&node[0].startsWith?.(':')){
  const key=node[0];assert.ok([':storage-key',':storage-file',':port',':icon'].includes(key),'unreviewed config field '+key);
  node=key===':storage-key'?['decode-map-as',['.unwrap',['get','config/site',key]],"'String"]:['get','config/site',key];
  changes.push({id,kind:'explicit-config-map-lookup',key});
 }
 if(node[0]==='->'&&node[1]==='config/site'){
  node=node.map((x,i)=>i>1&&typeof x==='string'&&x.startsWith(':')?['get',x]:x);
 }
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
  if(hostDefs.has(id))node=node[2]==="'String"?['js-ffi.contract/expect-string','|'+id,node[1]]:['js-cast',node[1],node[2]];
  else if(mapDefs.has(id))node=['decode-map-as',node[1],node[2]];
  else if(id==='app.comp.profile/comp-profile')node=['decode-map-as',node[1],['::',"'Map","'Dynamic","'Dynamic"]];
  else if(['app.client/on-server-data','app.server/as-change-list'].includes(id))node=['recollect.schema/decode-changes',node[1]];
  else if(id==='app.server/persist-db!'){assert.equal(node[1],'@*reel');assert.equal(node[2],"'cumulo-reel.core/ReelState");node=node[1];}
  else throw Error('unreviewed unsafe boundary '+id);
 }
 return node;
}
for(const d of expected.defs){
 const old=structuredClone(d.code);d.code=migrate(d.code,d.id);
 if(d.id==='app.updater/updater')d.code[3]=checked(d.code[3],mapType("'Tag"));
 if(d.id==='app.client/dispatch!')d.code[4]=['do',d.code[4],'&unit'];
 queueCode(old,d.code,d.id);
 if(mapDefs.has(d.id)||d.id==='app.server/as-change-list'){
  const before=JSON.stringify(d.schema);assert.equal(d.schema[0],'{}');d.schema=d.schema.filter(x=>!Array.isArray(x)||x[0]!==':features');
  if(JSON.stringify(d.schema)!==before){
   const transport=['::',':fn',['{}',...d.schema.slice(1).filter(x=>x[0]!==':kind')]];
   operations.push(['edit','schema',d.id,'--input-format','json-ast','--code',JSON.stringify(transport)]);
  }
 }
 if(d.id==='app.server/*reel'){
  d.schema=['::',"'Ref",['::',"'cumulo-reel.core/ReelState",['::',"'Map","'Tag","'Dynamic"]]];
  operations.push(['edit','schema',d.id,'--input-format','json-ast','--code',JSON.stringify(d.schema)]);
 }
 if(d.id==='app.server/*client-caches'){
  d.schema=['::',"'Ref",['::',"'Map","'Number",mapType("'Tag")]];
  operations.push(['edit','schema',d.id,'--input-format','json-ast','--code',JSON.stringify(d.schema)]);
 }
 const schemaUpdates={
  'app.comp.kit/comp-field':{args:["'String","'Dynamic"]},
  'app.client/dispatch!':{return:"'Unit"},
  'app.client/mount-target':{return:['::',"'JsNullish","'respo.dom/DomElement"]},
  'app.updater/updater':{args:[mapType("'Tag"),"'Dynamic","'Dynamic","'Dynamic","'Dynamic"],return:mapType("'Tag")},
  'app.twig.container/twig-container':{args:[mapType("'Tag"),"'Dynamic",listType(listType("'Dynamic"))]},
  'app.twig.container/twig-members':{args:[mapType("'Number"),mapType("'String")],return:mapType("'Number")},
  'app.server/sync-clients!':{args:[['::',"'cumulo-reel.core/ReelState",mapType("'Tag")]]},
 }[d.id];
 if(schemaUpdates){
  for(const[key,value]of Object.entries(schemaUpdates)){
   const field=d.schema.find(x=>Array.isArray(x)&&x[0]===':'+key);assert.ok(field);
   field[1]=key==='args'?['[]',...value]:value;
  }
  operations.push(['edit','schema',d.id,'--input-format','json-ast','--code',JSON.stringify(['::',':fn',['{}',...d.schema.slice(1).filter(x=>x[0]!==':kind')]])]);
 }
}
const scoreId='app.schema/as-score';
const scoreCode=['defn','as-score',['value'],['if',['number?','value'],'value',['if',['string?','value'],['match',['parse-float','value'],[[':ok','score'],'score'],[[':err','message'],['raise',['str','|Invalid emotion score: ','message']]]],['raise','|Emotion score must be Number or numeric String']]]];
const scoreSchema=['{}',[':kind',':fn'],[':args',['[]',"'Dynamic"]],[':return',"'Number"]];
const rejects=value=>['assert=','true',['try',['do',['as-score',value],'false'],['fn',['message'],'true']]];
const scoreTest=['do',['assert=','0',['as-score','0']],['assert=','12.5',['as-score','|12.5']],rejects('|'),rejects('|not-a-score')];
expected.defs.splice(expected.defs.findIndex(d=>d.id==='app.schema/as-string-map'),0,{code:scoreCode,doc:'',examples:[],ffi:null,ffi_edn:null,id:scoreId,js_ffi:null,schema:scoreSchema,tags:[],tests:[{code:scoreTest,name:'legacy-score-boundary',tags:[]}]});
expected.namespaces.find(n=>n.namespace==='app.schema').definition_count++;
operations.push(['edit','def',scoreId,'--input-format','json-ast','--code',JSON.stringify(scoreCode)]);
operations.push(['edit','schema',scoreId,'--input-format','json-ast','--code',JSON.stringify(['::',':fn',['{}',...scoreSchema.slice(1).filter(x=>x[0]!==':kind')]])]);
operations.push(['edit','add-test',scoreId,'legacy-score-boundary','--input-format','json-ast','--code',JSON.stringify(scoreTest)]);
assert.equal(changes.filter(c=>c.kind==='alias').length,23);assert.equal(changes.filter(c=>c.kind==='checked-boundary').length,17);assert.equal(changes.filter(c=>c.kind==='literal-match').length,1);
assert.equal(changes.filter(c=>c.kind==='refresh-event-arity').length,1);
assert.equal(changes.filter(c=>c.kind==='checked-assertion').length,7);assert.equal(changes.filter(c=>c.kind==='concrete-reel-constructor').length,1);
const allDefinitions=JSON.stringify(expected.defs);assert.ok(!allDefinitions.includes('lilac'));assert.ok(!allDefinitions.includes('read-string'));
for(const n of expected.namespaces){
 const require=n.ns_code.find(x=>Array.isArray(x)&&x[0]===':require');if(!require)continue;
 const rules=require.slice(1).map(rule=>{assert.ok(Array.isArray(rule));const r=rule[0]==='[]'?rule.slice(1):rule.slice();for(let i=0;i<r.length;i++)if(Array.isArray(r[i])&&r[i][0]==='[]')r[i]=r[i].slice(1);if(r[0]==='cumulo-reel.core'&&r[1]===':refer')r[2]=r[2].filter(x=>x!=='reel-schema');return r;}).filter(r=>r[0]!=='cljs.reader');
 if(JSON.stringify(rules)!==JSON.stringify(require.slice(1))){require.splice(1,require.length-1,...rules);operations.push(['edit','imports',n.namespace,'--input-format','json-ast','--code',JSON.stringify(['[]',...rules])]);}
}
for(const e of expected.config.entries){assert.ok(e.modules.includes('lilac/'));e.modules=e.modules.filter(m=>m!=='lilac/');operations.push(['config','rm-module','lilac/',...(e.name==='default'?[]:['--entry',e.name])]);}
const browser=expected.config.entries.find(e=>e.name==='default');assert.ok(!browser.modules.includes('js-ffi/'));browser.modules.push('js-ffi/');operations.push(['config','add-module','js-ffi/']);
mkdirSync('acceptance',{recursive:true});const blob=()=>run('git',['hash-object','calcit.cirru']).trim();
if(process.argv[2]==='apply'){
 assert.equal(blob(),p.blob);assert.deepEqual(views(),norm(p.before));
 writeFileSync('acceptance/expected-source.json',JSON.stringify(expected));writeFileSync('acceptance/operations.json',JSON.stringify(operations));
 const args=['calcit.cirru','edit','transaction','--file','acceptance/operations.json','--format','json'];const dry=JSON.parse(run('calcit',[...args,'--dry-run']));assert.ok(dry.scoped_revision);writeFileSync('acceptance/preview.json',JSON.stringify(dry));writeFileSync('acceptance/applied.json',run('calcit',[...args,'--expect-revision',dry.scoped_revision]));writeFileSync('acceptance/modified-blob.txt',blob());
}else assert.equal(process.argv[2],'verify');
const actual=views();writeFileSync('acceptance/actual-source.json',JSON.stringify(actual));
assert.deepEqual(actual,norm(expected));assert.equal(blob(),readFileSync('acceptance/modified-blob.txt','utf8'));
for(const[f,s]of Object.entries(p.reviewedManifests))assert.equal(readFileSync(f,'utf8'),s);
const oldLock=p.originalManifests['yarn.lock'],newLock=readFileSync('yarn.lock','utf8');
const nonRuntime=s=>s.replace(/^"(?:@calcit\/(?:procs|finger-vec)|@cirru\/parser\.ts)@[^\n]+":\n(?:  [^\n]*\n|\n)*/gm,'').replace(/"@calcit\/procs": "npm:[^"]+"/g,'"@calcit/procs": "npm:RUNTIME"');
writeFileSync('acceptance/lock-diff.txt',run('git',['diff','--text','--','yarn.lock']));
assert.ok(nonRuntime(newLock)===nonRuntime(oldLock),'unexpected non-runtime lock changes; inspect acceptance/lock-diff.txt');
assert.match(newLock,/"@calcit\/procs@npm:0\.30\.1":/);assert.match(newLock,/"@calcit\/finger-vec@npm:0\.1\.1":/);assert.match(newLock,/"@cirru\/parser\.ts@npm:0\.0\.10":/);
run('git',['diff','--exit-code',p.base,'--','.github/workflows/upload.yaml','README.md']);
writeFileSync('acceptance/source-evidence.json',JSON.stringify({beforeBlob:p.blob,afterBlob:blob(),definitions:expected.defs.length,namespaces:24,changes,operationCount:operations.length,fullSourceViewsMatch:true,retiredUnusedLilac:true,manifestsUnchanged:true,runtimeOnlyLock:true}));
