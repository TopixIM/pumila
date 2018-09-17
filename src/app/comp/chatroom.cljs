
(ns app.comp.chatroom
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.comp.space :refer [=<]]
            [respo.macros :refer [defcomp <> action-> list-> span div input button img]]
            [app.config :as config]
            [clojure.string :as string]
            [app.util :refer [gen-response!]]
            [app.util.dom :refer [scroll-chatroom!]]))

(defcomp
 comp-mood
 (message)
 (div
  {:style (merge ui/row {:justify-content :flex-end, :padding "8px 16px"})}
  (div
   {:style {:background-color (hsl 60 70 48),
            :margin-right 8,
            :padding "6px 8px",
            :border-radius "5px",
            :font-size 16,
            :line-height "28px",
            :max-width (- js/window.innerWidth 128)}}
   (<> (:text message)))
  (img
   {:src "http://cdn.tiye.me/logo/tiye.jpg",
    :style (let [size 40] {:width size, :height size})})))

(defcomp
 comp-response
 (message)
 (div
  {:style (merge ui/row {:padding "8px 16px"})}
  (img
   {:src "http://cdn.tiye.me/logo/yuuki.png",
    :style (let [size 40] {:width 40, :height 40})})
  (div
   {:style {:margin-left 8, :background-color :white, :border-radius "4px", :padding 8}}
   (<> (:text message)))))

(def style-submit
  (merge
   ui/button
   {:border-radius "5px",
    :background-color (hsl 30 80 60),
    :color :white,
    :min-width 60,
    :border :none}))

(def style-system-tip
  {:line-height "24px",
   :font-size 12,
   :color :white,
   :background-color (hsl 0 0 80),
   :padding "0 8px",
   :border-radius "4px"})

(defcomp
 comp-chatroom
 (states router-data)
 (let [state (or (:data states) {:draft ""})
       on-submit (fn [d! m!]
                   (when (not (string/blank? (:draft state)))
                     (d! :mood/add-message {:kind :mood, :text (:draft state)})
                     (js/setTimeout scroll-chatroom! 400)
                     (m! (assoc state :draft ""))
                     (js/setTimeout
                      (fn []
                        (d!
                         :mood/add-message
                         {:kind :response, :text (gen-response! (:draft state))})
                        (js/setTimeout scroll-chatroom! 400))
                      (* 1000 (rand-int 6)))))]
   (div
    {:style (merge ui/flex ui/column)}
    (div
     {:class-name "chatroom-list",
      :style (merge ui/flex {:background-color (hsl 0 0 94), :overflow :auto})}
     (div
      {:style (merge ui/center {:background-color (hsl 0 0 94), :padding 8})}
      (span
       {:style style-system-tip,
        :inner-text "View history",
        :on-click (fn [e d! m!] (d! :router/change {:name :archives}))}))
     (list->
      {}
      (->> router-data
           (sort-by (fn [[k message]] (:time message)))
           (map
            (fn [[k message]]
              [k (if (= :mood (:kind message)) (comp-mood message) (comp-response message))]))))
     (when (not (empty? router-data))
       (div
        {:style (merge ui/center {:background-color (hsl 0 0 94), :padding 8})}
        (span
         {:style style-system-tip,
          :inner-text "Archive moods",
          :on-click (fn [e d! m!] (d! :mood/archive nil))}))))
    (div
     {:style (merge
              ui/row
              {:height 48,
               :align-items :center,
               :border-top (str "1px solid " (hsl 0 0 90))})}
     (input
      {:style (merge ui/flex ui/input {:padding "0 12px", :font-size 16, :border :none}),
       :value (:draft state),
       :placeholder "Message...",
       :on-input (fn [e d! m!] (m! (assoc state :draft (:value e))))})
     (div
      {:style {:padding 8}}
      (button
       {:style style-submit, :inner-text "Send", :on-click (fn [e d! m!] (on-submit d! m!))}))))))
