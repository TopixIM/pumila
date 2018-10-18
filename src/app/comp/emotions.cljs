
(ns app.comp.emotions
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.comp.space :refer [=<]]
            [respo.macros :refer [defcomp <> action-> span div button]]
            [app.config :as config]))

(defcomp
 comp-emotions-manager
 ()
 (div
  {:style {:padding "8px 16px"}}
  (<> "emotions")
  (div {})
  (div
   {}
   (button
    {:style ui/button, :on-click (action-> :router/change {:name :edit-emotion, :data nil})}
    (<> "New emotion")))))
