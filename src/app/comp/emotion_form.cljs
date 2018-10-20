
(ns app.comp.emotion-form
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.comp.space :refer [=<]]
            [respo.macros
             :refer
             [defcomp <> action-> mutation-> cursor-> span div button input]]
            [app.config :as config]
            [app.schema :as schema]
            [respo-alerts.comp.alerts :refer [comp-confirm]]
            [app.comp.kit :refer [comp-field comp-title]]))

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
     (input
      {:style (merge ui/input {:font-family ui/font-code}),
       :value (:color form),
       :on-input (mutation-> (assoc form :color (:value %e)))}))
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
        :inner-text (if editing? "Edit" "Create")}))))))
