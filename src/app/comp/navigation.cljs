
(ns app.comp.navigation
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.comp.space :refer [=<]]
            [respo.core :refer [defcomp <> span div]]
            [app.config :as config]))

(defcomp
 comp-navigation
 (logged-in? count-members)
 (div
  {:style (merge
           ui/row-center
           {:height 48,
            :justify-content :space-between,
            :padding "0 16px",
            :font-size 16,
            :font-family ui/font-fancy,
            :background-color (:theme config/site),
            :color :white})}
  (div
   {:on-click (fn [e d!] (d! :router/change {:name :home})), :style {:cursor :pointer}}
   (<> span (:title config/site) nil))
  (div
   {:style {:cursor "pointer"}, :on-click (fn [e d!] (d! :router/change {:name :profile}))}
   (<> (if logged-in? "Me" "Guest"))
   (=< 8 nil)
   (<> count-members))))
