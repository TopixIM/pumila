
(ns app.config )

(def cdn?
  (cond
    (exists? js/window) false
    (exists? js/process) (= "true" js/process.env.cdn)
    :else false))

(def dev?
  (let [debug? (do ^boolean js/goog.DEBUG)]
    (if debug?
      (cond
        (exists? js/window) true
        (exists? js/process) (not= "true" js/process.env.release)
        :else true)
      false)))

(def site
  {:port 11011,
   :title "Pumila",
   :icon "http://cdn.tiye.me/logo/pumila.png",
   :dev-ui "http://localhost:8100/main.css",
   :release-ui "http://cdn.tiye.me/favored-fonts/main.css",
   :cdn-url "http://cdn.tiye.me/pumila/",
   :cdn-folder "tiye.me:cdn/pumila",
   :upload-folder "tiye.me:repo/TopixIM/pumila/",
   :server-folder "tiye.me:servers/pumila",
   :storage-key "pumila",
   :storage-file "storage.edn",
   :theme "#6EBAEE"})
