
(ns app.comp.container
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.core :refer [defcomp <> >> div span button]]
            [respo.comp.inspect :refer [comp-inspect]]
            [respo.comp.space :refer [=<]]
            [app.comp.navigation :refer [comp-navigation]]
            [app.comp.profile :refer [comp-profile]]
            [app.comp.login :refer [comp-login]]
            [respo-message.comp.messages :refer [comp-messages]]
            [cumulo-reel.comp.reel :refer [comp-reel]]
            [app.config :refer [dev?]]
            [app.schema :as schema]
            [app.config :as config]
            [app.comp.dashboard :refer [comp-dashboard]]
            [app.comp.emotions :refer [comp-emotions-manager]]
            [app.comp.history :refer [comp-history]]
            [app.comp.emotion-form :refer [comp-emotion-form]]))

(defcomp
 comp-offline
 ()
 (div
  {:style (merge ui/global ui/fullscreen ui/column-dispersive {:background-color :white})}
  (div {:style {:height 0}})
  (div
   {:style {:background-image (str "url(" (:icon config/site) ")"),
            :width 86,
            :height 86,
            :background-size :contain}})
  (div
   {:style {:cursor :pointer, :line-height "32px"},
    :on-click (fn [e d!] (d! :effect/connect nil))}
   (<> "No connection..." {:font-family ui/font-fancy, :font-size 24}))))

(defcomp
 comp-status-color
 (color)
 (div
  {:style (let [size 24]
     {:width size,
      :height size,
      :position :absolute,
      :bottom 60,
      :left 8,
      :background-color color,
      :border-radius "50%",
      :opacity 0.6,
      :pointer-events :none})}))

(defcomp
 comp-container
 (states store)
 (let [state (:data states)
       session (:session store)
       router (:router store)
       router-data (:data router)]
   (if (nil? store)
     (comp-offline)
     (div
      {:style (merge ui/global ui/fullscreen ui/column)}
      (comp-navigation (:logged-in? store) (:count store))
      (if (:logged-in? store)
        (case (:name router)
          :home (comp-dashboard (>> states :dashboard) router-data)
          :emotions (comp-emotions-manager router-data)
          :edit-emotion (comp-emotion-form (>> states :form) router-data)
          :history
            (comp-history (>> states :history) (:moods router-data) (:emotions router-data))
          :profile (comp-profile (:user store) router-data)
          (<> router))
        (comp-login states))
      (comment comp-status-color (:color store))
      (when dev? (comp-inspect "Store" store {:bottom 20, :left 0, :max-width "100%"}))
      (comp-messages
       (get-in store [:session :messages])
       {}
       (fn [info d! m!] (d! :session/remove-message info)))
      (comment
       when
       dev?
       (comp-reel (:reel-length store) {:bottom 100, :background-color :white}))))))
