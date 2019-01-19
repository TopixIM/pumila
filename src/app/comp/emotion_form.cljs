
(ns app.comp.emotion-form
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.comp.space :refer [=<]]
            [respo.core
             :refer
             [defcomp <> action-> list-> mutation-> cursor-> span div button input]]
            [app.config :as config]
            [app.schema :as schema]
            [respo-alerts.comp.alerts :refer [comp-confirm]]
            [app.comp.kit :refer [comp-field comp-title]]))

(def default-colors
  ["hsl(238,83%,87%)"
   "hsl(43,87%,55%)"
   "hsl(292,77%,44%)"
   "hsl(122,77%,77%)"
   "hsl(166,55%,22%)"])

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
 (let [form (or (:data states) (or data schema/emotion)), editing? (some? (:id form))]
   (div
    {:style {:padding "8px 16px"}}
    (div {} (comp-title "Emotion details"))
    (=< nil 16)
    (comp-field
     "Name"
     (input
      {:style ui/input,
       :value (:text form),
       :on-input (mutation-> (assoc form :text (:value %e)))}))
    (comp-field
     "Score"
     (input
      {:style ui/input,
       :value (:score form),
       :type "number",
       :on-input (mutation-> (assoc form :score (:value %e)))}))
    (comp-field
     "Color"
     (div
      {:style ui/column}
      (input
       {:style (merge ui/input {:font-family ui/font-code}),
        :value (:color form),
        :on-input (mutation-> (assoc form :color (:value %e)))})
      (=< nil 8)
      (comp-color-picker form (fn [color d! m!] (m! %cursor (assoc form :color color))))))
    (=< nil 16)
    (div
     {:style ui/row-parted}
     (span {})
     (span
      {}
      (when editing?
        (cursor->
         :confirm
         comp-confirm
         states
         {:trigger (button
                    {:style (merge
                             ui/button
                             {:color :white,
                              :background-color (hsl 10 50 70),
                              :border (hsl 10 50 60)}),
                     :inner-text "Delete"}),
          :text "Sure to delete?"}
         (fn [e d! m!]
           (d! :router/change {:name :emotions})
           (d! :emotion/remove-one (:id form)))))
      (when editing? (=< 8 nil))
      (button
       {:style ui/button,
        :on-click (fn [e d! m!]
          (d! :emotion/create-one form)
          (m! nil)
          (d! :router/change {:name :emotions})),
        :inner-text (if editing? "Save" "Create")}))))))
