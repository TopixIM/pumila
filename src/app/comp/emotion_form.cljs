
(ns app.comp.emotion-form
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.comp.space :refer [=<]]
            [respo.macros :refer [defcomp <> action-> mutation-> span div button input]]
            [app.config :as config]
            [app.schema :as schema]))

(defcomp
 comp-emotion-form
 (states data)
 (let [form (or (:data states) (or data schema/emotion))]
   (println "rendering state" form)
   (div
    {:style {:padding "8px 16px"}}
    (<> "emotions-form")
    (div
     {}
     (input
      {:style ui/input,
       :value (:text form),
       :on-input (mutation-> (assoc form :text (:value %e)))}))
    (div
     {}
     (input
      {:style ui/input,
       :value (:score form),
       :type "number",
       :on-input (mutation-> (assoc form :score (:value %e)))}))
    (div
     {}
     (input
      {:style ui/input,
       :value (:color form),
       :on-input (mutation-> (assoc form :color (:value %e)))}))
    (div
     {:style ui/row-parted}
     (span {})
     (button
      {:style ui/button,
       :on-click (fn [e d! m!] (d! :emotion/create-one form) (m! nil)),
       :inner-text "Create"})))))
