
(ns app.comp.history
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.comp.space :refer [=<]]
            [respo.core :refer [defcomp <> action-> list-> cursor-> span div a]]
            [app.config :as config]
            [app.comp.kit :refer [comp-title]]
            [respo.util.list :refer [map-val]]
            [app.comp.emotions :refer [comp-emotion]]
            ["dayjs" :as dayjs]
            [app.comp.kit :refer [comp-hint]]
            [respo-ui.comp.icon :refer [comp-icon]]
            [respo-alerts.comp.alerts :refer [comp-confirm]])
  (:require-macros [clojure.core.strint :refer [<<]]))

(defcomp
 comp-record
 (states mood emotions)
 (div
  {:style {:border-bottom (<< "1px solid ~{(hsl 0 0 90)}"), :padding "8px 0"}}
  (div
   {:style ui/column}
   (comp-hint (-> (dayjs (:time mood)) (.format "MM-DD HH:mm")))
   (div
    {:style ui/row-parted}
    (span
     {:style ui/row-middle}
     (div
      {:style ui/row-parted}
      (span {})
      (comp-emotion (get emotions (:emotion-id mood)) nil))
     (=< 8 nil)
     (<> (:text mood)))
    (cursor->
     :confirm
     comp-confirm
     states
     {:trigger (span {:style {:color (hsl 0 0 80)}} (comp-icon :close)),
      :text "Sure to delete?"}
     (fn [e d! m!] (d! :mood/remove-one (:id mood))))))))

(defcomp
 comp-history
 (states moods emotions)
 (div
  {:style {:padding "8px 16px"}}
  (div {:style {:margin "8px 0"}} (comp-title "History"))
  (list->
   {}
   (->> moods
        (sort-by (fn [[k mood]] (unchecked-negate (:time mood))))
        (map-val (fn [mood] (cursor-> (:id mood) comp-record states mood emotions)))))))
