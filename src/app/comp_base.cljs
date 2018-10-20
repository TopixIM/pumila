
(ns app.comp-base
  (:require [hsl.core :refer [hsl]]
            [app.schema :as schema]
            [respo-ui.core :as ui]
            [respo.macros :refer [defcomp list-> action-> <> span div button]]
            [respo.comp.space :refer [=<]]
            [app.config :as config]))

(defcomp comp-base (user members) (div {:style {}} (<> "Base")))
