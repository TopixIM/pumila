
(ns app.twig.container
  (:require [recollect.twig :refer [deftwig]]
            [app.twig.user :refer [twig-user]]
            ["randomcolor" :as color]))

(deftwig
 twig-members
 (sessions users)
 (->> sessions
      (map (fn [[k session]] [k (get-in users [(:user-id session) :name])]))
      (into {})))

(deftwig
 twig-container
 (db session records)
 (let [logged-in? (some? (:user-id session))
       router (:router session)
       base-data {:logged-in? logged-in?, :session session, :reel-length (count records)}]
   (merge
    base-data
    (if logged-in?
      (let [user (get-in db [:users (:user-id session)])]
        {:user (twig-user user),
         :router (assoc
                  router
                  :data
                  (case (:name router)
                    :home
                      {:emotions (:emotions user),
                       :moods (->> (:moods user)
                                   (sort-by (fn [[k mood]] (unchecked-negate (:time mood))))
                                   (take 8)
                                   (into {}))}
                    :history {:emotions (:emotions user), :moods (:moods user)}
                    :emotions (:emotions user)
                    :edit-emotion
                      (if (nil? (:data router)) nil (get-in user [:emotions (:data router)]))
                    :profile (twig-members (:sessions db) (:users db))
                    (do))),
         :count (count (:sessions db)),
         :color (color/randomColor)})
      nil))))
