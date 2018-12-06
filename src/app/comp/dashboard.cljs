
(ns app.comp.dashboard
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.comp.space :refer [=<]]
            [respo.core :refer [defcomp <> action-> list-> span div input a button]]
            [app.config :as config]
            [app.comp.emotions :refer [comp-emotion]]
            [respo.util.list :refer [map-val]]
            [inflow-popup.comp.dialog :refer [comp-dialog]]
            [app.comp.kit :refer [comp-title]]
            [respo-ui.comp.icon :refer [comp-icon]]))

(defcomp
 comp-dashboard
 (states emotions)
 (let [state (or (:data states) {:show-editor? false, :emotion-id nil, :draft ""})]
   (div
    {:style {:padding "8px 16px"}}
    (comp-title "What do you feel now?")
    (=< nil 16)
    (list->
     emotions
     (->> emotions
          (sort-by (fn [[k emotion]] (unchecked-negate (:score emotion))))
          (map-val
           (fn [emotion]
             (comp-emotion
              emotion
              (fn [e d! m!]
                (m! (merge state {:show-editor? true, :emotion-id (:id emotion)}))))))))
    (=< nil 0)
    (div
     {:style ui/row-parted}
     (span {})
     (a
      {:style (merge ui/link {:font-size 16}),
       :on-click (action-> :router/change {:name :emotions})}
      (comp-icon :android-settings)))
    (=< nil 16)
    (div
     {}
     (a
      {:style ui/link, :on-click (action-> :router/change {:name :history})}
      (<> "View history")))
    (when (:show-editor? state)
      (comp-dialog
       (fn [mutate!] (mutate! %cursor (assoc state :show-editor? false)))
       (div
        {:style {:min-width 240}}
        (div {} (comp-title "Record the mood"))
        (div {} (comp-emotion (get emotions (:emotion-id state)) (fn [] )))
        (div
         {}
         (input
          {:style (merge ui/input {:width "100%"}),
           :value (:draft state),
           :placeholder "Some notes...",
           :on-input (fn [e d! m!] (m! (assoc state :draft (:value e))))}))
        (=< nil 8)
        (div
         {:style ui/row-parted}
         (span {})
         (button
          {:style ui/button,
           :inner-text "Submit",
           :on-click (fn [e d! m!]
             (d! :mood/create-one {:text (:draft state), :emotion-id (:emotion-id state)})
             (m! (assoc state :show-editor? false :draft "")))}))))))))
