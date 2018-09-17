
(ns app.comp.archives
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.comp.space :refer [=<]]
            [respo.macros :refer [defcomp <> action-> list-> span div]]
            [app.config :as config]
            ["dayjs" :as dayjs]))

(defcomp
 comp-mood
 (mood)
 (div
  {:style {:padding "0 8px"}}
  (<>
   (.format (dayjs (:time mood)) "HH:mm")
   {:font-family ui/font-fancy, :min-width 40, :display :inline-block, :color (hsl 0 0 70)})
  (=< 8 nil)
  (<> (:text mood))))

(defcomp
 comp-archives
 (mood-groups)
 (div
  {:style (merge ui/flex {:overflow :auto})}
  (list->
   {}
   (->> mood-groups
        (map
         (fn [[date-string moods]]
           [date-string
            (div
             {:style {:padding "8px 8px"}}
             (<> date-string)
             (list->
              {}
              (->> moods (sort-by :time) (map (fn [mood] [(:id mood) (comp-mood mood)])))))]))))))
