
(ns app.comp.home
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.comp.space :refer [=<]]
            [respo.macros :refer [defcomp <> action-> span div textarea input button a]]
            [app.config :as config]))

(defcomp
 comp-home
 ()
 (div
  {:style (merge ui/column ui/flex {:padding 16})}
  (=< nil 40)
  (div
   {:style {:font-family ui/font-fancy, :font-size 32, :font-weight 300}}
   (<> "What's your feeling?"))
  (=< nil 40)
  (div
   {:style ui/row-parted}
   (span {})
   (button
    {:style ui/button, :on-click (fn [e d! m!] (d! :router/change {:name :creator}))}
    (<> "Write")))
  (div {:style ui/flex})
  (div
   {}
   (a
    {:style ui/link, :on-click (fn [e d! m!] (d! :router/change {:name :moods}))}
    (<> "Previous moods")))))
