
Pumila
------

> Personal message logger.

### Workflow

https://github.com/Cumulo/calcium-workflow

### 构建与部署

正式 Calcit / `@calcit/procs` 0.27.0、caps 0.1.1、Node.js 24、Yarn 4.18.0；明确 browser/native 入口目标。CI 保留 strict workflow、入口和工具链检查，以前后端全部非空应用 namespace 的公开定义检查替代重复类型统计（`app.util.dom` 没有定义，不列入零覆盖检查）。已清理无调用的旧 `cdn?` / `detect-cdn?`，CDN 路径由工作流统一配置。

COS 只上传前端 `dist/`。生产 CDN 路径保持 `https://cos-sh.tiye.me/TopixIM/pumila/`，同仓库 PR 预览使用 `pr/<编号>/<run-id>/<attempt>/`；fork PR 不使用部署 secrets。`worktools/cos-upload-action@v1.2.0` 用 `public-base-url` 和内置 `verify-*` 默认配置校验上传，无额外验证脚本。

生产运行排队且不取消进行中的上传，上传前一次检查 main SHA，旧提交跳过部署；不是原子发布。原 `pumila.chenyong.life` 主机、`rsync_private_key_tc` secret、web rsync 目录与 `/servers/pumila/` 服务端目录都不变，`dist-server/` 不上传 COS。不启动服务、不改持久化文件或数据格式。

现有模块发布图沿用 `caps --ci` 的最高 SemVer 解析及 warning，不声称 strict 依赖图已通过，也不使用 hash/main 绕过。`js-out/`、`dist/`、`dist-server/` 和旧 Snapshot 不入库。

### License

MIT
