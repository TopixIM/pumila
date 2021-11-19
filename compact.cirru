
{} (:package |app)
  :configs $ {} (:init-fn |app.client/main!) (:reload-fn |app.client/reload!)
    :modules $ [] |respo.calcit/ |lilac/ |recollect/ |memof/ |respo-ui.calcit/ |ws-edn.calcit/ |cumulo-util.calcit/ |respo-message.calcit/ |cumulo-reel.calcit/ |respo-feather.calcit/ |alerts.calcit/
    :version nil
  :entries $ {}
    :server $ {} (:reload-fn |app.server/reload!) (:port 6001) (:storage-key |calcit.cirru)
      :modules $ [] |lilac/ |recollect/ |memof/ |cumulo-util.calcit/ |cumulo-reel.calcit/ |calcit.std/ |calcit-wss/ |respo.calcit/
      :init-fn |app.server/main!
  :files $ {}
    |app.comp.container $ {}
      :ns $ quote
        ns app.comp.container $ :require
          [] hsl.core :refer $ [] hsl
          [] respo-ui.core :as ui
          [] respo.core :refer $ [] defcomp <> >> div span button
          [] respo.comp.inspect :refer $ [] comp-inspect
          [] respo.comp.space :refer $ [] =<
          [] app.comp.navigation :refer $ [] comp-navigation
          [] app.comp.profile :refer $ [] comp-profile
          [] app.comp.login :refer $ [] comp-login
          [] respo-message.comp.messages :refer $ [] comp-messages
          [] cumulo-reel.comp.reel :refer $ [] comp-reel
          [] app.config :refer $ [] dev?
          [] app.schema :as schema
          [] app.config :as config
          [] app.comp.dashboard :refer $ [] comp-dashboard
          [] app.comp.emotions :refer $ [] comp-emotions-manager
          [] app.comp.history :refer $ [] comp-history
          [] app.comp.emotion-form :refer $ [] comp-emotion-form
      :defs $ {}
        |comp-container $ quote
          defcomp comp-container (states store)
            let
                state $ :data states
                session $ :session store
                router $ :router store
                router-data $ :data router
              if (nil? store) (comp-offline)
                div
                  {} $ :style (merge ui/global ui/fullscreen ui/column)
                  comp-navigation (:logged-in? store) (:count store)
                  if (:logged-in? store)
                    case (:name router)
                      :home $ comp-dashboard (>> states :dashboard) router-data
                      :emotions $ comp-emotions-manager router-data
                      :edit-emotion $ comp-emotion-form (>> states :form) router-data
                      :history $ comp-history (>> states :history) (:moods router-data) (:emotions router-data)
                      :profile $ comp-profile (:user store) router-data
                      <> router
                    comp-login states
                  ; comp-status-color $ :color store
                  when dev? $ comp-inspect |Store store
                    {} (:bottom 20) (:left 0) (:max-width |100%)
                  comp-messages
                    get-in store $ [] :session :messages
                    {}
                    fn (info d!) (d! :session/remove-message info)
                  ; when dev? $ comp-reel (:reel-length store)
                    {} (:bottom 100) (:background-color :white)
        |comp-offline $ quote
          defcomp comp-offline () $ div
            {} $ :style
              merge ui/global ui/fullscreen ui/column-dispersive $ {} (:background-color :white)
            div $ {}
              :style $ {} (:height 0)
            div $ {}
              :style $ {}
                :background-image $ str "\"url(" (:icon config/site) "\")"
                :width 86
                :height 86
                :background-size :contain
            div
              {}
                :style $ {} (:cursor :pointer) (:line-height "\"32px")
                :on-click $ fn (e d!) (d! :effect/connect nil)
              <> "|No connection..." $ {} (:font-family ui/font-fancy) (:font-size 24)
        |comp-status-color $ quote
          defcomp comp-status-color (color)
            div $ {}
              :style $ let
                  size 24
                {} (:width size) (:height size) (:position :absolute) (:bottom 60) (:left 8) (:background-color color) (:border-radius "\"50%") (:opacity 0.6) (:pointer-events :none)
    |app.schema $ {}
      :ns $ quote
        ns app.schema $ :require
          [] respo.util.format :refer $ [] hsl
      :defs $ {}
        |notification $ quote
          def notification $ {} (:id nil) (:kind nil) (:text nil)
        |mood $ quote
          def mood $ {} (:id nil) (:emotion-id nil) (:text "\"") (:time nil)
        |user $ quote
          def user $ {} (:name nil) (:id nil) (:nickname nil) (:avatar nil) (:password nil)
            :moods $ do mood ({})
            :emotions $ do emotion ({})
        |session $ quote
          def session $ {} (:user-id nil) (:id nil) (:nickname nil)
            :router $ do router
              {} (:name :home) (:data nil) (:router nil)
            :messages $ {}
        |emotion $ quote
          def emotion $ {} (:id nil) (:text "\"") (:score 0)
            :color $ hsl 0 0 90
        |database $ quote
          def database $ {}
            :sessions $ do session ({})
            :users $ do user ({})
        |router $ quote
          def router $ {} (:name nil) (:title nil)
            :data $ {}
            :router nil
    |app.server $ {}
      :ns $ quote
        ns app.server $ :require ([] app.schema :as schema)
          [] app.updater :refer $ [] updater
          [] cumulo-reel.core :refer $ [] reel-reducer refresh-reel reel-schema
          [] app.config :as config
          [] app.twig.container :refer $ [] twig-container
          [] recollect.diff :refer $ [] diff-twig
          wss.core :refer $ wss-serve! wss-send! wss-each!
          [] recollect.twig :refer $ [] new-twig-loop! clear-twig-caches!
          app.$meta :refer $ calcit-dirname
          calcit.std.fs :refer $ path-exists? check-write-file!
          calcit.std.time :refer $ set-interval
          calcit.std.date :refer $ Date get-time!
          calcit.std.path :refer $ join-path
      :defs $ {}
        |*initial-db $ quote
          defatom *initial-db $ if
            path-exists? $ w-log storage-file
            do (println "\"Found local EDN data")
              merge schema/database $ parse-cirru-edn (read-file storage-file)
            do (println "\"Found no data") schema/database
        |persist-db! $ quote
          defn persist-db! () $ let
              file-content $ format-cirru-edn
                assoc (:db @*reel) :sessions $ {}
              storage-path storage-file
              backup-path $ get-backup-path!
            check-write-file! storage-path file-content
            check-write-file! backup-path file-content
        |sync-clients! $ quote
          defn sync-clients! (reel)
            wss-each! $ fn (sid)
              let
                  db $ :db reel
                  records $ :records reel
                  session $ get-in db ([] :sessions sid)
                  old-store $ or (get @*client-caches sid) nil
                  new-store $ twig-container db session records
                  changes $ diff-twig old-store new-store
                    {} $ :key :id
                ; when config/dev? $ println "\"Changes for" sid "\":" changes (count records)
                if
                  not= changes $ []
                  do
                    wss-send! sid $ format-cirru-edn
                      {} (:kind :patch) (:data changes)
                    swap! *client-caches assoc sid new-store
            new-twig-loop!
        |storage-file $ quote
          def storage-file $ if (empty? calcit-dirname)
            str calcit-dirname $ :storage-file config/site
            str calcit-dirname "\"/" $ :storage-file config/site
        |*reader-reel $ quote (defatom *reader-reel @*reel)
        |*reel $ quote
          defatom *reel $ merge reel-schema
            {} (:base @*initial-db) (:db @*initial-db)
        |main! $ quote
          defn main! ()
            println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
            let
                p? $ get-env "\"port"
                port $ if (some? p?) (parse-float p?) (:port config/site)
              run-server! port
              println $ str "\"Server started on port:" port
            do (; "\"init it before doing multi-threading") (identity @*reader-reel)
            set-interval 200 $ fn () (render-loop!)
            set-interval 600000 $ fn () (persist-db!)
            on-control-c on-exit!
        |get-backup-path! $ quote
          defn get-backup-path! () $ let
              now $ .extract (get-time!)
            join-path calcit-dirname "\"backups"
              str $ :month now
              str (:day now) "\"-snapshot.cirru"
        |on-exit! $ quote
          defn on-exit! () (persist-db!) (; println "\"exit code is...") (quit! 0)
        |dispatch! $ quote
          defn dispatch! (op op-data sid)
            let
                op-id $ generate-id!
                op-time $ -> (get-time!) (.timestamp)
              if config/dev? $ println "\"Dispatch!" (str op) op-data sid
              if (= op :effect/persist) (persist-db!)
                reset! *reel $ reel-reducer @*reel updater op op-data sid op-id op-time config/dev?
        |run-server! $ quote
          defn run-server! (port)
            wss-serve! (&{} :port port)
              fn (data)
                key-match data
                    :connect sid
                    do (dispatch! :session/connect nil sid) (println "\"New client.")
                  (:message sid msg)
                    let
                        action $ parse-cirru-edn msg
                      case-default (:kind action) (println "\"unknown action:" action)
                        :op $ dispatch! (:op action) (:data action) sid
                  (:disconnect sid)
                    do (println "\"Client closed!") (dispatch! :session/disconnect nil sid)
                  _ $ println "\"unknown data:" data
        |render-loop! $ quote
          defn render-loop! () $ when
            not $ identical? @*reader-reel @*reel
            reset! *reader-reel @*reel
            sync-clients! @*reader-reel
        |*client-caches $ quote
          defatom *client-caches $ {}
        |reload! $ quote
          defn reload! () (println "\"Code updated..")
            if (not config/dev?) (raise "\"reloading only happens in dev mode")
            clear-twig-caches!
            reset! *reel $ refresh-reel @*reel @*initial-db updater
            sync-clients! @*reader-reel
    |app.updater.emotion $ {}
      :ns $ quote
        ns app.updater.emotion $ :require ([] app.schema :as schema)
      :defs $ {}
        |remove-one $ quote
          defn remove-one (db op-data sid op-id op-time)
            let
                user-id $ get-in db ([] :sessions sid :user-id)
              update-in db ([] :users user-id :emotions)
                fn (emotions) (dissoc emotions op-data)
        |create-one $ quote
          defn create-one (db op-data sid op-id op-time)
            let
                user-id $ get-in db ([] :sessions sid :user-id)
              update-in db ([] :users user-id :emotions)
                fn (emotions)
                  if
                    some? $ :id op-data
                    update emotions (:id op-data)
                      fn (x) (merge x op-data)
                    assoc emotions op-id $ merge schema/emotion op-data
                      {} $ :id op-id
    |app.comp.emotions $ {}
      :ns $ quote
        ns app.comp.emotions $ :require
          [] respo-ui.core :refer $ [] hsl
          [] respo-ui.core :as ui
          [] respo.comp.space :refer $ [] =<
          [] respo.core :refer $ [] defcomp <> list-> span div button a
          [] app.config :as config
          [] feather.core :refer $ [] comp-i
      :defs $ {}
        |comp-emotion $ quote
          defcomp comp-emotion (emotion style on-click!)
            div
              {}
                :style $ merge ui/center
                  {}
                    :background-color $ :color emotion
                    :display :inline-flex
                    :padding "\"0 16px"
                    :line-height "\"24px"
                    :height "\"24px"
                    :margin "\"0 8px 8px 0"
                    :border-radius "\"8px"
                    :color :white
                  , style
                :on-click on-click!
              <> $ :text emotion
        |comp-emotions-manager $ quote
          defcomp comp-emotions-manager (emotions)
            div
              {} $ :style
                {} $ :padding "\"8px 16px"
              div
                {} $ :style ui/row-middle
                <> "\"Emotions" $ {} (:font-family ui/font-fancy) (:font-size 24)
                =< 8 nil
                a
                  {}
                    :on-click $ fn (e d!)
                      d! :router/change $ {} (:name :edit-emotion) (:data nil)
                    :style $ {} (:font-size 16)
                  comp-i :plus 16 $ hsl 200 80 80
              =< nil 16
              div ({})
                list-> ({})
                  -> emotions (.to-list)
                    .map-pair $ fn (k emotion)
                      [] k $ comp-emotion emotion nil
                        fn (e d!)
                          d! :router/change $ {} (:name :edit-emotion)
                            :data $ :id emotion
              =< nil 32
    |app.twig.container $ {}
      :ns $ quote
        ns app.twig.container $ :require
          [] app.twig.user :refer $ [] twig-user
          calcit.std.rand :refer $ rand-hex-color!
      :defs $ {}
        |twig-container $ quote
          defn twig-container (db session records)
            let
                logged-in? $ some? (:user-id session)
                router $ :router session
                base-data $ {} (:logged-in? logged-in?) (:session session)
                  :reel-length $ count records
              merge base-data $ if logged-in?
                let
                    user $ get-in db
                      [] :users $ :user-id session
                  {}
                    :user $ twig-user user
                    :router $ assoc router :data
                      case-default (:name router) ({})
                        :home $ {}
                          :emotions $ :emotions user
                          :moods $ -> (:moods user) (.to-list)
                            .sort-by $ fn (pair)
                              negate $ :time (last pair)
                            take 8
                            .pairs-map
                        :history $ {}
                          :emotions $ :emotions user
                          :moods $ :moods user
                        :emotions $ :emotions user
                        :edit-emotion $ if
                          nil? $ :data router
                          , nil
                            get-in user $ [] :emotions (:data router)
                        :profile $ twig-members (:sessions db) (:users db)
                    :count $ count (:sessions db)
                    :color $ rand-hex-color!
                {}
        |twig-members $ quote
          defn twig-members (sessions users)
            -> sessions $ map-kv
              fn (k session)
                [] k $ get-in users
                  [] (:user-id session) :name
    |app.updater $ {}
      :ns $ quote
        ns app.updater $ :require ([] app.updater.session :as session) ([] app.updater.user :as user) ([] app.updater.router :as router) ([] app.schema :as schema)
          [] respo-message.updater :refer $ [] update-messages
          [] app.updater.emotion :as emotion
          [] app.updater.mood :as mood
      :defs $ {}
        |updater $ quote
          defn updater (db op op-data sid op-id op-time)
            let
                f $ case-default op
                  fn (& args) (println "\"Unknown op:" op) db
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
              f db op-data sid op-id op-time
    |app.twig.user $ {}
      :ns $ quote
        ns app.twig.user $ :require
          [] recollect.twig :refer $ [] deftwig
      :defs $ {}
        |twig-user $ quote
          defn twig-user (user)
            -> user (dissoc :password) (dissoc :moods) (dissoc :archived-moods)
    |app.comp.kit $ {}
      :ns $ quote
        ns app.comp.kit $ :require
          [] respo-ui.core :refer $ [] hsl
          [] app.schema :as schema
          [] respo-ui.core :as ui
          [] respo.core :refer $ [] defcomp list-> <> span div button
          [] respo.comp.space :refer $ [] =<
          [] app.config :as config
      :defs $ {}
        |comp-hint $ quote
          defcomp comp-hint (text)
            <> text $ {}
              :color $ hsl 0 0 80
        |comp-field $ quote
          defcomp comp-field (label child)
            div
              {} $ :style
                merge ui/row $ {} (:margin-bottom 16)
              div
                {} $ :style
                  {} $ :width 64
                <> label
              , child
        |comp-title $ quote
          defcomp comp-title (text)
            <> text $ {} (:font-family ui/font-fancy) (:font-size 24)
              :color $ hsl 0 0 60
    |app.comp.emotion-form $ {}
      :ns $ quote
        ns app.comp.emotion-form $ :require
          [] respo-ui.core :refer $ [] hsl
          [] respo-ui.core :as ui
          [] respo.comp.space :refer $ [] =<
          [] respo.core :refer $ [] defcomp <> >> list-> span div button input
          [] app.config :as config
          [] app.schema :as schema
          [] respo-alerts.core :refer $ [] use-confirm
          [] app.comp.kit :refer $ [] comp-field comp-title
      :defs $ {}
        |comp-emotion-form $ quote
          defcomp comp-emotion-form (states data)
            let
                cursor $ :cursor states
                form $ or (:data states) (or data schema/emotion)
                editing? $ some? (:id form)
                delete-plugin $ use-confirm (>> states :delete)
                  {} $ :text "\"Sure to delete?"
              div
                {} $ :style
                  {} $ :padding "\"8px 16px"
                div ({}) (comp-title "\"Emotion details")
                =< nil 16
                comp-field "\"Name" $ input
                  {} (:style ui/input)
                    :value $ :text form
                    :on-input $ fn (e d!)
                      d! cursor $ assoc form :text (:value e)
                comp-field "\"Score" $ input
                  {} (:style ui/input)
                    :value $ :score form
                    :type "\"number"
                    :on-input $ fn (e d!)
                      d! cursor $ assoc form :score (:value e)
                comp-field "\"Color" $ div
                  {} $ :style ui/column
                  input $ {}
                    :style $ merge ui/input
                      {} $ :font-family ui/font-code
                    :value $ :color form
                    :on-input $ fn (e d!)
                      d! cursor $ assoc form :color (:value e)
                  =< nil 8
                  comp-color-picker form $ fn (color d!)
                    d! cursor $ assoc form :color color
                =< nil 16
                div
                  {} $ :style ui/row-parted
                  span $ {}
                  span ({})
                    when editing? $ button
                      {}
                        :style $ merge ui/button
                          {} (:color :white)
                            :background-color $ hsl 10 50 70
                            :border $ hsl 10 50 60
                        :inner-text "\"Delete"
                        :on-click $ fn (e d!)
                          .show delete-plugin d! $ fn ()
                            d! :router/change $ {} (:name :emotions)
                            d! :emotion/remove-one $ :id form
                    when editing? $ =< 8 nil
                    button $ {} (:style ui/button)
                      :on-click $ fn (e d!) (d! :emotion/create-one form) (d! cursor nil)
                        d! :router/change $ {} (:name :emotions)
                      :inner-text $ if editing? "\"Save" "\"Create"
                .render delete-plugin
        |default-colors $ quote
          def default-colors $ [] "\"#ff9e96" "\"#e7e5e5" "\"#baf9c2" "\"#c6ded2" "\"#5facf6" "\"#c390e8" "\"#ffdd57" "\"#f79800" "\"#cf0027"
        |comp-color-picker $ quote
          defcomp comp-color-picker (form on-pick)
            list-> ({})
              -> default-colors $ map
                fn (color)
                  [] color $ div
                    {}
                      :style $ let
                          size 24
                        {} (:background-color color) (:height size) (:width size) (:border-radius "\"6px") (:display :inline-block) (:margin "\"0 8px 8px 0") (:cursor :pointer)
                      :on-click $ fn (e d!) (on-pick color d!)
    |app.updater.mood $ {}
      :ns $ quote
        ns app.updater.mood $ :require ([] app.schema :as schema)
      :defs $ {}
        |remove-one $ quote
          defn remove-one (db op-data sid op-id op-time)
            let
                user-id $ get-in db ([] :sessions sid :user-id)
              update-in db ([] :users user-id :moods)
                fn (moods) (dissoc moods op-data)
        |create-one $ quote
          defn create-one (db op-data sid op-id op-time)
            let
                user-id $ get-in db ([] :sessions sid :user-id)
              assoc-in db ([] :users user-id :moods op-id)
                merge schema/mood op-data $ {} (:id op-id) (:time op-time)
    |app.updater.user $ {}
      :ns $ quote
        ns app.updater.user $ :require
          calcit.std.hash :refer $ md5
          app.schema :as schema
      :defs $ {}
        |sign-up $ quote
          defn sign-up (db op-data sid op-id op-time)
            let-sugar
                  [] username password
                  , op-data
                maybe-user $ find
                  vals $ :users db
                  fn (user)
                    = username $ :name user
              if (some? maybe-user)
                update-in db ([] :sessions sid :messages)
                  fn (messages)
                    assoc messages op-id $ {} (:id op-id)
                      :text $ str "\"Name is taken: " username
                -> db
                  assoc-in ([] :sessions sid :user-id) op-id
                  assoc-in ([] :users op-id)
                    merge schema/user $ {} (:id op-id) (:name username) (:nickname username)
                      :password $ md5 password
                      :avatar nil
        |reset-mark $ quote
          defn reset-mark (db op-data sid op-id op-time)
            let
                user-id $ get-in db ([] :sessions sid :user-id)
              assoc-in db ([] :users user-id :history-mark) op-time
        |log-out $ quote
          defn log-out (db op-data sid op-id op-time)
            assoc-in db ([] :sessions sid :user-id) nil
        |log-in $ quote
          defn log-in (db op-data sid op-id op-time)
            let-sugar
                  [] username password
                  , op-data
                maybe-user $ -> (:users db) (vals) (.to-list)
                  find $ fn (user)
                    and $ = username (:name user)
              update-in db ([] :sessions sid)
                fn (session)
                  if (some? maybe-user)
                    if
                      = (md5 password) (:password maybe-user)
                      assoc session :user-id $ :id maybe-user
                      update session :messages $ fn (messages)
                        assoc messages op-id $ {} (:id op-id)
                          :text $ str "\"Wrong password for " username
                    update session :messages $ fn (messages)
                      assoc messages op-id $ {} (:id op-id)
                        :text $ str "\"No user named: " username
    |app.comp.profile $ {}
      :ns $ quote
        ns app.comp.profile $ :require
          [] respo-ui.core :refer $ [] hsl
          [] app.schema :as schema
          [] respo-ui.core :as ui
          [] respo.core :refer $ [] defcomp list-> <> span div button
          [] respo.comp.space :refer $ [] =<
          [] app.config :as config
      :defs $ {}
        |comp-profile $ quote
          defcomp comp-profile (user members)
            div
              {} $ :style
                merge ui/flex $ {} (:padding 16)
              div
                {} $ :style
                  {} (:font-family ui/font-fancy) (:font-size 32) (:font-weight 100)
                <> $ str "|Hello! " (:name user)
              =< nil 16
              div
                {} $ :style ui/row
                <> "\"Members:"
                =< 8 nil
                list->
                  {} $ :style ui/row
                  -> members (.to-list)
                    .map-pair $ fn (k username)
                      [] k $ div
                        {} $ :style
                          {} (:padding "\"0 8px")
                            :border $ str "\"1px solid " (hsl 0 0 80)
                            :border-radius "\"16px"
                            :margin "\"0 4px"
                        <> username
              =< nil 48
              div ({})
                button
                  {}
                    :style $ merge ui/button
                    :on-click $ fn (e d! m!)
                      .replace js/location $ str js/location.origin "\"?time=" (.now js/Date)
                  <> "\"Refresh"
                =< 16 nil
                button
                  {}
                    :style $ merge ui/button
                      {} (:color :red) (:border-color :red)
                    :on-click $ fn (e dispatch! mutate!) (dispatch! :user/log-out nil)
                      .removeItem js/localStorage $ :storage-key config/site
                  <> "|Log out"
    |app.comp.login $ {}
      :ns $ quote
        ns app.comp.login $ :require
          [] respo.core :refer $ [] defcomp <> div input button span
          [] respo.comp.space :refer $ [] =<
          [] respo.comp.inspect :refer $ [] comp-inspect
          [] respo-ui.core :as ui
          [] app.schema :as schema
          [] app.config :as config
      :defs $ {}
        |initial-state $ quote
          def initial-state $ {} (:username "\"") (:password "\"")
        |comp-login $ quote
          defcomp comp-login (states)
            let
                cursor $ :cursor states
                state $ or (:data states) initial-state
              div
                {} $ :style (merge ui/flex ui/center)
                div ({})
                  div
                    {} $ :style ({})
                    div ({})
                      input $ {} (:placeholder "\"Username")
                        :value $ :username state
                        :style ui/input
                        :on-input $ fn (e d!)
                          d! cursor $ assoc state :username (:value e)
                    =< nil 8
                    div ({})
                      input $ {} (:placeholder "\"Password")
                        :value $ :password state
                        :style ui/input
                        :on-input $ fn (e d!)
                          d! cursor $ assoc state :password (:value e)
                  =< nil 8
                  div
                    {} $ :style
                      {} $ :text-align :right
                    span $ {} (:inner-text "\"Sign up")
                      :style $ merge ui/link
                      :on-click $ on-submit (:username state) (:password state) true
                    =< 8 nil
                    span $ {} (:inner-text "\"Log in")
                      :style $ merge ui/link
                      :on-click $ on-submit (:username state) (:password state) false
        |on-submit $ quote
          defn on-submit (username password signup?)
            fn (e dispatch!)
              dispatch! (if signup? :user/sign-up :user/log-in) ([] username password)
              .setItem js/localStorage (:storage-key config/site)
                format-cirru-edn $ [] username password
    |app.style $ {}
      :ns $ quote
        ns app.style $ :require
          [] hsl.core :refer $ [] hsl
          [] respo-ui.core :as ui
      :defs $ {}
        |link $ quote
          def link $ {} (:text-decoration :underline) (:cursor :pointer)
            :color $ hsl 240 80 80
            :font-family ui/font-fancy
    |app.util.dom $ {}
      :ns $ quote (ns app.util.dom)
      :defs $ {}
    |app.comp.navigation $ {}
      :ns $ quote
        ns app.comp.navigation $ :require
          [] respo-ui.core :refer $ [] hsl
          [] respo-ui.core :as ui
          [] respo.comp.space :refer $ [] =<
          [] respo.core :refer $ [] defcomp <> span div
          [] app.config :as config
      :defs $ {}
        |comp-navigation $ quote
          defcomp comp-navigation (logged-in? count-members)
            div
              {} $ :style
                merge ui/row-center $ {} (:height 48) (:justify-content :space-between) (:padding "\"0 16px") (:font-size 16)
                  :border-bottom $ str "\"1px solid " (hsl 0 0 0 0.1)
                  :font-family ui/font-fancy
              div
                {}
                  :on-click $ fn (e d!)
                    d! :router/change $ {} (:name :home)
                  :style $ {} (:cursor :pointer)
                <> (:title config/site) nil
              div
                {}
                  :style $ {} (:cursor "\"pointer")
                  :on-click $ fn (e d!)
                    d! :router/change $ {} (:name :profile)
                <> $ if logged-in? "\"Me" "\"Guest"
                =< 8 nil
                <> count-members
    |app.updater.router $ {}
      :ns $ quote (ns app.updater.router)
      :defs $ {}
        |change $ quote
          defn change (db op-data sid op-id op-time)
            assoc-in db ([] :sessions sid :router) op-data
    |app.comp.history $ {}
      :ns $ quote
        ns app.comp.history $ :require
          [] respo-ui.core :refer $ [] hsl
          [] respo-ui.core :as ui
          [] respo.comp.space :refer $ [] =<
          [] respo.core :refer $ [] defcomp >> <> list-> span div a
          [] app.config :as config
          [] app.comp.kit :refer $ [] comp-title
          [] app.comp.emotions :refer $ [] comp-emotion
          [] "\"dayjs" :default dayjs
          [] app.comp.kit :refer $ [] comp-hint
          [] feather.core :refer $ [] comp-icon comp-i
          [] respo-alerts.core :refer $ [] use-confirm
      :defs $ {}
        |comp-record $ quote
          defcomp comp-record (states mood emotions)
            let
                remove-plugin $ use-confirm (>> states :remove)
                  {} $ :text "\"Sure to delete?"
              div
                {} (:class-name "\"")
                  :style $ merge ui/column
                    {}
                      :border-bottom $ str "\"1px solid " (hsl 0 0 90)
                      :padding "\"8px 0"
                div
                  {} $ :style ui/row-parted
                  div
                    {} $ :style ui/row-middle
                    comp-emotion
                      get emotions $ :emotion-id mood
                      , nil nil
                    comp-hint $ ->
                      dayjs $ :time mood
                      .format "\"MM-DD HH:mm"
                  span
                    {} $ :on-click
                      fn (e d!)
                        .show remove-plugin d! $ fn ()
                          d! :mood/remove-one $ :id mood
                    comp-i :x 14 $ hsl 0 0 80
                div $ {}
                  :inner-text $ :text mood
                  :style $ merge ui/flex
                    {} $ :word-break :break-all
        |comp-history $ quote
          defcomp comp-history (states moods emotions)
            div
              {} $ :style
                merge ui/flex ui/column $ {} (:overflow :auto)
              div
                {} $ :style
                  {} (:margin "\"8px 0") (:padding "\"8px 16px")
                comp-title "\"History"
              list->
                {} $ :style
                  merge ui/flex $ {} (:width "\"100%") (:padding "\"8px 16px")
                -> moods (.to-list)
                  .sort-by $ fn (pair)
                    negate $ :time (last pair)
                  .map-pair $ fn (k mood)
                    [] k $ comp-record
                      >> states $ :id mood
                      , mood emotions
    |app.comp.dashboard $ {}
      :ns $ quote
        ns app.comp.dashboard $ :require
          [] respo-ui.core :refer $ [] hsl
          [] respo-ui.core :as ui
          [] respo.comp.space :refer $ [] =<
          [] respo.core :refer $ [] defcomp <> list-> span div input a button textarea pre
          [] app.config :as config
          [] app.comp.emotions :refer $ [] comp-emotion
          [] app.comp.kit :refer $ [] comp-title
          [] feather.core :refer $ [] comp-i
          [] respo-alerts.core :refer $ [] comp-modal
      :defs $ {}
        |comp-dashboard $ quote
          defcomp comp-dashboard (states router-data)
            let
                cursor $ :cursor states
                state $ or (:data states)
                  {} (:show-editor? false) (:emotion-id nil) (:draft "\"")
                emotions $ :emotions router-data
                moods $ :moods router-data
              div
                {} $ :style
                  {} $ :padding "\"8px 16px"
                comp-title "\"What do you feel now?"
                =< nil 16
                list-> emotions $ -> emotions (.to-list)
                  .sort-by $ fn (pair)
                    negate $ :score (last pair)
                  .map-pair $ fn (k emotion)
                    [] k $ comp-emotion emotion nil
                      fn (e d!)
                        d! cursor $ merge state
                          {} (:show-editor? true)
                            :emotion-id $ :id emotion
                =< nil 0
                div
                  {} $ :style ui/row-parted
                  span $ {}
                  a
                    {}
                      :style $ merge ui/link
                      :on-click $ fn (e d!)
                        d! :router/change $ {} (:name :emotions)
                    comp-i :settings 16 $ hsl 200 80 80
                =< nil 16
                div ({})
                  a
                    {} (:style ui/link)
                      :on-click $ fn (e d!)
                        d! :router/change $ {} (:name :history)
                    <> "\"View history"
                div ({})
                  list-> ({})
                    -> moods (.to-list)
                      .sort-by $ fn (pair)
                        negate $ :time (last pair)
                      .map-pair $ fn (k mood)
                        [] k $ let
                            emotion-id $ :emotion-id mood
                          div
                            {} $ :style ui/row
                            comp-emotion (get emotions emotion-id) nil $ fn (e d!)
                            div
                              {} $ :style
                                merge ui/expand $ {} (:white-space :nowrap) (:text-overflow :ellipsis) (:overflow :hidden)
                              <> $ :text mood
                comp-modal
                  {}
                    :style $ {} (:width 400) (:max-width "\"86%")
                    :render $ fn (on-close)
                      div
                        {} $ :style
                          {} (:min-width 240) (:padding 20)
                        div
                          {} $ :style ui/row-middle
                          <> "\"In mood"
                          =< 8 nil
                          comp-emotion
                            get emotions $ :emotion-id state
                            , nil $ fn ()
                        div ({})
                          textarea $ {}
                            :style $ merge ui/textarea
                              {} (:width "\"100%") (:min-height 160)
                            :value $ :draft state
                            :placeholder "\"Some notes..."
                            :on-input $ fn (e d!)
                              d! cursor $ assoc state :draft (:value e)
                        =< nil 8
                        div
                          {} $ :style ui/row-parted
                          span $ {}
                          button $ {} (:style ui/button) (:inner-text "\"Submit")
                            :on-click $ fn (e d!)
                              d! :mood/create-one $ {}
                                :text $ :draft state
                                :emotion-id $ :emotion-id state
                              d! cursor $ assoc state :show-editor? false :draft "\""
                  :show-editor? state
                  fn (d!)
                    d! cursor $ assoc state :show-editor? false
    |app.updater.session $ {}
      :ns $ quote
        ns app.updater.session $ :require ([] app.schema :as schema)
      :defs $ {}
        |disconnect $ quote
          defn disconnect (db op-data sid op-id op-time)
            update db :sessions $ fn (session) (dissoc session sid)
        |remove-message $ quote
          defn remove-message (db op-data sid op-id op-time)
            update-in db ([] :sessions sid :messages)
              fn (messages)
                dissoc messages $ :id op-data
        |connect $ quote
          defn connect (db op-data sid op-id op-time)
            assoc-in db ([] :sessions sid)
              merge schema/session $ {} (:id sid)
    |app.client $ {}
      :ns $ quote
        ns app.client $ :require
          [] respo.core :refer $ [] render! clear-cache! realize-ssr!
          [] respo.cursor :refer $ [] update-states
          [] app.comp.container :refer $ [] comp-container
          [] cljs.reader :refer $ [] read-string
          [] app.schema :as schema
          [] app.config :as config
          [] ws-edn.client :refer $ [] ws-connect! ws-send!
          [] recollect.patch :refer $ [] patch-twig
          [] cumulo-util.core :refer $ [] on-page-touch
          [] "\"url-parse" :default url-parse
          "\"bottom-tip" :default hud!
          "\"./calcit.build-errors" :default client-errors
          "\"../js-out/calcit.build-errors" :default server-errors
      :defs $ {}
        |render-app! $ quote
          defn render-app! () $ render! mount-target
            comp-container (:states @*states) @*store
            , dispatch!
        |ssr? $ quote
          def ssr? $ some? (.querySelector js/document "\"meta.respo-ssr")
        |*states $ quote
          defatom *states $ {}
            :states $ {}
              :cursor $ []
        |mount-target $ quote
          def mount-target $ .querySelector js/document "\".app"
        |connect! $ quote
          defn connect! () $ let
              url-obj $ url-parse js/location.href true
              host $ either (-> url-obj .-query .-host) js/location.hostname
              port $ either (-> url-obj .-query .-port) (:port config/site)
            ws-connect! (str "\"ws://" host "\":" port)
              {}
                :on-open $ fn (event) (simulate-login!)
                :on-close $ fn (event) (reset! *store nil) (js/console.error "\"Lost connection!")
                :on-data on-server-data
        |main! $ quote
          defn main! ()
            println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
            render-app!
            connect!
            add-watch *store :changes $ fn (store prev) (render-app!)
            add-watch *states :changes $ fn (states prev) (render-app!)
            on-page-touch $ fn ()
              if (nil? @*store) (connect!)
            println "\"App started!"
        |*store $ quote (defatom *store nil)
        |dispatch! $ quote
          defn dispatch! (op op-data)
            when
              and config/dev? $ not= op :states
              println "\"Dispatch" op op-data
            case-default op
              ws-send! $ {} (:kind :op) (:op op) (:data op-data)
              :states $ reset! *states (update-states @*states op-data)
              :effect/connect $ connect!
        |on-server-data $ quote
          defn on-server-data (data)
            case-default (:kind data) (println "\"unknown server data kind:" data)
              :patch $ let
                  changes $ :data data
                when config/dev? $ js/console.log "\"Changes" (to-js-data changes)
                reset! *store $ patch-twig @*store changes
        |simulate-login! $ quote
          defn simulate-login! () $ let
              raw $ .!getItem js/localStorage (:storage-key config/site)
            if (some? raw)
              do (println "\"Found storage.")
                dispatch! :user/log-in $ parse-cirru-edn raw
              do $ println "\"Found no storage."
        |reload! $ quote
          defn reload! () $ if
            or (some? client-errors) (some? server-errors)
            hud! "\"error" $ str client-errors &newline server-errors
            do (hud! "\"inactive" nil) (remove-watch *store :changes) (remove-watch *states :changes) (clear-cache!) (render-app!)
              add-watch *store :changes $ fn (store prev) (render-app!)
              add-watch *states :changes $ fn (states prev) (render-app!)
              println "\"Code updated."
    |app.config $ {}
      :ns $ quote (ns app.config)
      :defs $ {}
        |cdn? $ quote
          def cdn? $ cond
              exists? js/window
              , false
            (exists? js/process) (= "\"true" js/process.env.cdn)
            :else false
        |dev? $ quote
          def dev? $ = "\"dev" (get-env "\"mode")
        |site $ quote
          def site $ {} (:port 11011) (:title "\"Pumila") (:icon "\"http://cdn.tiye.me/logo/pumila.png") (:storage-key "\"pumila") (:storage-file "\"storage.cirru") (:theme "\"#6EBAEE")
