
(ns app.updater.mood (:require [app.schema :as schema]))

(defn add-one [db op-data sid op-id op-time]
  (assoc-in db [:moods op-id] (merge schema/mood op-data {:id op-id, :time op-time})))
