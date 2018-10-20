
(ns app.updater.emotion (:require [app.schema :as schema]))

(defn create-one [db op-data sid op-id op-time]
  (let [user-id (get-in db [:sessions sid :user-id])]
    (update-in
     db
     [:users user-id :emotions]
     (fn [emotions]
       (if (some? (:id op-data))
         (update emotions (:id op-data) (fn [x] (merge x op-data)))
         (assoc emotions op-id (merge schema/emotion op-data {:id op-id})))))))

(defn remove-one [db op-data sid op-id op-time]
  (let [user-id (get-in db [:sessions sid :user-id])]
    (update-in db [:users user-id :emotions] (fn [emotions] (dissoc emotions op-data)))))
