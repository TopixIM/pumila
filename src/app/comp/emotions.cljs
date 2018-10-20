
(ns app.comp.emotions
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.comp.space :refer [=<]]
            [respo.macros :refer [defcomp <> action-> list-> span div button]]
            [app.config :as config]
            [respo.util.list :refer [map-val]])
  (:require-macros [clojure.core.strint :refer [<<]]))

(defcomp
 comp-emotions-manager
 (emotions)
 (div
  {:style {:padding "8px 16px"}}
  (div
   {:style ui/row-middle}
   (<> "Emotions" {:font-family ui/font-fancy, :font-size 24})
   (=< 8 nil)
   (button
    {:style ui/button, :on-click (action-> :router/change {:name :edit-emotion, :data nil})}
    (<> "New emotion")))
  (div
   {}
   (list->
    {}
    (->> emotions
         (map-val
          (fn [emotion]
            (div
             {:style {:background-color (:color emotion),
                      :display :inline-block,
                      :padding "0 12px",
                      :line-height "32px",
                      :margin "0 8px 8px 0",
                      :border-radius "8px",
                      :color :white},
              :on-click (action-> :router/change {:name :edit-emotion, :data (:id emotion)})}
             (<> (:text emotion))
             (<> (:score emotion))))))))
  (=< nil 32)))
