
(ns app.comp.dashboard
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.comp.space :refer [=<]]
            [respo.core :refer [defcomp <> list-> span div input a button textarea pre]]
            [app.config :as config]
            [app.comp.emotions :refer [comp-emotion]]
            [respo.util.list :refer [map-val]]
            [app.comp.kit :refer [comp-title]]
            [feather.core :refer [comp-i]]
            [respo-alerts.core :refer [comp-modal]]))

(defcomp
 comp-dashboard
 (states router-data)
 (let [cursor (:cursor states)
       state (or (:data states) {:show-editor? false, :emotion-id nil, :draft ""})
       emotions (:emotions router-data)
       moods (:moods router-data)]
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
              nil
              (fn [e d!]
                (d! cursor (merge state {:show-editor? true, :emotion-id (:id emotion)}))))))))
    (=< nil 0)
    (div
     {:style ui/row-parted}
     (span {})
     (a
      {:style (merge ui/link), :on-click (fn [e d!] (d! :router/change {:name :emotions}))}
      (comp-i :settings 16 (hsl 200 80 80))))
    (=< nil 16)
    (div
     {}
     (a
      {:style ui/link, :on-click (fn [e d!] (d! :router/change {:name :history}))}
      (<> "View history")))
    (div
     {}
     (list->
      {}
      (->> moods
           (sort-by (fn [[k mood]] (unchecked-negate (:time mood))))
           (map
            (fn [[k mood]]
              [k
               (let [emotion-id (:emotion-id mood)]
                 (div
                  {:style ui/row}
                  (comp-emotion (get emotions emotion-id) nil (fn [e d!] ))
                  (div
                   {:style (merge
                            ui/expand
                            {:white-space :nowrap,
                             :text-overflow :ellipsis,
                             :overflow :hidden})}
                   (<> (:text mood)))))])))))
    (comp-modal
     {:style {:width 400, :max-width "86%"},
      :render (fn [on-close]
        (div
         {:style {:min-width 240, :padding 20}}
         (div
          {:style ui/row-middle}
          (<> "In mood")
          (=< 8 nil)
          (comp-emotion (get emotions (:emotion-id state)) nil (fn [] )))
         (div
          {}
          (textarea
           {:style (merge ui/textarea {:width "100%", :min-height 160}),
            :value (:draft state),
            :placeholder "Some notes...",
            :on-input (fn [e d!] (d! cursor (assoc state :draft (:value e))))}))
         (=< nil 8)
         (div
          {:style ui/row-parted}
          (span {})
          (button
           {:style ui/button,
            :inner-text "Submit",
            :on-click (fn [e d!]
              (d! :mood/create-one {:text (:draft state), :emotion-id (:emotion-id state)})
              (d! cursor (assoc state :show-editor? false :draft "")))}))))}
     (:show-editor? state)
     (fn [d!] (d! cursor (assoc state :show-editor? false)))))))
