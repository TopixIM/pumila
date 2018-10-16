
(ns app.comp.dashboard
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.comp.space :refer [=<]]
            [respo.macros :refer [defcomp <> action-> span div]]
            [app.config :as config]))

(defcomp comp-dashboard () (div {} (<> "dashboard")))
