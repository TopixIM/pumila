
Pumila
------

> Personal message logger.

### Workflow

https://github.com/Cumulo/calcium-workflow

### 构建与部署

正式 Calcit / `@calcit/procs` 0.30.1、caps 0.1.1、Node.js 24、Yarn 4.18.0；browser/native 入口分开检查。使用 `caps --strict --ci` 校验正式 tag 的完整依赖图，保留 full strict、入口与前后端所有非空应用 namespace 的公开定义门禁（`app.util.dom` 没有定义，不列入零覆盖检查）。原生附带测试覆盖情绪分数、部分更新、会话成员及补丁编解码；构建通过不等于登录、浏览器交互或生产部署已验收。

旧存档的数字字符串 `score` 可受检读取；新建或更新情绪时，在原合并结果上仅将 `score` 规范化为 Number，保留额外字段和部分更新顺序。不批量改写存档；空分数、非法数字文本及不符合边界合同的数据会明确报错，不静默补 0。其他字段名和 WebSocket 操作 tag 不变。保留 `hud!` 的页面报错与热更新行为。

COS 只上传前端 `dist/`。生产 CDN 路径保持 `https://cos-sh.tiye.me/TopixIM/pumila/`，同仓库 PR 预览使用 `pr/<编号>/<run-id>/<attempt>/`；fork PR 不使用部署 secrets。`worktools/cos-upload-action@v1.2.0` 用 `public-base-url` 和内置 `verify-*` 默认配置校验上传，无额外验证脚本。

依赖机器人或其他缺少 COS 凭据的 PR 保留全部编译/类型门禁，只告警并跳过前端预览上传；当前生产提交缺少任一 COS 凭据仍立即失败，阻止后续前后端 rsync。不为 PR 开放额外 secret，不改变前后端目录。

生产运行排队且不取消进行中的上传，上传前一次检查 main SHA，旧提交跳过部署；不是原子发布。原 `pumila.chenyong.life` 主机、`rsync_private_key_tc` secret、web rsync 目录与 `/servers/pumila/` 服务端目录都不变，`dist-server/` 不上传 COS。合并仍会触发原前后端 rsync：需要先确认服务器采用正式 Calcit 0.30.1、能安装严格依赖图并使用 `calcit --entry server`；本轮准备 CI 不部署、不启动服务，也未确认生产就绪。

模块使用正式精确 tag，不用 hash/main 绕过，也不混入 0.31 alpha；Actions 的第三方工具仍固定到已发布版本的不可变 SHA。删除未使用的 Lilac 依赖和入口，复用正式 JS-FFI、Respo DOM、Recollect 解码合同。`js-out/`、`dist/`、`dist-server/`、临时迁移脚本和旧 Snapshot 不入库。

### License

MIT
