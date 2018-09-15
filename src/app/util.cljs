
(ns app.util (:require [clojure.string :as string]))

(defn find-first [f xs] (reduce (fn [_ x] (when (f x) (reduced x))) nil xs))

(def response-texts ["嗯" "好的" "我有点累了" "是吧" "嗯嗯" "哦" "然后呢?" "是的呢" "呵呵"])

(defn gen-response! [text]
  (cond
    (string/includes? text "想你") "我有点累了, 先不说啦"
    (string/includes? text "晚安") "晚安"
    (string/includes? text "在吗") "在的呢"
    (string/includes? text "起床") "你才起床啊?"
    (string/includes? text "hello") "干什么?"
    (string/includes? text "没事") "哦"
    :else (let [size (count response-texts)] (get response-texts (rand-int size)))))

(defn get-env! [property] (aget (.-env js/process) property))
