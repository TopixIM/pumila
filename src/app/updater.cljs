
(ns app.updater
  (:require [app.updater.session :as session]
            [app.updater.user :as user]
            [app.updater.router :as router]
            [app.schema :as schema]
            [respo-message.updater :refer [update-messages]]
            [app.updater.emotion :as emotion]
            [app.updater.mood :as mood]))

(defn updater [db op op-data sid op-id op-time]
  (let [f (case op
            :session/connect session/connect
            :session/disconnect session/disconnect
            :session/remove-message session/remove-message
            :user/log-in user/log-in
            :user/sign-up user/sign-up
            :user/log-out user/log-out
            :router/change router/change
            :emotion/create-one emotion/create-one
            :emotion/remove-one emotion/remove-one
            :mood/create-one mood/create-one
            :mood/remove-one mood/remove-one
            (do (println "Unknown op:" op) identity))]
    (f db op-data sid op-id op-time)))
