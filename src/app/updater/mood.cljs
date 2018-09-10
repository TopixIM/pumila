
(ns app.updater.mood (:require [app.schema :as schema]))

(defn add-one [db op-data sid op-id op-time]
  (let [user-id (get-in db [:sessions sid :user-id])]
    (assoc-in
     db
     [:users user-id :moods op-id]
     (merge schema/mood op-data {:id op-id, :time op-time}))))

(defn remove-one [db op-data sid op-id op-time]
  (let [user-id (get-in db [:sessions sid :user-id])]
    (update-in db [:users user-id :moods] (fn [moods] (dissoc moods op-data)))))
