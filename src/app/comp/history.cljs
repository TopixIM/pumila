
(ns app.comp.history
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.comp.space :refer [=<]]
            [respo.core :refer [defcomp >> <> list-> span div a]]
            [app.config :as config]
            [app.comp.kit :refer [comp-title]]
            [respo.util.list :refer [map-val]]
            [app.comp.emotions :refer [comp-emotion]]
            ["dayjs" :as dayjs]
            [app.comp.kit :refer [comp-hint]]
            [feather.core :refer [comp-icon comp-i]]
            [respo-alerts.core :refer [comp-confirm]])
  (:require-macros [clojure.core.strint :refer [<<]]))

(defcomp
 comp-record
 (states mood emotions)
 (div
  {:class-name "",
   :style (merge
           ui/column
           {:border-bottom (<< "1px solid ~{(hsl 0 0 90)}"), :padding "8px 0"})}
  (div
   {:style ui/row-parted}
   (div
    {:style ui/row-middle}
    (comp-emotion (get emotions (:emotion-id mood)) nil nil)
    (comp-hint (-> (dayjs (:time mood)) (.format "MM-DD HH:mm"))))
   (comp-confirm
    (>> states :confirm)
    {:trigger (comp-i :x 14 (hsl 0 0 80)), :text "Sure to delete?"}
    (fn [e d! m!] (d! :mood/remove-one (:id mood)))))
  (div {:inner-text (:text mood), :style (merge ui/flex {:word-break :break-all})})))

(defcomp
 comp-history
 (states moods emotions)
 (div
  {:style (merge ui/flex ui/column {:overflow :auto})}
  (div {:style {:margin "8px 0", :padding "8px 16px"}} (comp-title "History"))
  (list->
   {:style (merge ui/flex {:width "100%", :padding "8px 16px"})}
   (->> moods
        (sort-by (fn [[k mood]] (unchecked-negate (:time mood))))
        (map-val (fn [mood] (comp-record (>> states (:id mood)) mood emotions)))))))
