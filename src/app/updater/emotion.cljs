
(ns app.updater.emotion (:require [app.schema :as schema]))

(defn create-one [db op-data sid op-id op-time]
  (let [user-id (get-in db [:sessions sid :user-id])]
    (assoc-in db [:users user-id :emotions op-id] (merge schema/emotion op-data {:id op-id}))))
