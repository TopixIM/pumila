
Pumila
------

> Personal message logger.

### Workflow

https://github.com/Cumulo/calcium-workflow

### 构建与部署

正式 Calcit / `@calcit/procs` 0.30.1、caps 0.1.1、Node.js 24、Yarn 4.18.0；browser/native 入口分开检查。使用 `caps --strict --ci` 校验正式 tag 的完整依赖图，保留 full strict、入口与前后端所有非空应用 namespace 的公开定义门禁（`app.util.dom` 没有定义，不列入零覆盖检查）。原生附带测试覆盖情绪分数、部分更新、会话成员及补丁编解码；构建通过不等于登录、浏览器交互或生产部署已验收。

旧存档的数字字符串 `score` 可受检读取；新建或更新情绪时，在原合并结果上仅将 `score` 规范化为 Number，保留额外字段和部分更新顺序。不批量改写存档；空分数、非法数字文本及不符合边界合同的数据会明确报错，不静默补 0。其他字段名和 WebSocket 操作 tag 不变。保留 `hud!` 的页面报错与热更新行为。

本轮将记录 List、会话 Map 的两处计数改为 `.len`，并收紧情绪/心情两个创建函数的真实合同：数据库与数据为开放 `Map<Tag, Dynamic>`，会话 ID 为 Number，操作 ID 为 String，时间为 Number。原根 updater 仍接收真实 raw 输入，仅在两条创建分支使用已有受检 decoder；不扩大 Dynamic、不添加强转或默认值，保留额外字段、部分更新、心情默认字段和原数字字符串 score 读取。当前服务端生产者符合这些合同，但错误类型的历史操作 metadata 会更早报错；这不保证任意旧存档或补丁都兼容，也不自动迁移存档。

新增回归附在原根 updater 内，验证两条创建路径、额外字段与默认值保留，以及三类错误 metadata 拒绝；原四项测试保留。根 updater 依赖 native `calcit.std.hash/md5`，该回归使用真实 server 入口，不宣称支持浏览器 JS；原三项可移植附带测试继续用于 native/JS 对照。原 CI 测试循环追加该目标，canonical 检查改为官方事务 dry-run，不增加常驻脚本、测试框架或上传后复查。

官方 Linux 正式 0.30.1 准备 CI 已通过原严格依赖安装、完整 strict、双入口/公开定义门禁、原生测试 5/5 与共享 native/JS 各 3/3。浏览器 51、服务端 49 个定义联合覆盖全部 83 个，24 个 namespace 完整前后视图及实际接收 Snapshot 的只读视图已核验；16 个普通文件不变，213 个浏览器生成模块全部字节一致。这不能代替后端真实会话、旧存档、登录或生产验收；本轮不启动服务、不操作真实数据、不合并部署。

COS 只上传前端 `dist/`。生产 CDN 路径保持 `https://cos-sh.tiye.me/TopixIM/pumila/`，同仓库 PR 预览使用 `pr/<编号>/<run-id>/<attempt>/`；fork PR 不使用部署 secrets。`worktools/cos-upload-action@v1.2.0` 用 `public-base-url` 和内置 `verify-*` 默认配置校验上传，无额外验证脚本。

依赖机器人或其他缺少 COS 凭据的 PR 保留全部编译/类型门禁，只告警并跳过前端预览上传；当前生产提交缺少任一 COS 凭据仍立即失败，阻止后续前后端 rsync。不为 PR 开放额外 secret，不改变前后端目录。

生产运行排队且不取消进行中的上传，上传前一次检查 main SHA，旧提交跳过部署；不是原子发布。原 `pumila.chenyong.life` 主机、`rsync_private_key_tc` secret、web rsync 目录与 `/servers/pumila/` 服务端目录都不变，`dist-server/` 不上传 COS。合并仍会触发原前后端 rsync：需要先确认服务器采用正式 Calcit 0.30.1、能安装严格依赖图并使用 `calcit --entry server`；本轮准备 CI 不部署、不启动服务，也未确认生产就绪。

模块使用正式精确 tag，不用 hash/main 绕过，也不混入 0.31 alpha；Actions 的第三方工具仍固定到已发布版本的不可变 SHA。删除未使用的 Lilac 依赖和入口，复用正式 JS-FFI、Respo DOM、Recollect 解码合同。`js-out/`、`dist/`、`dist-server/`、临时迁移脚本和旧 Snapshot 不入库。

### License

MIT
