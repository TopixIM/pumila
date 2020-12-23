
(ns app.comp.emotions
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.comp.space :refer [=<]]
            [respo.core :refer [defcomp <> list-> span div button a]]
            [app.config :as config]
            [respo.util.list :refer [map-val]]
            [feather.core :refer [comp-i]])
  (:require-macros [clojure.core.strint :refer [<<]]))

(defcomp
 comp-emotion
 (emotion style on-click!)
 (div
  {:style (merge
           ui/center
           {:background-color (:color emotion),
            :display :inline-flex,
            :padding "0 16px",
            :line-height "24px",
            :height "24px",
            :margin "0 8px 8px 0",
            :border-radius "8px",
            :color :white}
           style),
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
    {:on-click (fn [e d!] (d! :router/change {:name :edit-emotion, :data nil})),
     :style {:font-size 16}}
    (comp-i :plus 16 (hsl 200 80 80))))
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
             nil
             (fn [e d!] (d! :router/change {:name :edit-emotion, :data (:id emotion)}))))))))
  (=< nil 32)))
