
(ns app.comp.archives
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.comp.space :refer [=<]]
            [respo.macros :refer [defcomp <> action-> list-> span div img]]
            [app.config :as config]
            ["dayjs" :as dayjs]))

(defcomp
 comp-mood
 (mood)
 (div
  {:style {:padding "0 8px"}}
  (img
   {:src (if (= :mood (:kind mood))
      "http://cdn.tiye.me/logo/tiye.jpg"
      "http://cdn.tiye.me/logo/yuuki.png"),
    :style {:width 24, :height 24, :vertical-align :middle}})
  (=< 8 nil)
  (<> (:text mood))
  (=< 8 nil)
  (<>
   (.format (dayjs (:time mood)) "HH:mm")
   {:font-family ui/font-fancy, :min-width 40, :display :inline-block, :color (hsl 0 0 70)})))

(defcomp
 comp-archives
 (states mood-groups)
 (let [state (or (:data states) {:hide-her? false})]
   (div
    {:style (merge ui/flex {:overflow :auto})}
    (div
     {:on-click (fn [e d! m!] (m! (update state :hide-her? not))),
      :style (merge ui/row-parted {:padding "0 8px"})}
     (span {})
     (<>
      "Hide her"
      {:cursor :pointer,
       :font-family ui/font-fancy,
       :color (if (:hide-her? state) (hsl 0 0 0) (hsl 0 0 80))}))
    (list->
     {}
     (->> mood-groups
          (map
           (fn [[date-string moods]]
             [date-string
              (div
               {:style {:padding "8px 8px"}}
               (<> date-string)
               (list->
                {}
                (->> moods
                     (filter
                      (fn [mood] (if (:hide-her? state) (= :mood (:kind mood)) true)))
                     (sort-by :time)
                     (map (fn [mood] [(:id mood) (comp-mood mood)])))))])))))))
