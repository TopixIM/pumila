
(ns app.util.dom )

(defn scroll-chatroom! []
  (let [target (.querySelector js/document ".chatroom-list")]
    (when (some? target) (set! (.-scrollTop target) (.-scrollHeight target)))
    (println "scroll" (.-scrollHeight target))))
