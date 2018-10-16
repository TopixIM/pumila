
(ns app.comp.emotions
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.comp.space :refer [=<]]
            [respo.macros :refer [defcomp <> action-> span div]]
            [app.config :as config]))

(defcomp comp-emotions-manager () (div {} (<> "emotions")))
