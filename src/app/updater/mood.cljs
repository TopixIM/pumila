
(ns app.updater.mood (:require [app.schema :as schema]))

(defn add-message [db op-data sid op-id op-time]
  (let [user-id (get-in db [:sessions sid :user-id])]
    (assoc-in
     db
     [:users user-id :moods op-id]
     (merge
      schema/message
      {:id op-id, :time op-time, :kind (:kind op-data), :text (:text op-data)}))))
