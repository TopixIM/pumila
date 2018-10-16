
(ns app.schema (:require [hsl.core :refer [hsl]]))

(def emotion {:id nil, :text "", :score 0, :color (hsl 0 0 90)})

(def mood {:id nil, :emotion-id nil, :text "", :time nil})

(def router {:name nil, :title nil, :data {}, :router nil})

(def session
  {:user-id nil,
   :id nil,
   :nickname nil,
   :router (do router {:name :home, :data nil, :router nil}),
   :messages {}})

(def user
  {:name nil,
   :id nil,
   :nickname nil,
   :avatar nil,
   :password nil,
   :moods (do mood {}),
   :emotions (do emotion {})})

(def database {:sessions (do session {}), :users (do user {})})

(def notification {:id nil, :kind nil, :text nil})
