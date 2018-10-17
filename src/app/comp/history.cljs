
(ns app.comp.history
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.comp.space :refer [=<]]
            [respo.macros :refer [defcomp <> action-> span div a]]
            [app.config :as config]))

(defcomp comp-history () (div {:style {:padding "8px 16px"}} (<> "history")))
