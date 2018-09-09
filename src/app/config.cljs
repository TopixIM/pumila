
(ns app.config (:require [app.util :refer [get-env!]]))

(def bundle-builds #{"release" "local-bundle"})

(def dev?
  (if (exists? js/window)
    (do ^boolean js/goog.DEBUG)
    (not (contains? bundle-builds (get-env! "mode")))))

(def site
  {:storage-key "pulima",
   :port 11011,
   :title "Pulima",
   :icon "http://cdn.tiye.me/logo/cumulo.png",
   :dev-ui "http://localhost:8100/main.css",
   :release-ui "http://cdn.tiye.me/favored-fonts/main.css",
   :cdn-url "http://cdn.tiye.me/11011/",
   :cdn-folder "tiye.me:cdn/11011",
   :upload-folder "tiye.me:repo/TopixIM/pumila/",
   :server-folder "tiye.me:servers/pumila",
   :theme "#eeeeff"})
