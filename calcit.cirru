
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {}
    :default $ {} (:description |) (:init-fn 'app.client/main!) (:mode :js) (:reload-fn 'app.client/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |recollect/ |memof/ |respo-ui.calcit/ |ws-edn.calcit/ |cumulo-util.calcit/ |respo-message.calcit/ |cumulo-reel.calcit/ |respo-feather.calcit/ |alerts.calcit/ |js-ffi/
      :type-slots $ {} $ :dispatch-op 'app.schema/ViewDispatch
    :server $ {} (:description |) (:init-fn 'app.server/main!) (:mode :native) (:reload-fn 'app.server/reload!) (:target :native)
      :feature-policy $ {}
      :modules $ [] |recollect/ |memof/ |cumulo-util.calcit/ |cumulo-reel.calcit/ |calcit.std/ |calcit-wss/ |respo.calcit/
      :type-slots $ {}
  :files $ {}
    'app.client $ %{} 'FileEntry
      :defs $ {}
        '*states $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *states
            {} $ :states $ {}
              :cursor $ []
          :examples $ []
          :schema $ quote $ Ref (Map Tag Dynamic)
        '*store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *store None
          :examples $ []
          :schema $ quote $ Ref
            Option $ Map Tag Dynamic
        'DocumentHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait DocumentHost
            .querySelector $ Fn app.client/DocumentHost String $ -> (JsNullish JsObject)
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object)
          :schema $ quote Trait
        'connect! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn connect! ()
            let
                location $ js-ffi.browser/location-snapshot
                query $ js-ffi.shared/search-params-create $ :search location
                host $ .unwrap-or (js-ffi.shared/search-params-get query |host) (:hostname location)
                port $ .unwrap-or (js-ffi.shared/search-params-get query |port)
                  str $ .unwrap-or (get config/site :port) 0
              ws-connect!
                if config/dev? (str |ws:// host |: port) (str |wss:// host |/ws)
                {}
                  :on-open $ fn (event) (simulate-login!)
                  :on-close $ fn (event) (reset! *store None) (js/console.error "|Lost connection!")
                  :on-data $ fn (message)
                    match message $
                      :patch changes
                      on-server-data $ recollect.schema/decode-changes changes
          :examples $ []
          :schema $ quote $ Fn (-> ws-edn.client/WsClient) (:features :io :js-ffi :state)
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            when
              and config/dev? $ not=
                -> (nth op 0) (.unwrap-or :unknown)
                , :states
              js/console.log |Dispatch $ .unwrap-or (nth op 0) :unknown
            match op
              (app.schema/LocalOp action)
                match action
                  (:states cursor state)
                    reset! *states $ schema/as-style $ update-states @*states cursor state
                  (:effect/connect) (connect!)
              (app.schema/RemoteOp action)
                ws-send! $ schema/remote-op-to-wire action
            , &unit
          :examples $ []
          :schema $ quote $ Fn schema/UiOp (-> Unit) (:features :io :js-ffi :state)
        'dispatch-from-view! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch-from-view! (op)
            cond
                = (enum-definition op) (Some app.schema/LocalOp)
                dispatch! $ decode-map-as op 'app.schema/LocalOp
              (= (enum-definition op) (Some app.schema/RemoteOp))
                dispatch! $ decode-map-as op 'app.schema/RemoteOp
              true $ match op
                (:states cursor state)
                  dispatch! $ app.schema/LocalOp :states
                    decode-map-as cursor $ List respo.schema/CoordKey
                    , state
                _ $ raise "|Unknown Pumila view operation"
          :examples $ []
          :schema $ quote $ Fn AnyEnum (-> Unit) (:features :io :js-ffi :state) (:open :reflect)
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            if config/dev? $ load-console-formatter!
            render-app!
            connect!
            add-watch! *store :changes $ fn (store prev) (render-app!)
            add-watch! *states :changes $ fn (states prev) (render-app!)
            on-page-touch $ fn ()
              if (.none? @*store) (connect!)
              , &unit
            println "|App started!"
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :io :js-ffi :state)
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn mount-target ()
            .query-selector (js-cast js/document 'respo.dom/DomDocument) |.app
          :examples $ []
          :schema $ quote $ Fn
            -> $ JsNullish respo.dom/DomElement
            :features :js-ffi
        'on-server-data $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-server-data (changes)
            when config/dev? $ js/console.log |Changes changes
            reset! *store $ app.schema/apply-server-patch @*store changes
            , &unit
          :examples $ []
          :schema $ quote $ Fn (List recollect.schema/change-op) (-> Unit) (:features :js-ffi :state)
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if
              or (non-nil? client-errors) (non-nil? server-errors)
              hud! |error $ str client-errors &newline server-errors
              do (hud! |inactive nil) (remove-watch! *store :changes) (remove-watch! *states :changes) (clear-cache!) (render-app!)
                add-watch! *store :changes $ fn (store prev) (render-app!)
                add-watch! *states :changes $ fn (states prev) (render-app!)
                println "|Code updated."
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :io :js-ffi :state)
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render-with! (mount-target)
              fn () $ comp-container
                app.schema/as-style $ app.schema/read-field @*states :states
                , @*store
              , dispatch-from-view!
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :io :js-ffi :state)
        'simulate-login! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn simulate-login! ()
            let
                raw $ js/localStorage.getItem $ decode-map-as
                  .unwrap $ get config/site :storage-key
                  , 'String
              if (js-present? raw)
                do (println "|Found storage.")
                  dispatch! $ app.schema/RemoteOp :user/log-in $ schema/decode-credentials
                    parse-cirru-edn $ js-ffi.contract/expect-string |app.client/simulate-login! raw
                println "|Found no storage."
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :io :js-ffi :state)
        'ssr? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn ssr? ()
            js-present? $ .querySelector (js-cast js/document 'app.client/DocumentHost) |meta.respo-ssr
          :examples $ []
          :schema $ quote $ Fn (-> Bool) (:features :js-ffi)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.client
          :require
            respo.core :refer $ render-with! clear-cache! realize-ssr!
            respo.cursor :refer $ update-states
            app.comp.container :refer $ comp-container
            app.schema :as schema
            app.config :as config
            ws-edn.client :refer $ ws-connect! ws-send!
            cumulo-util.core :refer $ on-page-touch
            |bottom-tip :default hud!
            |./calcit.build-errors :default client-errors
            |../js-out/calcit.build-errors :default server-errors
    'app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (states maybe-store)
            match maybe-store
              (:none) (comp-offline)
              (:some store)
                let
                    router $ .unwrap-or (app.schema/lookup-field store :router) ({})
                    router-data $ .unwrap-or (app.schema/lookup-field router :data) ({})
                  div
                    {} $ :style $ merge ui/global ui/fullscreen ui/column
                    comp-navigation
                      decode-map-as (app.schema/read-field store :logged-in?) 'Bool
                      decode-map-as
                        .unwrap-or (app.schema/lookup-field store :count) 0
                        , 'Number
                    if
                      decode-map-as (app.schema/read-field store :logged-in?) 'Bool
                      case (app.schema/read-field router :name)
                        :home $ comp-dashboard (>> states :dashboard) router-data
                        :emotions $ comp-emotions-manager router-data
                        :edit-emotion $ comp-emotion-form (>> states :form) (app.schema/edit-route-data router)
                        :history $ comp-history (>> states :history)
                          decode-map-as (app.schema/read-field router-data :moods)
                            Map String $ Map Tag Dynamic
                          decode-map-as (app.schema/read-field router-data :emotions)
                            Map String $ Map Tag Dynamic
                        :profile $ comp-profile (app.schema/read-field store :user) router-data
                        <> router
                      comp-login states
                    ; comp-status-color $ :color store
                    if dev?
                      Some $ comp-inspect |Store store $ {} (:bottom 20) (:left 0) (:max-width |100%)
                      , None
                    comp-messages
                      app.schema/as-string-map $ ->
                        get-in store $ [] :session :messages
                        .unwrap-or $ {}
                      {}
                      fn (info d!)
                        hint-fn $ Fn (Map Tag Dynamic)
                          Fn AnyEnum $ -> Unit
                          -> Unit
                        d! $ app.schema/RemoteOp :session/remove-message $ decode-map-as (app.schema/read-field info :id) 'String
                        , &unit
                    ; when dev? $ comp-reel (:reel-length store)
                      {} (:bottom 100) (:background-color :white)
          :examples $ []
          :schema $ quote $ Fn (Map Tag Dynamic)
            Option $ Map Tag Dynamic
            -> respo.schema/Component
        'comp-offline $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-offline ()
            div
              {} $ :style $ merge ui/global ui/fullscreen ui/column-dispersive
                {} $ :background-color :white
              div $ {} $ :style
                {} $ :height 0
              div $ {} $ :style
                {}
                  :background-image $ str "|url("
                    .unwrap-or (get config/site :icon) ||
                    , "|)"
                  :width 86
                  :height 86
                  :background-size :contain
              div
                {}
                  :style $ {} (:cursor :pointer) (:line-height |32px)
                  :on-click $ fn (e d!)
                    d! $ app.schema/LocalOp :effect/connect
                <> "|No connection..." $ {} (:font-family ui/font-fancy) (:font-size 24)
          :examples $ []
          :schema $ quote $ Fn (-> respo.schema/Component)
        'comp-status-color $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-status-color (color)
            div $ {} $ :style
              let
                  size 24
                {} (:width size) (:height size) (:position :absolute) (:bottom 60) (:left 8) (:background-color color) (:border-radius |50%) (:opacity 0.6) (:pointer-events :none)
          :examples $ []
          :schema $ quote $ Fn Dynamic (-> respo.schema/Component)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.container
          :require
            hsl.core :refer $ hsl
            respo-ui.core :as ui
            respo.core :refer $ defcomp <> >> div span button
            respo.comp.inspect :refer $ comp-inspect
            respo.comp.space :refer $ =<
            app.comp.navigation :refer $ comp-navigation
            app.comp.profile :refer $ comp-profile
            app.comp.login :refer $ comp-login
            respo-message.comp.messages :refer $ comp-messages
            cumulo-reel.comp.reel :refer $ comp-reel
            app.config :refer $ dev?
            app.schema :as schema
            app.config :as config
            app.comp.dashboard :refer $ comp-dashboard
            app.comp.emotions :refer $ comp-emotions-manager
            app.comp.history :refer $ comp-history
            app.comp.emotion-form :refer $ comp-emotion-form
    'app.comp.dashboard $ %{} 'FileEntry
      :defs $ {} $ 'comp-dashboard
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-dashboard (states router-data)
            let
                cursor $ app.schema/read-field states :cursor
                state $ .unwrap-or (app.schema/lookup-field states :data)
                  {} (:show-editor? false) (:emotion-id nil) (:draft |)
                emotions $ .unwrap-or (app.schema/lookup-field router-data :emotions) ({})
                moods $ .unwrap-or (app.schema/lookup-field router-data :moods) ({})
              div
                {} $ :style $ {} (:padding "|8px 16px")
                comp-title "|What do you feel now?"
                =< nil 16
                list-> ({})
                  -> (app.schema/as-map emotions) (.to-list)
                    .sort-by $ fn (pair)
                      negate $ app.schema/as-score $ app.schema/read-field
                        .unwrap $ last pair
                        , :score
                    .map-pair $ fn (k emotion)
                      [] k $ comp-emotion emotion $ Some
                        fn (e d!)
                          d! $ app.schema/LocalOp :states
                            decode-map-as cursor $ List respo.schema/CoordKey
                            merge (app.schema/as-style state)
                              {} (:show-editor? true)
                                :emotion-id $ app.schema/read-field emotion :id
                =< nil 0
                div
                  {} $ :style ui/row-parted
                  span $ {}
                  a
                    {}
                      :style $ merge ui/link
                      :on-click $ fn (e d!)
                        d! $ app.schema/RemoteOp :router/change $ decode-map-as
                          {} $ :name :emotions
                          Map Tag Dynamic
                    comp-i :settings 16 $ hsl 200 80 80
                =< nil 16
                div ({})
                  a
                    {} (:style ui/link)
                      :on-click $ fn (e d!)
                        d! $ app.schema/RemoteOp :router/change $ decode-map-as
                          {} $ :name :history
                          Map Tag Dynamic
                    <> "|View history"
                div ({})
                  list-> ({})
                    -> (app.schema/as-map moods) (.to-list)
                      .sort-by $ fn (pair)
                        negate $ decode-map-as
                          app.schema/read-field
                            .unwrap $ last pair
                            , :time
                          , 'Number
                      .map-pair $ fn (k mood)
                        [] k $ let
                            emotion-id $ app.schema/lookup-field mood :emotion-id
                          div
                            {} $ :style ui/row
                            comp-emotion
                              .unwrap-or
                                .and-then emotion-id $ fn (id) (get emotions id)
                                {}
                              Some $ fn (e d!) &unit
                            div
                              {} $ :style $ merge ui/expand
                                {} (:white-space :nowrap) (:text-overflow :ellipsis) (:overflow :hidden)
                              <> $ decode-map-as (app.schema/read-field mood :text) 'String
                comp-modal
                  {}
                    :style $ {} (:width 400) (:max-width |86%)
                    :render $ fn (on-close)
                      div
                        {} $ :style $ {} (:min-width 240) (:padding 20)
                        div
                          {} $ :style ui/row-middle
                          <> "|In mood"
                          =< 8 nil
                          comp-emotion
                            .unwrap-or
                              .and-then (app.schema/lookup-field state :emotion-id)
                                fn (id) (get emotions id)
                              {}
                            Some $ fn (e d!) &unit
                        div ({})
                          textarea $ {}
                            :style $ merge ui/textarea $ {} (:width |100%) (:min-height 160)
                            :value $ app.schema/read-field state :draft
                            :placeholder "|Some notes..."
                            :on-input $ fn (e d!)
                              d! $ app.schema/LocalOp :states
                                decode-map-as cursor $ List respo.schema/CoordKey
                                assoc state :draft $ respo.core/event-value e
                        =< nil 8
                        div
                          {} $ :style ui/row-parted
                          span $ {}
                          button $ {} (:style ui/button) (:inner-text |Submit)
                            :on-click $ fn (e d!)
                              d! $ app.schema/RemoteOp :mood/create-one $ decode-map-as
                                {}
                                  :text $ app.schema/read-field state :draft
                                  :emotion-id $ app.schema/read-field state :emotion-id
                                Map Tag Dynamic
                              d! $ app.schema/LocalOp :states
                                decode-map-as cursor $ List respo.schema/CoordKey
                                -> state (assoc :show-editor? false) (assoc :draft ||)
                  decode-map-as (app.schema/read-field state :show-editor?) 'Bool
                  fn (d!)
                    d! $ app.schema/LocalOp :states
                      decode-map-as cursor $ List respo.schema/CoordKey
                      assoc state :show-editor? false
          :examples $ []
          :schema $ quote $ Fn Dynamic Dynamic (-> Dynamic)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.dashboard
          :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo.comp.space :refer $ =<
            respo.core :refer $ defcomp <> list-> span div input a button textarea pre
            app.config :as config
            app.comp.emotions :refer $ comp-emotion
            app.comp.kit :refer $ comp-title
            feather.core :refer $ comp-i
            respo-alerts.core :refer $ comp-modal
    'app.comp.emotion-form $ %{} 'FileEntry
      :defs $ {}
        'comp-color-picker $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-color-picker (on-pick)
            keyed-> ({})
              -> default-colors $ map $ fn (color)
                keyed-element color $ div $ {}
                  :style $ let
                      size 24
                    {} (:background-color color) (:height size) (:width size) (:border-radius |6px) (:display :inline-block) (:margin "|0 8px 8px 0") (:cursor :pointer)
                  :on-click $ fn (e d!)
                    hint-fn $ Fn respo.schema/RespoEvent
                      Fn schema/LocalOp $ -> Unit
                      -> Unit
                    d! $ on-pick color
                    , &unit
          :examples $ []
          :schema $ quote $ Fn
            Fn String $ -> schema/LocalOp
            -> respo.schema/Component
        'comp-emotion-form $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-emotion-form (states data)
            let
                cursor $ app.schema/read-field states :cursor
                form $ .unwrap-or (app.schema/lookup-field states :data) (or data schema/emotion)
                editing? $ .some? $ app.schema/lookup-field form :id
                delete-plugin $ use-confirm (>> states :delete)
                  {} $ :text "|Sure to delete?"
              div
                {} $ :style $ {} (:padding "|8px 16px")
                div ({}) (comp-title "|Emotion details")
                space-y 16
                comp-field |Name $ input $ {} (:style ui/input)
                  :value $ app.schema/read-field form :text
                  :on-input $ fn (e d!)
                    d! $ app.schema/LocalOp :states
                      decode-map-as cursor $ List respo.schema/CoordKey
                      assoc form :text $ respo.core/event-value e
                comp-field |Score $ input $ {} (:style ui/input)
                  :value $ app.schema/read-field form :score
                  :type |number
                  :on-input $ fn (e d!)
                    d! $ app.schema/LocalOp :states
                      decode-map-as cursor $ List respo.schema/CoordKey
                      assoc form :score $ respo.core/event-value e
                comp-field |Color $ div
                  {} $ :style ui/column
                  input $ {}
                    :style $ merge ui/input $ {} (:font-family ui/font-code)
                    :value $ app.schema/read-field form :color
                    :on-input $ fn (e d!)
                      d! $ app.schema/LocalOp :states
                        decode-map-as cursor $ List respo.schema/CoordKey
                        assoc form :color $ respo.core/event-value e
                  space-y 8
                  comp-color-picker $ fn (color)
                    app.schema/LocalOp :states
                      decode-map-as cursor $ List respo.schema/CoordKey
                      assoc form :color color
                space-y 16
                div
                  {} $ :style ui/row-parted
                  span $ {}
                  span ({})
                    if editing?
                      Some $ button $ {}
                        :style $ merge ui/button $ {} (:color :white)
                          :background-color $ hsl 10 50 70
                          :border $ hsl 10 50 60
                        :inner-text |Delete
                        :on-click $ fn (e d!)
                          .show delete-plugin
                            fn (op)
                              hint-fn $ Fn AnyEnum $ -> Unit
                              d! op
                              , &unit
                            fn ()
                              hint-fn $ Fn $ -> Unit
                              d! $ app.schema/RemoteOp :router/change $ decode-map-as
                                {} $ :name :emotions
                                Map Tag Dynamic
                              d! $ app.schema/RemoteOp :emotion/remove-one $ decode-map-as (app.schema/read-field form :id) 'String
                              , &unit
                      , None
                    if editing?
                      Some $ space-x 8
                      , None
                    button $ {} (:style ui/button)
                      :on-click $ fn (e d!)
                        d! $ app.schema/RemoteOp :emotion/create-one $ decode-map-as form (Map Tag Dynamic)
                        d! $ app.schema/LocalOp :states
                          decode-map-as cursor $ List respo.schema/CoordKey
                          , nil
                        d! $ app.schema/RemoteOp :router/change $ decode-map-as
                          {} $ :name :emotions
                          Map Tag Dynamic
                      :inner-text $ if editing? |Save |Create
                .render delete-plugin
          :examples $ []
          :schema $ quote $ Fn Dynamic Dynamic (-> respo.schema/Component)
        'default-colors $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def default-colors
            [] |#ff9e96 |#e7e5e5 |#baf9c2 |#c6ded2 |#5facf6 |#c390e8 |#ffdd57 |#f79800 |#cf0027
          :examples $ []
          :schema $ quote $ List String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.emotion-form
          :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo.comp.space :refer $ space-x space-y
            respo.core :refer $ defcomp <> >> keyed-> keyed-element span div button input
            app.config :as config
            app.schema :as schema
            respo-alerts.core :refer $ use-confirm
            app.comp.kit :refer $ comp-field comp-title
    'app.comp.emotions $ %{} 'FileEntry
      :defs $ {}
        'comp-emotion $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-emotion (emotion on-click!)
            div
              let
                  props $ app.schema/as-style $ {}
                    :style $ merge ui/center $ {}
                      :background-color $ .unwrap-or (app.schema/lookup-field emotion :color) :transparent
                      :display :inline-flex
                      :padding "|0 16px"
                      :line-height |24px
                      :height |24px
                      :margin "|0 8px 8px 0"
                      :border-radius |8px
                      :color :white
                match on-click!
                  (:some handler) (assoc props :on-click handler)
                  (:none) props
              let
                  text $ app.schema/lookup-field emotion :text
                match text
                  (:none)
                    span $ {} (:inner-text nil) (:style nil)
                  (:some value)
                    <> $ decode-map-as value 'String
          :examples $ []
          :schema $ quote $ Fn Dynamic
            Option $ Fn respo.schema/RespoEvent
              Fn app.schema/UiOp $ -> Unit
              -> Unit
            -> respo.schema/Component
        'comp-emotions-manager $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-emotions-manager (emotions)
            div
              {} $ :style $ {} (:padding "|8px 16px")
              div
                {} $ :style ui/row-middle
                <> |Emotions $ {} (:font-family ui/font-fancy) (:font-size 24)
                =< 8 nil
                a
                  {}
                    :on-click $ fn (e d!)
                      d! $ app.schema/RemoteOp :router/change $ decode-map-as
                        {} (:name :edit-emotion) (:data nil)
                        Map Tag Dynamic
                    :style $ {} $ :font-size 16
                  comp-i :plus 16 $ hsl 200 80 80
              =< nil 16
              div ({})
                list-> ({})
                  -> (app.schema/as-map emotions) (.to-list)
                    .map-pair $ fn (k emotion)
                      [] k $ comp-emotion emotion $ Some
                        fn (e d!)
                          d! $ app.schema/RemoteOp :router/change $ decode-map-as
                            {} (:name :edit-emotion)
                              :data $ app.schema/read-field emotion :id
                            Map Tag Dynamic
              =< nil 32
          :examples $ []
          :schema $ quote $ Fn Dynamic (-> respo.schema/Component)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.emotions
          :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo.comp.space :refer $ =<
            respo.core :refer $ defcomp <> list-> span div button a
            app.config :as config
            feather.core :refer $ comp-i
    'app.comp.history $ %{} 'FileEntry
      :defs $ {}
        'comp-history $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-history (states moods emotions)
            div
              {} $ :style $ merge ui/flex ui/column
                {} $ :overflow :auto
              div
                {} $ :style $ {} (:margin "|8px 0") (:padding "|8px 16px")
                comp-title |History
              keyed->
                {} $ :style $ merge ui/flex
                  {} (:width |100%) (:padding "|8px 16px")
                -> moods map-entries
                  .sort-by $ fn (entry)
                    hint-fn $ Fn
                      MapEntry String $ Map Tag Dynamic
                      -> Number
                    negate $ decode-map-as
                      app.schema/read-field (:value entry) :time
                      , Number
                  .map $ fn (entry)
                    hint-fn $ Fn
                      MapEntry String $ Map Tag Dynamic
                      -> respo.schema/ChildPair
                    let
                        mood $ :value entry
                      keyed-component (:key entry)
                        comp-record
                          >> states $ decode-map-as (app.schema/read-field mood :id) String
                          , mood emotions
          :examples $ []
          :schema $ quote $ Fn respo.schema/States
            Map String $ Map Tag Dynamic
            Map String $ Map Tag Dynamic
            -> respo.schema/Component
        'comp-record $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-record (states mood emotions)
            let
                remove-plugin $ use-confirm (>> states :remove)
                  {} $ :text "|Sure to delete?"
              div
                {} (:class-name |)
                  :style $ merge ui/column $ {}
                    :border-bottom $ str "|1px solid " $ hsl 0 0 90
                    :padding "|8px 0"
                div
                  {} $ :style ui/row-parted
                  div
                    {} $ :style ui/row-middle
                    comp-emotion
                      .unwrap-or
                        .and-then (app.schema/lookup-field mood :emotion-id)
                          fn (id)
                            get emotions $ decode-map-as id String
                        {}
                      , None
                    comp-hint $ js-ffi.contract/expect-string |app.comp.history/comp-record $ ->
                      dayjs $ app.schema/read-field mood :time
                      .!format "|MM-DD HH:mm"
                  span
                    {} $ :on-click $ fn (e d!)
                      .show remove-plugin
                        fn (op)
                          hint-fn $ Fn AnyEnum $ -> Unit
                          d! op
                          , &unit
                        fn ()
                          hint-fn $ Fn $ -> Unit
                          d! $ app.schema/RemoteOp :mood/remove-one $ decode-map-as (app.schema/read-field mood :id) 'String
                          , &unit
                    comp-i :x 14 $ hsl 0 0 80
                div $ {}
                  :inner-text $ app.schema/read-field mood :text
                  :style $ merge ui/flex $ {} (:word-break :break-all)
          :examples $ []
          :schema $ quote $ Fn respo.schema/States (Map Tag Dynamic)
            Map String $ Map Tag Dynamic
            -> respo.schema/Component
            :features :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.history
          :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo.comp.space :refer $ =<
            respo.core :refer $ defcomp >> <> keyed-> keyed-component span div a
            app.config :as config
            app.comp.kit :refer $ comp-title
            app.comp.emotions :refer $ comp-emotion
            |dayjs :default dayjs
            app.comp.kit :refer $ comp-hint
            feather.core :refer $ comp-icon comp-i
            respo-alerts.core :refer $ use-confirm
    'app.comp.kit $ %{} 'FileEntry
      :defs $ {}
        'comp-field $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-field (label child)
            div
              {} $ :style $ merge ui/row
                {} $ :margin-bottom 16
              div
                {} $ :style $ {} (:width 64)
                <> label
              , child
          :examples $ []
          :schema $ quote $ Fn String respo.schema/NodeValue (-> respo.schema/Component)
        'comp-hint $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-hint (text)
            <> text $ {} $ :color (hsl 0 0 80)
          :examples $ []
          :schema $ quote $ Fn String (-> respo.schema/Component)
        'comp-title $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-title (text)
            <> text $ {} (:font-family ui/font-fancy) (:font-size 24)
              :color $ hsl 0 0 60
          :examples $ []
          :schema $ quote $ Fn String (-> respo.schema/Component)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.kit
          :require
            respo-ui.core :refer $ hsl
            app.schema :as schema
            respo-ui.core :as ui
            respo.core :refer $ defcomp list-> <> span div button
            respo.comp.space :refer $ =<
            app.config :as config
    'app.comp.login $ %{} 'FileEntry
      :defs $ {}
        'comp-login $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-login (states)
            let
                cursor $ decode-map-as (app.schema/read-field states :cursor) (List respo.schema/CoordKey)
                state $ decode-map-as
                  .unwrap-or (app.schema/lookup-field states :data) initial-state
                  Map Tag String
                username $ .unwrap $ get state :username
                password $ .unwrap $ get state :password
              div
                {} $ :style $ merge ui/flex ui/center
                div ({})
                  div
                    {} $ :style $ {}
                    div ({})
                      input $ {} (:placeholder |Username) (:value username) (:style ui/input)
                        :on-input $ fn (e d!)
                          d! $ app.schema/LocalOp :states cursor $ assoc state :username (respo.core/event-value e)
                    =< nil 8
                    div ({})
                      input $ {} (:placeholder |Password) (:value password) (:style ui/input)
                        :on-input $ fn (e d!)
                          d! $ app.schema/LocalOp :states cursor $ assoc state :password (respo.core/event-value e)
                  =< nil 8
                  div
                    {} $ :style $ {} (:text-align :right)
                    span $ {} (:inner-text "|Sign up")
                      :style $ merge ui/link
                      :on-click $ on-submit username password true
                    =< 8 nil
                    span $ {} (:inner-text "|Log in")
                      :style $ merge ui/link
                      :on-click $ on-submit username password false
          :examples $ []
          :schema $ quote $ Fn (Map Tag Dynamic) (-> respo.schema/Component)
        'initial-state $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def initial-state
            {} (:username |) (:password |)
          :examples $ []
          :schema $ quote $ Map Tag String
        'on-submit $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-submit (username password signup?)
            fn (e dispatch!)
              hint-fn $ Fn respo.schema/RespoEvent
                Fn schema/UiOp $ -> Unit
                -> Unit
                :features :js-ffi
              dispatch! $ if signup?
                app.schema/RemoteOp :user/sign-up $ app.schema/Credentials :username username :password password
                app.schema/RemoteOp :user/log-in $ app.schema/Credentials :username username :password password
              js/localStorage.setItem
                decode-map-as
                  .unwrap $ get config/site :storage-key
                  , 'String
                format-cirru-edn $ [] username password
              , &unit
          :examples $ []
          :schema $ quote $ Fn String String Bool
            -> $ Fn respo.schema/RespoEvent
              Fn schema/UiOp $ -> Unit
              -> Unit
              :features :js-ffi
            :features :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.login
          :require
            respo.core :refer $ defcomp <> div input button span
            respo.comp.space :refer $ =<
            respo.comp.inspect :refer $ comp-inspect
            respo-ui.core :as ui
            app.schema :as schema
            app.config :as config
    'app.comp.navigation $ %{} 'FileEntry
      :defs $ {} $ 'comp-navigation
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-navigation (logged-in? count-members)
            div
              {} $ :style $ merge ui/row-center
                {} (:height 48) (:justify-content :space-between) (:padding "|0 16px") (:font-size 16)
                  :border-bottom $ str "|1px solid " $ hsl 0 0 0
                  :font-family ui/font-fancy
              div
                {}
                  :on-click $ fn (e d!)
                    d! $ app.schema/RemoteOp :router/change $ decode-map-as
                      {} $ :name :home
                      Map Tag Dynamic
                  :style $ {} $ :cursor :pointer
                <> $ decode-map-as (app.schema/read-field config/site :title) 'String
              div
                {}
                  :style $ {} $ :cursor |pointer
                  :on-click $ fn (e d!)
                    d! $ app.schema/RemoteOp :router/change $ decode-map-as
                      {} $ :name :profile
                      Map Tag Dynamic
                <> $ if logged-in? |Me |Guest
                =< 8 nil
                <> $ str count-members
          :examples $ []
          :schema $ quote $ Fn Bool Number (-> respo.schema/Component)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.navigation
          :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo.comp.space :refer $ =<
            respo.core :refer $ defcomp <> span div
            app.config :as config
    'app.comp.profile $ %{} 'FileEntry
      :defs $ {} $ 'comp-profile
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-profile (user members)
            div
              {} $ :style $ merge ui/flex
                {} $ :padding 16
              div
                {} $ :style $ {} (:font-family ui/font-fancy) (:font-size 32) (:font-weight 100)
                <> $ str "|Hello! " $ app.schema/read-field user :name
              =< nil 16
              div
                {} $ :style ui/row
                <> |Members:
                =< 8 nil
                list->
                  {} $ :style ui/row
                  ->
                    decode-map-as members $ Map Dynamic Dynamic
                    .to-list
                    .map-pair $ fn (k username)
                      [] k $ div
                        {} $ :style $ {} (:padding "|0 8px")
                          :border $ str "|1px solid " $ hsl 0 0 80
                          :border-radius |16px
                          :margin "|0 4px"
                        if (nil? username)
                          span $ {} (:inner-text nil) (:style nil)
                          <> $ decode-map-as username 'String
              =< nil 48
              div ({})
                button
                  {}
                    :style $ merge ui/button
                    :on-click $ fn (e d!)
                      .replace js/location $ str js/location.origin |?time= $ .now js/Date
                  <> |Refresh
                =< 16 nil
                button
                  {}
                    :style $ merge ui/button $ {} (:color :red) (:border-color :red)
                    :on-click $ fn (e dispatch!)
                      dispatch! $ app.schema/RemoteOp :user/log-out
                      js/localStorage.removeItem $ decode-map-as
                        .unwrap $ get config/site :storage-key
                        , 'String
                  <> "|Log out"
          :examples $ []
          :schema $ quote $ Fn Dynamic Dynamic (-> Dynamic) (:features :js-ffi)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.profile
          :require
            respo-ui.core :refer $ hsl
            app.schema :as schema
            respo-ui.core :as ui
            respo.core :refer $ defcomp list-> <> span div button
            respo.comp.space :refer $ =<
            app.config :as config
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $ -> (get-env |mode) (.unwrap-or |release)
          :examples $ []
          :schema $ quote Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            {} (:port 11011) (:title |Pumila) (:icon |http://cdn-tc.tiye.me/logo/pumila.png) (:storage-key |pumila) (:storage-file |storage.cirru) (:theme |#6EBAEE)
          :examples $ []
          :schema $ quote Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'ConnectionOp $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum ConnectionOp (:session/connect) (:session/disconnect)
          :examples $ []
          :schema $ quote EnumDef
        'Credentials $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Credentials (:username String) (:password String)
          :examples $ []
          :schema $ quote StructDef
        'LocalOp $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum LocalOp
            :states (List respo.schema/CoordKey) Dynamic
            :effect/connect
          :examples $ []
          :schema $ quote EnumDef
        'RemoteOp $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum RemoteOp (:session/remove-message String) (:user/log-in app.schema/Credentials) (:user/sign-up app.schema/Credentials) (:user/log-out)
            :router/change $ Map Tag Dynamic
            :emotion/create-one $ Map Tag Dynamic
            :emotion/remove-one String
            :mood/create-one $ Map Tag Dynamic
            :mood/remove-one String
          :examples $ []
          :schema $ quote EnumDef
        'ScoreInput $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defunion ScoreInput Number String
          :examples $ []
          :schema $ quote UnionDef
        'ServerOp $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defunion ServerOp app.schema/RemoteOp app.schema/ConnectionOp
          :examples $ []
          :schema $ quote UnionDef
        'UiOp $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defunion UiOp app.schema/LocalOp app.schema/RemoteOp
          :examples $ []
          :schema $ quote UnionDef
        'ViewDispatch $ %{} 'CodeEntry
          :doc "|Respo dispatch slot at the Alerts 0.14.2 boundary. App-owned operations are nominal; Alerts still emits anonymous :states."
          :code $ quote $ def ViewDispatch
            :: :states ([]) nil
          :examples $ []
          :schema $ quote AnyEnum
        'apply-server-patch $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn apply-server-patch (store changes)
            let
                patched $ match store
                  (:some previous) (recollect.patch/patch-twig previous changes)
                  (:none) (recollect.patch/patch-twig nil changes)
              if (nil? patched) None $ Some $ decode-map-as patched (Map Tag Dynamic)
          :examples $ []
          :schema $ quote $ Fn
            Option $ Map Tag Dynamic
            List recollect.schema/change-op
            -> $ Option $ Map Tag Dynamic
        'as-map $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn as-map (value)
            decode-map-as value $ Map Dynamic Dynamic
          :examples $ []
          :schema $ quote $ Fn Input
            -> $ Map Dynamic Dynamic
            :generics Input
        'as-map-option $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn as-map-option (value)
            decode-map-as value $ Option $ Map Tag Dynamic
          :examples $ []
          :schema $ quote $ Fn Input
            -> $ Option $ Map Tag Dynamic
            :generics Input
        'as-score $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn as-score (value)
            match (try-decode-map-as value app.schema/ScoreInput)
              (:ok input)
                match input
                  (Number score) score
                  (String text)
                    match (parse-float text)
                      (:ok score) score
                      (:err message)
                        raise $ str "|Invalid emotion score: " message
              (:err _) (raise "|Emotion score must be Number or numeric String")
          :examples $ []
          :schema $ quote $ Fn T (-> Number) (:generics T)
          :tests $ [] $ %{} 'TestEntry (:name |legacy-score-boundary)
            :code $ quote $ do
              assert= 0 $ as-score 0
              assert= 12.5 $ as-score |12.5
              assert= true $ try
                do (as-score |) false
                fn (message) true
              assert= true $ try
                do (as-score |not-a-score) false
                fn (message) true
        'as-string-map $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn as-string-map (value)
            decode-map-as value $ Map String Dynamic
          :examples $ []
          :schema $ quote $ Fn Input
            -> $ Map String Dynamic
            :generics Input
        'as-style $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn as-style (value)
            decode-map-as value $ Map Tag Dynamic
          :examples $ []
          :schema $ quote $ Fn Input
            -> $ Map Tag Dynamic
            :generics Input
        'database $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def database
            {}
              :sessions $ do session $ {}
              :users $ do user $ {}
          :examples $ []
          :schema $ quote $ Map Tag Dynamic
        'decode-credentials $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-credentials (raw)
            let
                items $ decode-map-as raw $ List Dynamic
              Credentials :username
                decode-map-as
                  .unwrap $ nth items 0
                  , 'String
                , :password $ decode-map-as
                  .unwrap $ nth items 1
                  , 'String
          :examples $ []
          :schema $ quote $ Fn Input (-> Credentials) (:generics Input)
        'decode-server-op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-server-op (message)
            match message
              (:session/connect) (app.schema/ConnectionOp :session/connect)
              (:session/disconnect) (app.schema/ConnectionOp :session/disconnect)
              (:session/remove-message value)
                app.schema/RemoteOp :session/remove-message $ decode-map-as
                  read-field
                    decode-map-as value $ Map Tag Dynamic
                    , :id
                  , 'String
              (:user/log-in value)
                app.schema/RemoteOp :user/log-in $ decode-credentials value
              (:user/sign-up value)
                app.schema/RemoteOp :user/sign-up $ decode-credentials value
              (:user/log-out _) (app.schema/RemoteOp :user/log-out)
              (:router/change value)
                app.schema/RemoteOp :router/change $ decode-map-as value $ Map Tag Dynamic
              (:emotion/create-one value)
                app.schema/RemoteOp :emotion/create-one $ decode-map-as value $ Map Tag Dynamic
              (:emotion/remove-one value)
                app.schema/RemoteOp :emotion/remove-one $ decode-map-as value 'String
              (:mood/create-one value)
                app.schema/RemoteOp :mood/create-one $ decode-map-as value $ Map Tag Dynamic
              (:mood/remove-one value)
                app.schema/RemoteOp :mood/remove-one $ decode-map-as value 'String
              _ $ raise "|Unknown Pumila wire operation"
          :examples $ []
          :schema $ quote $ Fn AnyEnum (-> ServerOp) (:open :reflect)
        'edit-route-data $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn edit-route-data (router)
            match (lookup-field router :data)
              (:none) emotion
              (:some raw)
                if (enum? raw)
                  match raw
                    (:some value)
                      decode-map-as value $ Map Tag Dynamic
                    (:none) emotion
                    _ $ raise "|Invalid edit-route data"
                  decode-map-as raw $ Map Tag Dynamic
          :examples $ []
          :schema $ quote $ Fn Dynamic
            -> $ Map Tag Dynamic
        'emotion $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def emotion
            {} (:id nil) (:text |) (:score 0)
              :color $ hsl 0 0 90
          :examples $ []
          :schema $ quote $ Map Tag Dynamic
        'lookup-field $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn lookup-field (value field)
            .and-then (get value field) nil->option
          :examples $ []
          :schema $ quote $ Fn Dynamic Tag
            -> $ Option Dynamic
        'lookup-path $ %{} 'CodeEntry
          :doc "|Retain the legacy wire Option for edit routes and distinguish missing data from a malformed path."
          :code $ quote $ defn lookup-path (value path)
            match (get-in value path)
              (:ok item) (Some item)
              (:err error)
                match error
                  (:missing) None
                  (:shape message) (raise message)
          :examples $ []
          :schema $ quote $ Fn Dynamic (List Dynamic)
            -> $ Option Dynamic
        'mood $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def mood
            {} (:id nil) (:emotion-id nil) (:text |) (:time nil)
          :examples $ []
          :schema $ quote $ Map Tag Dynamic
        'notification $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def notification
            {} (:id nil) (:kind nil) (:text nil)
          :examples $ []
          :schema $ quote Dynamic
        'read-field $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-field (value field)
            .unwrap $ lookup-field value field
          :examples $ []
          :schema $ quote $ Fn Dynamic Tag (-> Dynamic)
        'remote-op-to-wire $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn remote-op-to-wire (op)
            match op
              (:session/remove-message id)
                :: :session/remove-message $ {} $ :id id
              (:user/log-in credentials)
                :: :user/log-in $ [] (:username credentials) (:password credentials)
              (:user/sign-up credentials)
                :: :user/sign-up $ [] (:username credentials) (:password credentials)
              (:user/log-out) (:: :user/log-out nil)
              (:router/change value) (:: :router/change value)
              (:emotion/create-one value) (:: :emotion/create-one value)
              (:emotion/remove-one value) (:: :emotion/remove-one value)
              (:mood/create-one value) (:: :mood/create-one value)
              (:mood/remove-one value) (:: :mood/remove-one value)
          :examples $ []
          :schema $ quote $ Fn RemoteOp (-> AnyEnum) (:open :reflect)
        'router $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def router
            {} (:name nil) (:title nil)
              :data $ {}
              :router nil
          :examples $ []
          :schema $ quote Dynamic
        'session $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def session
            {} (:user-id nil) (:id nil) (:nickname nil)
              :router $ do router $ {} (:name :home) (:data nil) (:router nil)
              :messages $ {}
          :examples $ []
          :schema $ quote $ Map Tag Dynamic
        'user $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def user
            {} (:name nil) (:id nil) (:nickname nil) (:avatar nil) (:password nil)
              :moods $ do mood $ {}
              :emotions $ do emotion $ {}
          :examples $ []
          :schema $ quote $ Map Tag Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
          :require $ respo.util.format :refer $ hsl
    'app.server $ %{} 'FileEntry
      :defs $ {}
        '*client-caches $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *client-caches ({})
          :examples $ []
          :schema $ quote $ Ref
            Map Number $ Map Tag Dynamic
        '*initial-db $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *initial-db
            if
              path-exists? $ dbg storage-file
              do (println "|Found local EDN data")
                merge schema/database $ parse-database $ read-file storage-file
              do (println "|Found no data") schema/database
          :examples $ []
          :schema $ quote $ Ref (Map Tag Dynamic)
        '*reader-reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *reader-reel @*reel
          :examples $ []
          :schema $ quote $ Ref
            cumulo-reel.core/ReelState $ Map Tag Dynamic
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *reel
            cumulo-reel.core/ReelState :base @*initial-db :db @*initial-db :records ([]) :merged? false
          :examples $ []
          :schema $ quote $ Ref
            cumulo-reel.core/ReelState $ Map Tag Dynamic
        'as-change-list $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn as-change-list (value) (recollect.schema/decode-changes value)
          :examples $ []
          :schema $ quote $ Fn Dynamic
            -> $ List recollect.schema/change-op
          :tests $ [] $ %{} 'TestEntry (:name |wire-patch-roundtrip)
            :code $ quote $ let
                before $ {} (:count 1)
                  :nested $ {} $ :text |before
                after $ {} (:count 2)
                  :nested $ {} $ :text |after
                  :extra |kept
                changes $ as-change-list $ diff-twig before after
                  {} $ :key :id
                wire $ format-cirru-edn $ :: :patch changes
                initial $ as-change-list $ diff-twig nil before
                  {} $ :key :id
                initial-wire $ format-cirru-edn $ :: :patch initial
              match (parse-cirru-edn initial-wire)
                (:patch raw)
                  assert= (Some before)
                    app.schema/apply-server-patch None $ as-change-list raw
                _ $ raise "|Expected initial patch wire message"
              match (parse-cirru-edn wire)
                (:patch raw)
                  assert= (Some after)
                    app.schema/apply-server-patch (Some before) (as-change-list raw)
                _ $ raise "|Expected patch wire message"
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op sid)
            let
                op-id $ to-string $ generate-id!
                op-time $ calcit.std.date/get-timestamp $ get-time!
              if config/dev? $ println |Dispatch!
                match op
                  (app.schema/ConnectionOp event) (nth event 0)
                  (app.schema/RemoteOp action) (nth action 0)
                , sid
              reset! *reel $ reel-reducer @*reel updater op sid op-id op-time config/dev?
              , &unit
          :examples $ []
          :schema $ quote $ Fn schema/ServerOp Number (-> Unit) (:features :io :state)
        'get-backup-path! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn get-backup-path! ()
            let
                now $ calcit.std.date/extract-time $ get-time!
              join-path calcit-dirname |backups
                str $ app.schema/read-field now :month
                str (app.schema/read-field now :day) |-snapshot.cirru
          :examples $ []
          :schema $ quote $ Fn (-> String)
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            let
                p? $ get-env |port
                port $ .fold p?
                  fn () $ .unwrap-or
                    decode-map-as (get config/site :port) (Option Number)
                    , 11011
                  fn (raw)
                    (parse-float raw) .unwrap-or $ .unwrap-or
                      decode-map-as (get config/site :port) (Option Number)
                      , 11011
              run-server! port
              println $ str "|Server started on port:" port
            ; "|init it before doing multi-threading"
            identity @*reader-reel
            set-interval 200 $ fn () (render-loop!) &unit
            set-interval 600000 $ fn () (persist-db!) &unit
            on-control-c on-exit!
          :examples $ []
          :schema $ quote $ Fn (-> Dynamic) (:features :io :state)
        'on-exit! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-exit! () (persist-db!) (; println "|exit code is...") (quit! 0)
          :examples $ []
          :schema $ quote $ Fn (-> Dynamic) (:features :io :state)
        'parse-database $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn parse-database (content)
            decode-map-as (parse-cirru-edn content) (Map Tag Dynamic)
          :examples $ []
          :schema $ quote $ Fn String
            -> $ Map Tag Dynamic
        'persist-db! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-db! ()
            let
                file-content $ format-cirru-edn $ assoc (:db @*reel) :sessions ({})
                storage-path storage-file
                backup-path $ get-backup-path!
              check-write-file! storage-path file-content
              check-write-file! backup-path file-content
          :examples $ []
          :schema $ quote $ Fn (-> Dynamic) (:features :js-ffi :state)
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! () (println "|Code updated..")
            if (not config/dev?) (raise "|reloading only happens in dev mode")
            clear-twig-caches!
            reset! *reader-reel @*reel
            sync-clients! @*reader-reel
          :examples $ []
          :schema $ quote $ Fn (-> Dynamic) (:features :io :state)
        'render-loop! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-loop! ()
            when
              not $ identical? @*reader-reel @*reel
              reset! *reader-reel @*reel
              sync-clients! @*reader-reel
          :examples $ []
          :schema $ quote $ Fn (-> Dynamic) (:features :state)
        'run-server! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn run-server! (port)
            wss-serve! (&{} :port port)
              fn (data)
                match data
                  (:connect sid)
                    do
                      dispatch! (app.schema/ConnectionOp :session/connect) sid
                      println "|New client."
                  (:message sid msg)
                    let
                        op $ parse-cirru-edn msg
                      if (enum? op)
                        dispatch! (schema/decode-server-op op) sid
                        raise "|Expected an operation Enum"
                  (:disconnect sid)
                    do (println "|Client closed!")
                      dispatch! (app.schema/ConnectionOp :session/disconnect) sid
                  _ $ println "|unknown data:" data
                , &unit
          :examples $ []
          :schema $ quote $ Fn Number (-> Dynamic) (:features :io :state)
        'storage-file $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def storage-file
            if (empty? calcit-dirname)
              str calcit-dirname $ .unwrap-or (get config/site :storage-file) |storage.cirru
              str calcit-dirname |/ $ .unwrap-or (get config/site :storage-file) |storage.cirru
          :examples $ []
          :schema $ quote String
        'sync-clients! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn sync-clients! (reel)
            wss-each! $ fn (sid)
              let
                  db $ :db reel
                  reel-length $ .len $ :records reel
                  session $
                    get-in db $ [] :sessions sid
                    , .unwrap-or schema/session
                  new-store $ twig-container db session reel-length
                  changes $ match (get @*client-caches sid)
                    (:some old-store)
                      diff-twig old-store new-store $ {} $ :key :id
                    (:none)
                      diff-twig nil new-store $ {} $ :key :id
                ; when config/dev? $ println "|Changes for" sid |: changes reel-length
                if
                  not $ empty? changes
                  do
                    wss-send! sid $ format-cirru-edn $ :: :patch changes
                    swap! *client-caches assoc sid new-store
              , &unit
          :examples $ []
          :schema $ quote $ Fn
            cumulo-reel.core/ReelState $ Map Tag Dynamic
            -> Dynamic
            :features :state
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.server
          :require (app.schema :as schema)
            app.updater :refer $ updater
            cumulo-reel.core :refer $ reel-reducer refresh-reel
            app.config :as config
            app.twig.container :refer $ twig-container
            recollect.diff :refer $ diff-twig
            wss.core :refer $ wss-serve! wss-send! wss-each!
            recollect.twig :refer $ clear-twig-caches!
            app.$meta :refer $ calcit-dirname
            calcit.std.fs :refer $ path-exists? check-write-file!
            calcit.std.time :refer $ set-interval
            calcit.std.date :refer $ Date get-time!
            calcit.std.path :refer $ join-path
    'app.style $ %{} 'FileEntry
      :defs $ {} $ 'link
        %{} 'CodeEntry (:doc |)
          :code $ quote $ def link
            {} (:text-decoration :underline) (:cursor :pointer)
              :color $ hsl 240 80 80
              :font-family ui/font-fancy
          :examples $ []
          :schema $ quote Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.style
          :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
    'app.twig.container $ %{} 'FileEntry
      :defs $ {}
        'twig-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn twig-container (db session reel-length)
            let
                logged-in? $ .some? $ app.schema/lookup-field session :user-id
                router $ .unwrap-or (app.schema/lookup-field session :router) ({})
                base-data $ {} (:logged-in? logged-in?) (:session session) (:reel-length reel-length)
              merge base-data $ app.schema/as-style $ if logged-in?
                let
                    user $ ->
                      get-in db $ [] :users $ app.schema/read-field session :user-id
                      .unwrap-or $ {}
                  {}
                    :user $ twig-user user
                    :router $ match
                      .unwrap-or (app.schema/lookup-field router :name) :unknown
                      :home $ assoc router :data $ {}
                        :emotions $ app.schema/read-field user :emotions
                        :moods $ ->
                          app.schema/as-map $ app.schema/read-field user :moods
                          .to-list
                          .sort-by $ fn (pair)
                            negate $ decode-map-as
                              app.schema/read-field
                                .unwrap $ last pair
                                , :time
                              , 'Number
                          take 8
                          .pairs-map
                      :history $ assoc router :data $ {}
                        :emotions $ app.schema/read-field user :emotions
                        :moods $ app.schema/read-field user :moods
                      :emotions $ assoc router :data $ app.schema/read-field user :emotions
                      :edit-emotion $ if
                        .none? $ app.schema/lookup-field router :data
                        assoc router :data nil
                        assoc router :data $ app.schema/lookup-path user $ [] :emotions (app.schema/read-field router :data)
                      :profile $ assoc router :data $ twig-members
                        decode-map-as (app.schema/read-field db :sessions) (Map Number Dynamic)
                        decode-map-as (app.schema/read-field db :users) (Map String Dynamic)
                      _ $ assoc router :data $ {}
                    :count $ .len $ decode-map-as (app.schema/read-field db :sessions) (Map Number Dynamic)
                    :color $ rand-hex-color!
                {}
          :examples $ []
          :schema $ quote $ Fn (Map Tag Dynamic) Dynamic Number
            -> $ Map Tag Dynamic
        'twig-members $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn twig-members (sessions users)
            -> sessions $ filter-map-kv $ fn (k session)
              match
                .and-then (app.schema/lookup-field session :user-id)
                  fn (id)
                    app.schema/lookup-path users $ [] id :name
                (:some name) (MapEntryDecision :keep k name)
                (:none) (MapEntryDecision :keep k nil)
          :examples $ []
          :schema $ quote $ Fn (Map Number Dynamic) (Map String Dynamic)
            -> $ Map Number Dynamic
          :tests $ [] $ %{} 'TestEntry (:name |number-session-keys-with-guest)
            :code $ quote $ assert=
              {} (1 |Alice) (2 nil)
              twig-members
                {}
                  1 $ {} $ :user-id |u
                  2 $ {} $ :user-id nil
                {} $ |u $ {} (:name |Alice)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.twig.container
          :require
            app.twig.user :refer $ twig-user
            calcit.std.rand :refer $ rand-hex-color!
    'app.twig.user $ %{} 'FileEntry
      :defs $ {} $ 'twig-user
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn twig-user (user)
            -> user (dissoc :password) (dissoc :moods) (dissoc :archived-moods)
          :examples $ []
          :schema $ quote $ Fn Dynamic (-> Dynamic)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.twig.user
          :require $ recollect.twig :refer $ deftwig
    'app.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (db op sid op-id op-time)
            match op
              (app.schema/ConnectionOp event)
                match event
                  (:session/connect) (session/connect db sid)
                  (:session/disconnect) (session/disconnect db sid)
              (app.schema/RemoteOp action)
                let
                    with-user $ fn (apply!)
                      hint-fn $ Fn
                        Fn String $ -> $ Map Tag Dynamic
                        -> $ Map Tag Dynamic
                      match
                        app.schema/lookup-path db $ [] :sessions sid :user-id
                        (:some raw-id)
                          match (data-view raw-id)
                            (:string id)
                              if
                                .some? $ app.schema/lookup-path db $ [] :users id
                                apply! id
                                , db
                            _ db
                        (:none) db
                  match action
                    (:session/remove-message id) (session/remove-message db id sid)
                    (:user/log-in op-data) (user/log-in db op-data sid op-id)
                    (:user/sign-up op-data) (user/sign-up db op-data sid op-id)
                    (:user/log-out) (user/log-out db sid)
                    (:router/change op-data) (router/change db op-data sid)
                    (:emotion/create-one op-data)
                      with-user $ fn (user-id) (emotion/create-one db op-data user-id op-id op-time)
                    (:emotion/remove-one op-data)
                      with-user $ fn (user-id) (emotion/remove-one db op-data user-id)
                    (:mood/create-one op-data)
                      with-user $ fn (user-id) (mood/create-one db op-data user-id op-id op-time)
                    (:mood/remove-one op-data)
                      with-user $ fn (user-id) (mood/remove-one db op-data user-id)
          :examples $ []
          :schema $ quote $ Fn (Map Tag Dynamic) schema/ServerOp Number String Number
            -> $ Map Tag Dynamic
          :tests $ []
            %{} 'TestEntry (:name |checked-create-metadata-and-open-fields)
              :code $ quote $ let
                  db $ {} (:extra |root-kept)
                    :sessions $ {} $ 1
                      {} $ :user-id |u
                    :users $ {} $ |u
                      {}
                        :emotions $ {}
                        :moods $ {}
                  emotion-op $ app.schema/decode-server-op $ :: :emotion/create-one
                    {} (:score |3) (:text |new) (:extra |entry-kept)
                  mood-op $ app.schema/decode-server-op $ :: :mood/create-one
                    {} (:text |mood) (:extra |mood-kept)
                  created $ updater db emotion-op 1 |e 100
                  logged $ updater db mood-op 1 |m 200
                assert= (Result :ok 3)
                  get-in created $ [] :users |u :emotions |e :score
                assert= (Result :ok |entry-kept)
                  get-in created $ [] :users |u :emotions |e :extra
                assert= (Some |root-kept) (get created :extra)
                assert=
                  Result :ok $ merge app.schema/mood $ {} (:id |m) (:time 200) (:text |mood) (:extra |mood-kept)
                  get-in logged $ [] :users |u :moods |m
            %{} 'TestEntry (:name |legacy-credentials-wire)
              :code $ quote $ let
                  credentials $ app.schema/Credentials :username |fixture-user :password |fixture-password
                  sign-up $ app.schema/remote-op-to-wire $ app.schema/RemoteOp :user/sign-up credentials
                  log-in $ app.schema/remote-op-to-wire $ app.schema/RemoteOp :user/log-in credentials
                  connect $ app.schema/ConnectionOp :session/connect
                  first-session $ updater app.schema/database connect 1 |connect-1 0
                  registered $ updater first-session (app.schema/decode-server-op sign-up) 1 |fixture-id 1
                  second-session $ updater registered connect 2 |connect-2 2
                  logged-in $ updater second-session (app.schema/decode-server-op log-in) 2 |login 3
                assert=
                  :: :user/sign-up $ [] |fixture-user |fixture-password
                  , sign-up
                assert=
                  :: :user/log-in $ [] |fixture-user |fixture-password
                  , log-in
                assert= (Result :ok |fixture-id)
                  get-in logged-in $ [] :sessions 2 :user-id
            %{} 'TestEntry (:name |legacy-dismiss-message-wire)
              :code $ quote $ let
                  db $ {} $ :sessions
                    {} $ 1 $ {}
                      :messages $ {} (|dismissed |old) (|kept |other)
                  wire $ :: :session/remove-message $ {} (:id |dismissed) (:index 0) (:time 100)
                  updated $ updater db (app.schema/decode-server-op wire) 1 |dismiss 101
                assert=
                  :: :session/remove-message $ {} $ :id |dismissed
                  app.schema/remote-op-to-wire $ app.schema/RemoteOp :session/remove-message |dismissed
                assert=
                  Result :ok $ {} $ |kept |other
                  get-in updated $ [] :sessions 1 :messages
            %{} 'TestEntry (:name |guest-entry-writes-leave-store-untouched)
              :code $ quote $ let
                  db $ updater app.schema/database (app.schema/ConnectionOp :session/connect) 42 |connect 0
                  draft $ {} (:text |guest-fixture) (:score 1)
                assert= db $ updater db (app.schema/RemoteOp :emotion/create-one draft) 42 |create 1
                assert= db $ updater db (app.schema/RemoteOp :emotion/remove-one |unknown) 42 |remove 2
                assert= db $ updater db (app.schema/RemoteOp :mood/create-one draft) 42 |create 3
                assert= db $ updater db (app.schema/RemoteOp :mood/remove-one |unknown) 42 |remove 4
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
          :require (app.updater.session :as session) (app.updater.user :as user) (app.updater.router :as router) (app.schema :as schema)
            respo-message.updater :refer $ update-messages
            app.updater.emotion :as emotion
            app.updater.mood :as mood
    'app.updater.emotion $ %{} 'FileEntry
      :defs $ {}
        'create-one $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn create-one (db op-data user-id op-id op-time)
            update-in db ([] :users user-id :emotions)
              fn (emotions-option)
                let
                    emotions $ .unwrap-or emotions-option $ {}
                  match (get op-data :id)
                    (:some id)
                      update emotions id $ fn (emotion-option)
                        let
                            emotion $ merge
                              .unwrap-or (app.schema/as-map-option emotion-option) (app.schema/as-style schema/emotion)
                              app.schema/as-style op-data
                          assoc emotion :score $ app.schema/as-score $ app.schema/read-field emotion :score
                    (:none)
                      assoc emotions op-id $ let
                          emotion $ merge (app.schema/as-style schema/emotion) (app.schema/as-style op-data)
                            {} $ :id op-id
                        assoc emotion :score $ app.schema/as-score $ app.schema/read-field emotion :score
          :examples $ []
          :schema $ quote $ Fn (Map Tag Dynamic) (Map Tag Dynamic) String String Number
            -> $ Map Tag Dynamic
          :tests $ [] $ %{} 'TestEntry (:name |legacy-score-partial-edit)
            :code $ quote $ let
                db $ {} (:extra |root-kept)
                  :sessions $ {} $ 1
                    {} $ :user-id |u
                  :users $ {} $ |u
                    {} $ :emotions $ {}
                      |e $ {} (:id |e) (:score |2.5) (:text |old) (:extra |entry-kept)
                edited $ create-one db
                  {} (:id |e) (:text |updated)
                  , |u |op 100
                created $ create-one db
                  {} (:score |3) (:text |new)
                  , |u |new 100
              assert=
                assoc-in db ([] :users |u :emotions |e)
                  {} (:id |e) (:score 2.5) (:text |updated) (:extra |entry-kept)
                , edited
              assert= (Result :ok 3)
                get-in created $ [] :users |u :emotions |new :score
              assert= |root-kept $ .unwrap $ get created :extra
        'remove-one $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn remove-one (db id user-id)
            update-in db ([] :users user-id :emotions)
              fn (emotions-option)
                dissoc
                  .unwrap-or emotions-option $ {}
                  , id
          :examples $ []
          :schema $ quote $ Fn (Map Tag Dynamic) String String
            -> $ Map Tag Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.emotion
          :require $ app.schema :as schema
    'app.updater.mood $ %{} 'FileEntry
      :defs $ {}
        'create-one $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn create-one (db op-data user-id op-id op-time)
            assoc-in db ([] :users user-id :moods op-id)
              merge (app.schema/as-style schema/mood) (app.schema/as-style op-data)
                {} (:id op-id) (:time op-time)
          :examples $ []
          :schema $ quote $ Fn (Map Tag Dynamic) (Map Tag Dynamic) String String Number
            -> $ Map Tag Dynamic
        'remove-one $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn remove-one (db id user-id)
            update-in db ([] :users user-id :moods)
              fn (moods-option)
                dissoc
                  .unwrap-or moods-option $ {}
                  , id
          :examples $ []
          :schema $ quote $ Fn (Map Tag Dynamic) String String
            -> $ Map Tag Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.mood
          :require $ app.schema :as schema
    'app.updater.router $ %{} 'FileEntry
      :defs $ {} $ 'change
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn change (db op-data sid)
            assoc-in db ([] :sessions sid :router) op-data
          :examples $ []
          :schema $ quote $ Fn (Map Tag Dynamic) (Map Tag Dynamic) Number
            -> $ Map Tag Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.router
    'app.updater.session $ %{} 'FileEntry
      :defs $ {}
        'connect $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn connect (db sid)
            assoc-in db ([] :sessions sid)
              merge schema/session $ {} $ :id sid
          :examples $ []
          :schema $ quote $ Fn (Map Tag Dynamic) Number
            -> $ Map Tag Dynamic
        'disconnect $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn disconnect (db sid)
            update db :sessions $ fn (session) (dissoc session sid)
          :examples $ []
          :schema $ quote $ Fn (Map Tag Dynamic) Number
            -> $ Map Tag Dynamic
        'remove-message $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn remove-message (db id sid)
            update-in db ([] :sessions sid :messages)
              fn (messages-option)
                dissoc
                  .unwrap-or messages-option $ {}
                  , id
          :examples $ []
          :schema $ quote $ Fn (Map Tag Dynamic) String Number
            -> $ Map Tag Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.session
          :require $ app.schema :as schema
    'app.updater.user $ %{} 'FileEntry
      :defs $ {}
        'log-in $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn log-in (db credentials sid op-id)
            let
                username $ :username credentials
                password $ :password credentials
                maybe-user $ ->
                  decode-map-as (app.schema/read-field db :users) (Map String Dynamic)
                  distinct-values
                  .to-list
                  find $ fn (user)
                    and $ = username $ app.schema/read-field user :name
              update-in db ([] :sessions sid)
                fn (session-option)
                  let
                      session $ .unwrap-or session-option schema/session
                    match maybe-user
                      (:some user)
                        if
                          = (md5 password) (app.schema/read-field user :password)
                          assoc session :user-id $ app.schema/read-field user :id
                          assoc session :messages $ assoc (app.schema/read-field session :messages) op-id $ {} (:id op-id)
                            :text $ str "|Wrong password for " username
                      (:none)
                        assoc session :messages $ assoc (app.schema/read-field session :messages) op-id $ {} (:id op-id)
                          :text $ str "|No user named: " username
          :examples $ []
          :schema $ quote $ Fn (Map Tag Dynamic) schema/Credentials Number String
            -> $ Map Tag Dynamic
        'log-out $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn log-out (db sid)
            assoc-in db ([] :sessions sid :user-id) nil
          :examples $ []
          :schema $ quote $ Fn (Map Tag Dynamic) Number
            -> $ Map Tag Dynamic
        'reset-mark $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reset-mark (db op-data sid op-id op-time)
            let
                user-id $ get-in db $ [] :sessions sid :user-id
              assoc-in db ([] :users user-id :history-mark) op-time
          :examples $ []
          :schema $ quote $ Fn (Map Dynamic Dynamic) Dynamic Dynamic Dynamic Dynamic
            -> $ Map Dynamic Dynamic
        'sign-up $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn sign-up (db credentials sid op-id)
            let
                username $ :username credentials
                password $ :password credentials
                maybe-user $ find
                  ->
                    decode-map-as (app.schema/read-field db :users) (Map String Dynamic)
                    , distinct-values .to-list
                  fn (user)
                    = username $ app.schema/read-field user :name
              match maybe-user
                (:some _user)
                  update-in db ([] :sessions sid :messages)
                    fn (messages-option)
                      assoc
                        .unwrap-or messages-option $ {}
                        , op-id $ {} (:id op-id)
                          :text $ str "|Name is taken: " username
                (:none)
                  -> db
                    assoc-in ([] :sessions sid :user-id) op-id
                    assoc-in ([] :users op-id)
                      merge schema/user $ {} (:id op-id) (:name username) (:nickname username)
                        :password $ md5 password
                        :avatar nil
          :examples $ []
          :schema $ quote $ Fn (Map Tag Dynamic) schema/Credentials Number String
            -> $ Map Tag Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.user
          :require
            calcit.std.hash :refer $ md5
            app.schema :as schema
    'app.util.dom $ %{} 'FileEntry
      :defs $ {}
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.util.dom
