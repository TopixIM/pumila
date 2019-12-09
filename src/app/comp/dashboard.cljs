
(ns app.comp.dashboard
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.comp.space :refer [=<]]
            [respo.core
             :refer
             [defcomp <> action-> list-> span div input a button textarea]]
            [app.config :as config]
            [app.comp.emotions :refer [comp-emotion]]
            [respo.util.list :refer [map-val]]
            [app.comp.kit :refer [comp-title]]
            [feather.core :refer [comp-i]]
            [respo-alerts.core :refer [comp-modal]]))

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
      {:style (merge ui/link), :on-click (action-> :router/change {:name :emotions})}
      (comp-i :settings 16 (hsl 200 80 80))))
    (=< nil 16)
    (div
     {}
     (a
      {:style ui/link, :on-click (action-> :router/change {:name :history})}
      (<> "View history")))
    (comp-modal
     (:show-editor? state)
     {:style {:width 400}}
     (fn [mutate!] (mutate! %cursor (assoc state :show-editor? false)))
     (fn []
       (div
        {:style {:min-width 240, :padding 20}}
        (div
         {:style ui/row-middle}
         (<> "In mood")
         (=< 8 nil)
         (comp-emotion (get emotions (:emotion-id state)) (fn [] )))
        (div
         {}
         (textarea
          {:style (merge ui/textarea {:width "100%"}),
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
