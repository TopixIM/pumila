
(ns app.comp.dashboard
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.comp.space :refer [=<]]
            [respo.macros :refer [defcomp <> action-> span div a]]
            [app.config :as config]))

(defcomp
 comp-dashboard
 ()
 (div
  {:style {:padding "8px 16px"}}
  (<> "dashboard")
  (=< nil 16)
  (div
   {}
   (a
    {:style ui/link, :on-click (action-> :router/change {:name :emotions})}
    (<> "Manage emotions")))
  (=< nil 16)
  (div
   {}
   (a
    {:style ui/link, :on-click (action-> :router/change {:name :history})}
    (<> "View history")))))
