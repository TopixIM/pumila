
(ns app.config
  (:require [app.util :refer [get-env!]])
  (:require-macros [clojure.core.strint :refer [<<]] [build.util :refer [get-ip!]]))

(def bundle-builds #{"release" "local-bundle"})

(def dev?
  (if (exists? js/window)
    (do ^boolean js/goog.DEBUG)
    (not (contains? bundle-builds (get-env! "mode")))))

(def site
  {:storage-key "pumila",
   :port 11011,
   :title "Pumila",
   :icon "http://cdn.tiye.me/logo/pumila.png",
   :dev-ui (<< "http://~{(get-ip!)}:8080/main.js"),
   :release-ui "http://cdn.tiye.me/favored-fonts/main.css",
   :cdn-url "http://cdn.tiye.me/pumila/",
   :cdn-folder "tiye.me:cdn/pumila",
   :upload-folder "tiye.me:repo/TopixIM/pumila/",
   :server-folder "tiye.me:servers/pumila",
   :theme "black"})
