
(ns app.comp.emotion-form
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.comp.space :refer [=<]]
            [respo.macros :refer [defcomp <> action-> span div button]]
            [app.config :as config]))

(defcomp comp-emotion-form () (div {:style {:padding "8px 16px"}} (<> "emotions-form")))
