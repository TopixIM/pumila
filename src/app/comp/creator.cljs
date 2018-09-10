
(ns app.comp.creator
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.comp.space :refer [=<]]
            [respo.macros :refer [defcomp <> action-> span div textarea input button a]]
            [app.config :as config]))

(defcomp
 comp-creator
 (states)
 (let [state (or (:data states) {:brief "", :detail ""})]
   (div
    {:style (merge ui/column {:padding 16})}
    (div {} (<> "Add your moods"))
    (=< nil 16)
    (input
     {:style (merge ui/input),
      :placeholder "Brief Mood",
      :value (:brief state),
      :on-input (fn [e d! m!] (m! (assoc state :brief (:value e))))})
    (=< nil 16)
    (textarea
     {:style (merge ui/textarea {:min-height 160}),
      :placeholder "Some details",
      :value (:detail state),
      :on-input (fn [e d! m!] (m! (assoc state :detail (:value e))))})
    (=< nil 8)
    (div
     {:style ui/row-parted}
     (span {})
     (button
      {:style ui/button,
       :on-click (fn [e d! m!]
         (d! :mood/add-one state)
         (m! {})
         (d! :router/change {:name :moods}))}
      (<> "Record"))))))
