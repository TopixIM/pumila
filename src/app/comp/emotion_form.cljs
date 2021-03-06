
(ns app.comp.emotion-form
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.comp.space :refer [=<]]
            [respo.core :refer [defcomp <> >> list-> span div button input]]
            [app.config :as config]
            [app.schema :as schema]
            [respo-alerts.core :refer [comp-confirm]]
            [app.comp.kit :refer [comp-field comp-title]]))

(def default-colors
  ["#ff9e96" "#e7e5e5" "#baf9c2" "#c6ded2" "#5facf6" "#c390e8" "#ffdd57" "#f79800" "#cf0027"])

(defcomp
 comp-color-picker
 (form on-pick)
 (list->
  {}
  (->> default-colors
       (map
        (fn [color]
          [color
           (div
            {:style (let [size 24]
               {:background-color color,
                :height size,
                :width size,
                :border-radius "6px",
                :display :inline-block,
                :margin "0 8px 8px 0",
                :cursor :pointer}),
             :on-click (fn [e d! m!] (on-pick color d! m!))})])))))

(defcomp
 comp-emotion-form
 (states data)
 (let [cursor (:cursor states)
       form (or (:data states) (or data schema/emotion))
       editing? (some? (:id form))]
   (div
    {:style {:padding "8px 16px"}}
    (div {} (comp-title "Emotion details"))
    (=< nil 16)
    (comp-field
     "Name"
     (input
      {:style ui/input,
       :value (:text form),
       :on-input (fn [e d!] (d! cursor (assoc form :text (:value e))))}))
    (comp-field
     "Score"
     (input
      {:style ui/input,
       :value (:score form),
       :type "number",
       :on-input (fn [e d!] (d! cursor (assoc form :score (:value e))))}))
    (comp-field
     "Color"
     (div
      {:style ui/column}
      (input
       {:style (merge ui/input {:font-family ui/font-code}),
        :value (:color form),
        :on-input (fn [e d!] (d! cursor (assoc form :color (:value e))))})
      (=< nil 8)
      (comp-color-picker form (fn [color d!] (d! cursor (assoc form :color color))))))
    (=< nil 16)
    (div
     {:style ui/row-parted}
     (span {})
     (span
      {}
      (when editing?
        (comp-confirm
         (>> states :confirm)
         {:trigger (button
                    {:style (merge
                             ui/button
                             {:color :white,
                              :background-color (hsl 10 50 70),
                              :border (hsl 10 50 60)}),
                     :inner-text "Delete"}),
          :text "Sure to delete?"}
         (fn [e d!]
           (d! :router/change {:name :emotions})
           (d! :emotion/remove-one (:id form)))))
      (when editing? (=< 8 nil))
      (button
       {:style ui/button,
        :on-click (fn [e d!]
          (d! :emotion/create-one form)
          (d! cursor nil)
          (d! :router/change {:name :emotions})),
        :inner-text (if editing? "Save" "Create")}))))))
