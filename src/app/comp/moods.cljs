
(ns app.comp.moods
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.comp.space :refer [=<]]
            [respo.macros
             :refer
             [defcomp <> action-> span div textarea input button a list->]]
            [app.config :as config]
            [respo.util.list :refer [map-val]]
            ["dayjs" :as dayjs]
            [respo-ui.comp.icon :refer [comp-icon]]))

(defcomp
 comp-moods
 (moods)
 (div
  {:style (merge ui/flex {:overflow :auto}), :class-name ""}
  (list->
   {:style {:padding 8}}
   (->> moods
        (sort-by (fn [[k mood]] (unchecked-negate (:time mood))))
        (map
         (fn [[k mood]]
           [k
            (div
             {:style {:padding 8,
                      :border-bottom (str "1px solid " (hsl 0 0 90)),
                      :position :relative}}
             (div
              {:style (merge ui/row {:align-items :center})}
              (<> (:brief mood) (merge ui/flex {:font-family ui/font-fancy, :font-size 16}))
              (<>
               (.format (dayjs (:time mood)) "MM-DD HH:mm")
               {:color (hsl 0 0 80), :font-size 12}))
             (div {:style {:color (hsl 0 0 60)}} (<> (:detail mood)))
             (span
              {:style {:position :absolute,
                       :bottom 16,
                       :right 8,
                       :font-size 10,
                       :color (hsl 0 80 70),
                       :cursor :pointer},
               :on-click (fn [e d! m!] (d! :mood/remove-one (:id mood)))}
              (comp-icon :close)))]))))))
