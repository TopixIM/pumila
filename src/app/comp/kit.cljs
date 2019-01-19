
(ns app.comp.kit
  (:require [hsl.core :refer [hsl]]
            [app.schema :as schema]
            [respo-ui.core :as ui]
            [respo.core :refer [defcomp list-> action-> <> span div button]]
            [respo.comp.space :refer [=<]]
            [app.config :as config]))

(defcomp
 comp-field
 (label child)
 (div
  {:style (merge ui/row {:margin-bottom 16})}
  (div {:style {:width 64}} (<> label))
  child))

(defcomp comp-hint (text) (<> text {:color (hsl 0 0 80)}))

(defcomp
 comp-title
 (text)
 (<> text {:font-family ui/font-fancy, :font-size 24, :color (hsl 0 0 60)}))
