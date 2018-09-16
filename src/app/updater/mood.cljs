
(ns app.updater.mood (:require [app.schema :as schema] ["dayjs" :as dayjs]))

(defn add-message [db op-data sid op-id op-time]
  (let [user-id (get-in db [:sessions sid :user-id])]
    (assoc-in
     db
     [:users user-id :moods op-id]
     (merge
      schema/message
      {:id op-id, :time op-time, :kind (:kind op-data), :text (:text op-data)}))))

(defn archive [db op-data sid op-id op-time]
  (let [user-id (get-in db [:sessions sid :user-id])]
    (update-in
     db
     [:users user-id]
     (fn [user]
       (let [new-moods (group-by
                        (fn [message] (.format (dayjs (:time message)) "YYYY-MM-DD"))
                        (vals (:moods user)))]
         (-> user
             (assoc :moods {})
             (update
              :archived-moods
              (fn [old-moods] (merge-with merge old-moods new-moods)))))))))
