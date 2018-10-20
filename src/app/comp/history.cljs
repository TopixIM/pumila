
(ns app.comp.history
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.comp.space :refer [=<]]
            [respo.macros :refer [defcomp <> action-> list-> span div a]]
            [app.config :as config]
            [app.comp.kit :refer [comp-title]]
            [respo.util.list :refer [map-val]]
            [app.comp.emotions :refer [comp-emotion]]
            ["dayjs" :as dayjs]
            [app.comp.kit :refer [comp-hint]])
  (:require-macros [clojure.core.strint :refer [<<]]))

(defcomp
 comp-record
 (mood emotions)
 (div
  {:style {:border-bottom (<< "1px solid ~{(hsl 0 0 90)}"), :padding "8px 0"}}
  (div
   {:style ui/column}
   (comp-hint (-> (dayjs (:time mood)) (.format "MM-DD HH:mm")))
   (span
    {:style ui/row-middle}
    (div
     {:style ui/row-parted}
     (span {})
     (comp-emotion (get emotions (:emotion-id mood)) nil))
    (=< 8 nil)
    (<> (:text mood))))))

(defcomp
 comp-history
 (moods emotions)
 (div
  {:style {:padding "8px 16px"}}
  (div {:style {:margin "8px 0"}} (comp-title "History"))
  (list->
   {}
   (->> moods
        (sort-by (fn [[k mood]] (unchecked-negate (:time mood))))
        (map-val (fn [mood] (comp-record mood emotions)))))))
