
(ns app.util.dom )

(defn scroll-chatroom! []
  (let [target (.querySelector js/document ".chatroom-list")]
    (when (some? target)
      (.scroll target (clj->js {:top (.-scrollHeight target), :left 0, :behavior "smooth"})))))
