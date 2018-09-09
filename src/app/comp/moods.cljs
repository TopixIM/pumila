
(ns app.comp.moods
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.comp.space :refer [=<]]
            [respo.macros
             :refer
             [defcomp <> action-> span div textarea input button a list->]]
            [app.config :as config]
            [respo.util.list :refer [map-val]]))

(defcomp
 comp-moods
 (moods)
 (div
  {}
  (list->
   {:style {:padding 8}}
   (->> moods
        (map-val
         (fn [mood]
           (div
            {:style {:padding 8, :border-bottom (str "1px solid " (hsl 0 0 90))}}
            (div {:style {:font-family ui/font-fancy, :font-size 20}} (<> (:brief mood)))
            (div {:style {:color (hsl 0 0 60)}} (<> (:detail mood))))))))))
