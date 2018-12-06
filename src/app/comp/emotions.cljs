
(ns app.comp.emotions
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.comp.space :refer [=<]]
            [respo.core :refer [defcomp <> action-> list-> span div button a]]
            [app.config :as config]
            [respo.util.list :refer [map-val]]
            [respo-ui.comp.icon :refer [comp-icon]])
  (:require-macros [clojure.core.strint :refer [<<]]))

(defcomp
 comp-emotion
 (emotion on-click!)
 (div
  {:style {:background-color (:color emotion),
           :display :inline-block,
           :padding "0 16px",
           :line-height "32px",
           :margin "0 8px 8px 0",
           :border-radius "8px",
           :color :white},
   :on-click on-click!}
  (<> (:text emotion))))

(defcomp
 comp-emotions-manager
 (emotions)
 (div
  {:style {:padding "8px 16px"}}
  (div
   {:style ui/row-middle}
   (<> "Emotions" {:font-family ui/font-fancy, :font-size 24})
   (=< 8 nil)
   (a
    {:on-click (action-> :router/change {:name :edit-emotion, :data nil}),
     :style {:font-size 16}}
    (comp-icon :ios-plus-outline)))
  (=< nil 16)
  (div
   {}
   (list->
    {}
    (->> emotions
         (map-val
          (fn [emotion]
            (comp-emotion
             emotion
             (fn [e d! m!] (d! :router/change {:name :edit-emotion, :data (:id emotion)}))))))))
  (=< nil 32)))
