
{} (:about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --full` first. Manual edits must follow format and schema conventions, then run `calcit edit format`.") (:package |app)
  :entries $ {}
    :default $ {} (:description |) (:init-fn 'app.client/main!) (:mode :js) (:reload-fn 'app.client/reload!)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |lilac/ |recollect/ |memof/ |respo-ui.calcit/ |ws-edn.calcit/ |cumulo-util.calcit/ |respo-message.calcit/ |cumulo-reel.calcit/ |respo-feather.calcit/ |alerts.calcit/
      :type-slots $ {}
    :server $ {} (:description |) (:init-fn 'app.server/main!) (:mode :native) (:reload-fn 'app.server/reload!)
      :feature-policy $ {}
      :modules $ [] |lilac/ |recollect/ |memof/ |cumulo-util.calcit/ |cumulo-reel.calcit/ |calcit.std/ |calcit-wss/ |respo.calcit/
      :type-slots $ {}
  :files $ {}
    'app.client $ %{} 'FileEntry
      :defs $ {}
        '*states $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defatom *states $ {}
              :states $ {}
                :cursor $ []
          :examples $ []
          :schema $ :: 'Dynamic
        '*store $ %{} 'CodeEntry (:doc |)
          :code $ quote (defatom *store nil)
          :examples $ []
          :schema $ :: 'Dynamic
        'connect! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn connect! () $ let
                url-obj $ unsafe-coerce (url-parse js/location.href true) 'JsObject
                query $ unsafe-coerce (.-query url-obj) 'JsObject
                host-value $ .-host query
                port-value $ .-port query
                host $ if (js-present? host-value) (unsafe-coerce host-value 'String) (unsafe-coerce js/location.hostname 'String)
                port $ if (js-present? port-value) (unsafe-coerce port-value 'String)
                  str $ :port config/site
              ws-connect!
                if config/dev? (str |ws:// host |: port) (str |wss:// host |/ws)
                {}
                  :on-open $ fn (event) (simulate-login!)
                  :on-close $ fn (event) (reset! *store nil) (js/console.error "|Lost connection!")
                  :on-data on-server-data
          :examples $ []
          :schema $ :: 'Dynamic
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn dispatch! (op)
              when
                and config/dev? $ not=
                  -> (nth op 0) (.unwrap-or :unknown)
                  , :states
                js/console.log |Dispatch op
              match op
                (:states cursor state)
                  reset! *states $ update-states (deref *states) cursor state
                (:effect/connect) (connect!)
                _ $ ws-send! op
          :examples $ []
          :schema $ :: 'Dynamic
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn main! ()
              println "|Running mode:" $ if config/dev? |dev |release
              if config/dev? $ load-console-formatter!
              render-app!
              connect!
              add-watch *store :changes $ fn (store prev) (render-app!)
              add-watch *states :changes $ fn (states prev) (render-app!)
              on-page-touch $ fn ()
                if (nil? @*store) (connect!)
              println "|App started!"
          :examples $ []
          :schema $ :: 'Dynamic
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def mount-target $ js/document.querySelector |.app
          :examples $ []
          :schema $ :: 'Dynamic
        'on-server-data $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn on-server-data (data)
              match data $
                :patch changes
                do
                  when config/dev? $ js/console.log |Changes changes
                  reset! *store $ patch-twig @*store changes
          :examples $ []
          :schema $ :: 'Dynamic
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn reload! () $ if
              or (some? client-errors) (some? server-errors)
              hud! |error $ str client-errors &newline server-errors
              do (hud! |inactive nil) (remove-watch *store :changes) (remove-watch *states :changes) (clear-cache!) (render-app!)
                add-watch *store :changes $ fn (store prev) (render-app!)
                add-watch *states :changes $ fn (states prev) (render-app!)
                println "|Code updated."
          :examples $ []
          :schema $ :: 'Dynamic
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn render-app! () $ render! mount-target
              comp-container (app.schema/read-field @*states :states) @*store
              , dispatch!
          :examples $ []
          :schema $ :: 'Dynamic
        'simulate-login! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn simulate-login! () $ let
                raw $ js/localStorage.getItem (:storage-key config/site)
              if (js-present? raw)
                do (println "|Found storage.")
                  dispatch! $ :: :user/log-in
                    parse-cirru-edn $ unsafe-coerce raw 'String
                do $ println "|Found no storage."
          :examples $ []
          :schema $ :: 'Dynamic
        'ssr? $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def ssr? $ some? (.querySelector js/document |meta.respo-ssr)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
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
            [] |url-parse :default url-parse
            |bottom-tip :default hud!
            |./calcit.build-errors :default client-errors
            |../js-out/calcit.build-errors :default server-errors
    'app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-container (states store)
              let
                  state $ app.schema/read-field states :data
                  session $ app.schema/read-field store :session
                  router $ app.schema/read-field store :router
                  router-data $ app.schema/read-field router :data
                if (nil? store) (comp-offline)
                  div
                    {} $ :style (merge ui/global ui/fullscreen ui/column)
                    comp-navigation (app.schema/read-field store :logged-in?) (app.schema/read-field store :count)
                    if (app.schema/read-field store :logged-in?)
                      case (app.schema/read-field router :name)
                        :home $ comp-dashboard (>> states :dashboard) router-data
                        :emotions $ comp-emotions-manager router-data
                        :edit-emotion $ comp-emotion-form (>> states :form) router-data
                        :history $ comp-history (>> states :history) (app.schema/read-field router-data :moods) (app.schema/read-field router-data :emotions)
                        :profile $ comp-profile (app.schema/read-field store :user) router-data
                        <> router
                      comp-login states
                    ; comp-status-color $ :color store
                    when dev? $ comp-inspect |Store store
                      {} (:bottom 20) (:left 0) (:max-width |100%)
                    comp-messages
                      unsafe-coerce
                        ->
                          get-in store $ [] :session :messages
                          .unwrap-or $ {}
                        :: 'Map 'String 'Dynamic
                      {}
                      fn (info d!) (d! :session/remove-message info)
                    ; when dev? $ comp-reel (:reel-length store)
                      {} (:bottom 100) (:background-color :white)
          :examples $ []
          :schema $ :: 'Dynamic
        'comp-offline $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-offline () $ div
              {} $ :style
                merge
                  unsafe-coerce ui/global $ :: 'Map 'Tag 'Dynamic
                  unsafe-coerce ui/fullscreen $ :: 'Map 'Tag 'Dynamic
                  unsafe-coerce ui/column-dispersive $ :: 'Map 'Tag 'Dynamic
                  unsafe-coerce
                    {} $ :background-color :white
                    :: 'Map 'Tag 'Dynamic
              div $ {}
                :style $ {} (:height 0)
              div $ {}
                :style $ {}
                  :background-image $ str "|url(" (:icon config/site) "|)"
                  :width 86
                  :height 86
                  :background-size :contain
              div
                {}
                  :style $ {} (:cursor :pointer) (:line-height |32px)
                  :on-click $ fn (e d!) (d! :effect/connect nil)
                <> "|No connection..." $ {} (:font-family ui/font-fancy) (:font-size 24)
          :examples $ []
          :schema $ :: 'Dynamic
        'comp-status-color $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-status-color (color)
              div $ {}
                :style $ let
                    size 24
                  {} (:width size) (:height size) (:position :absolute) (:bottom 60) (:left 8) (:background-color color) (:border-radius |50%) (:opacity 0.6) (:pointer-events :none)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
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
    'app.comp.dashboard $ %{} 'FileEntry
      :defs $ {}
        'comp-dashboard $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-dashboard (states router-data)
              let
                  cursor $ app.schema/read-field states :cursor
                  state $ or (app.schema/read-field states :data)
                    {} (:show-editor? false) (:emotion-id nil) (:draft |)
                  emotions $ or (app.schema/read-field router-data :emotions) ({})
                  moods $ or (app.schema/read-field router-data :moods) ({})
                div
                  {} $ :style
                    {} $ :padding "|8px 16px"
                  comp-title "|What do you feel now?"
                  =< nil 16
                  list-> emotions $ -> (unsafe-coerce emotions 'Map) (.to-list)
                    .sort-by $ fn (pair)
                      negate $ assert-type
                        app.schema/read-field (last pair) :score
                        , 'Number
                    .map-pair $ fn (k emotion)
                      [] k $ comp-emotion emotion nil
                        fn (e d!)
                          d! cursor $ merge state
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
                          d! :router/change $ {} (:name :emotions)
                      comp-i :settings 16 $ hsl 200 80 80
                  =< nil 16
                  div ({})
                    a
                      {} (:style ui/link)
                        :on-click $ fn (e d!)
                          d! :router/change $ {} (:name :history)
                      <> "|View history"
                  div ({})
                    list-> ({})
                      -> (unsafe-coerce moods 'Map) (.to-list)
                        .sort-by $ fn (pair)
                          negate $ assert-type
                            app.schema/read-field (last pair) :time
                            , 'Number
                        .map-pair $ fn (k mood)
                          [] k $ let
                              emotion-id $ app.schema/read-field mood :emotion-id
                            div
                              {} $ :style ui/row
                              comp-emotion (get emotions emotion-id) nil $ fn (e d!)
                              div
                                {} $ :style
                                  merge ui/expand $ {} (:white-space :nowrap) (:text-overflow :ellipsis) (:overflow :hidden)
                                <> $ app.schema/read-field mood :text
                  comp-modal
                    {}
                      :style $ {} (:width 400) (:max-width |86%)
                      :render $ fn (on-close)
                        div
                          {} $ :style
                            {} (:min-width 240) (:padding 20)
                          div
                            {} $ :style ui/row-middle
                            <> "|In mood"
                            =< 8 nil
                            comp-emotion
                              get emotions $ app.schema/read-field state :emotion-id
                              , nil $ fn ()
                          div ({})
                            textarea $ {}
                              :style $ merge ui/textarea
                                {} (:width |100%) (:min-height 160)
                              :value $ app.schema/read-field state :draft
                              :placeholder "|Some notes..."
                              :on-input $ fn (e d!)
                                d! cursor $ assoc state :draft (app.schema/read-field e :value)
                          =< nil 8
                          div
                            {} $ :style ui/row-parted
                            span $ {}
                            button $ {} (:style ui/button) (:inner-text |Submit)
                              :on-click $ fn (e d!)
                                d! :mood/create-one $ {}
                                  :text $ app.schema/read-field state :draft
                                  :emotion-id $ app.schema/read-field state :emotion-id
                                d! cursor $ -> state (assoc :show-editor? false) (assoc :draft |)
                    app.schema/read-field state :show-editor?
                    fn (d!)
                      d! cursor $ assoc state :show-editor? false
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
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
    'app.comp.emotion-form $ %{} 'FileEntry
      :defs $ {}
        'comp-color-picker $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-color-picker (form on-pick)
              list-> ({})
                -> default-colors $ map
                  fn (color)
                    [] color $ div
                      {}
                        :style $ let
                            size 24
                          {} (:background-color color) (:height size) (:width size) (:border-radius |6px) (:display :inline-block) (:margin "|0 8px 8px 0") (:cursor :pointer)
                        :on-click $ fn (e d!) (on-pick color d!)
          :examples $ []
          :schema $ :: 'Dynamic
        'comp-emotion-form $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-emotion-form (states data)
              let
                  cursor $ app.schema/read-field states :cursor
                  form $ or (app.schema/read-field states :data) (or data schema/emotion)
                  editing? $ some? (app.schema/read-field form :id)
                  delete-plugin $ use-confirm (>> states :delete)
                    {} $ :text "|Sure to delete?"
                div
                  {} $ :style
                    {} $ :padding "|8px 16px"
                  div ({}) (comp-title "|Emotion details")
                  =< nil 16
                  comp-field |Name $ input
                    {} (:style ui/input)
                      :value $ app.schema/read-field form :text
                      :on-input $ fn (e d!)
                        d! cursor $ assoc form :text (app.schema/read-field e :value)
                  comp-field |Score $ input
                    {} (:style ui/input)
                      :value $ app.schema/read-field form :score
                      :type |number
                      :on-input $ fn (e d!)
                        d! cursor $ assoc form :score (app.schema/read-field e :value)
                  comp-field |Color $ div
                    {} $ :style ui/column
                    input $ {}
                      :style $ merge ui/input
                        {} $ :font-family ui/font-code
                      :value $ app.schema/read-field form :color
                      :on-input $ fn (e d!)
                        d! cursor $ assoc form :color (app.schema/read-field e :value)
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
                          :inner-text |Delete
                          :on-click $ fn (e d!)
                            .show delete-plugin d! $ fn ()
                              d! :router/change $ {} (:name :emotions)
                              d! :emotion/remove-one $ app.schema/read-field form :id
                      when editing? $ =< 8 nil
                      button $ {} (:style ui/button)
                        :on-click $ fn (e d!) (d! :emotion/create-one form) (d! cursor nil)
                          d! :router/change $ {} (:name :emotions)
                        :inner-text $ if editing? |Save |Create
                  .render delete-plugin
          :examples $ []
          :schema $ :: 'Dynamic
        'default-colors $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def default-colors $ [] |#ff9e96 |#e7e5e5 |#baf9c2 |#c6ded2 |#5facf6 |#c390e8 |#ffdd57 |#f79800 |#cf0027
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.comp.emotion-form $ :require
            [] respo-ui.core :refer $ [] hsl
            [] respo-ui.core :as ui
            [] respo.comp.space :refer $ [] =<
            [] respo.core :refer $ [] defcomp <> >> list-> span div button input
            [] app.config :as config
            [] app.schema :as schema
            [] respo-alerts.core :refer $ [] use-confirm
            [] app.comp.kit :refer $ [] comp-field comp-title
    'app.comp.emotions $ %{} 'FileEntry
      :defs $ {}
        'comp-emotion $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-emotion (emotion style on-click!)
              div
                {}
                  :style $ merge ui/center
                    {}
                      :background-color $ app.schema/read-field emotion :color
                      :display :inline-flex
                      :padding "|0 16px"
                      :line-height |24px
                      :height |24px
                      :margin "|0 8px 8px 0"
                      :border-radius |8px
                      :color :white
                    , style
                  :on-click on-click!
                <> $ app.schema/read-field emotion :text
          :examples $ []
          :schema $ :: 'Dynamic
        'comp-emotions-manager $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-emotions-manager (emotions)
              div
                {} $ :style
                  {} $ :padding "|8px 16px"
                div
                  {} $ :style ui/row-middle
                  <> |Emotions $ {} (:font-family ui/font-fancy) (:font-size 24)
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
                    -> (unsafe-coerce emotions 'Map) (.to-list)
                      .map-pair $ fn (k emotion)
                        [] k $ comp-emotion emotion nil
                          fn (e d!)
                            d! :router/change $ {} (:name :edit-emotion)
                              :data $ app.schema/read-field emotion :id
                =< nil 32
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.comp.emotions $ :require
            [] respo-ui.core :refer $ [] hsl
            [] respo-ui.core :as ui
            [] respo.comp.space :refer $ [] =<
            [] respo.core :refer $ [] defcomp <> list-> span div button a
            [] app.config :as config
            [] feather.core :refer $ [] comp-i
    'app.comp.history $ %{} 'FileEntry
      :defs $ {}
        'comp-history $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-history (states moods emotions)
              div
                {} $ :style
                  merge
                    unsafe-coerce ui/flex $ :: 'Map 'Tag 'Dynamic
                    unsafe-coerce ui/column $ :: 'Map 'Tag 'Dynamic
                    unsafe-coerce
                      {} $ :overflow :auto
                      :: 'Map 'Tag 'Dynamic
                div
                  {} $ :style
                    {} (:margin "|8px 0") (:padding "|8px 16px")
                  comp-title |History
                list->
                  {} $ :style
                    merge
                      unsafe-coerce ui/flex $ :: 'Map 'Tag 'Dynamic
                      unsafe-coerce
                        {} (:width |100%) (:padding "|8px 16px")
                        :: 'Map 'Tag 'Dynamic
                  -> (unsafe-coerce moods 'Map) (.to-list)
                    .sort-by $ fn (pair)
                      negate $ assert-type
                        app.schema/read-field (last pair) :time
                        , 'Number
                    .map-pair $ fn (k mood)
                      [] k $ comp-record
                        >> states $ app.schema/read-field mood :id
                        , mood emotions
          :examples $ []
          :schema $ :: 'Dynamic
        'comp-record $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-record (states mood emotions)
              let
                  remove-plugin $ use-confirm (>> states :remove)
                    {} $ :text "|Sure to delete?"
                div
                  {} (:class-name |)
                    :style $ merge ui/column
                      {}
                        :border-bottom $ str "|1px solid " (hsl 0 0 90)
                        :padding "|8px 0"
                  div
                    {} $ :style ui/row-parted
                    div
                      {} $ :style ui/row-middle
                      comp-emotion
                        get emotions $ app.schema/read-field mood :emotion-id
                        , nil nil
                      comp-hint $ ->
                        dayjs $ app.schema/read-field mood :time
                        .!format "|MM-DD HH:mm"
                    span
                      {} $ :on-click
                        fn (e d!)
                          .show remove-plugin d! $ fn ()
                            d! :mood/remove-one $ app.schema/read-field mood :id
                      comp-i :x 14 $ hsl 0 0 80
                  div $ {}
                    :inner-text $ app.schema/read-field mood :text
                    :style $ merge
                      unsafe-coerce ui/flex $ :: 'Map 'Tag 'Dynamic
                      unsafe-coerce
                        {} $ :word-break :break-all
                        :: 'Map 'Tag 'Dynamic
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.comp.history $ :require
            [] respo-ui.core :refer $ [] hsl
            [] respo-ui.core :as ui
            [] respo.comp.space :refer $ [] =<
            [] respo.core :refer $ [] defcomp >> <> list-> span div a
            [] app.config :as config
            [] app.comp.kit :refer $ [] comp-title
            [] app.comp.emotions :refer $ [] comp-emotion
            [] |dayjs :default dayjs
            [] app.comp.kit :refer $ [] comp-hint
            [] feather.core :refer $ [] comp-icon comp-i
            [] respo-alerts.core :refer $ [] use-confirm
    'app.comp.kit $ %{} 'FileEntry
      :defs $ {}
        'comp-field $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-field (label child)
              div
                {} $ :style
                  merge
                    unsafe-coerce ui/row $ :: 'Map 'Tag 'Dynamic
                    unsafe-coerce
                      {} $ :margin-bottom 16
                      :: 'Map 'Tag 'Dynamic
                div
                  {} $ :style
                    {} $ :width 64
                  <> label
                , child
          :examples $ []
          :schema $ :: 'Dynamic
        'comp-hint $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-hint (text)
              <> text $ {}
                :color $ hsl 0 0 80
          :examples $ []
          :schema $ :: 'Dynamic
        'comp-title $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-title (text)
              <> text $ {} (:font-family ui/font-fancy) (:font-size 24)
                :color $ hsl 0 0 60
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.comp.kit $ :require
            [] respo-ui.core :refer $ [] hsl
            [] app.schema :as schema
            [] respo-ui.core :as ui
            [] respo.core :refer $ [] defcomp list-> <> span div button
            [] respo.comp.space :refer $ [] =<
            [] app.config :as config
    'app.comp.login $ %{} 'FileEntry
      :defs $ {}
        'comp-login $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-login (states)
              let
                  cursor $ app.schema/read-field states :cursor
                  state $ or (app.schema/read-field states :data) initial-state
                div
                  {} $ :style
                    merge
                      unsafe-coerce ui/flex $ :: 'Map 'Tag 'Dynamic
                      unsafe-coerce ui/center $ :: 'Map 'Tag 'Dynamic
                  div ({})
                    div
                      {} $ :style ({})
                      div ({})
                        input $ {} (:placeholder |Username)
                          :value $ app.schema/read-field state :username
                          :style ui/input
                          :on-input $ fn (e d!)
                            d! cursor $ assoc state :username (app.schema/read-field e :value)
                      =< nil 8
                      div ({})
                        input $ {} (:placeholder |Password)
                          :value $ app.schema/read-field state :password
                          :style ui/input
                          :on-input $ fn (e d!)
                            d! cursor $ assoc state :password (app.schema/read-field e :value)
                    =< nil 8
                    div
                      {} $ :style
                        {} $ :text-align :right
                      span $ {} (:inner-text "|Sign up")
                        :style $ merge ui/link
                        :on-click $ on-submit (app.schema/read-field state :username) (app.schema/read-field state :password) true
                      =< 8 nil
                      span $ {} (:inner-text "|Log in")
                        :style $ merge ui/link
                        :on-click $ on-submit (app.schema/read-field state :username) (app.schema/read-field state :password) false
          :examples $ []
          :schema $ :: 'Dynamic
        'initial-state $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def initial-state $ {} (:username |) (:password |)
          :examples $ []
          :schema $ :: 'Dynamic
        'on-submit $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn on-submit (username password signup?)
              fn (e dispatch!)
                dispatch! (if signup? :user/sign-up :user/log-in) ([] username password)
                js/localStorage.setItem (:storage-key config/site)
                  format-cirru-edn $ [] username password
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.comp.login $ :require
            [] respo.core :refer $ [] defcomp <> div input button span
            [] respo.comp.space :refer $ [] =<
            [] respo.comp.inspect :refer $ [] comp-inspect
            [] respo-ui.core :as ui
            [] app.schema :as schema
            [] app.config :as config
    'app.comp.navigation $ %{} 'FileEntry
      :defs $ {}
        'comp-navigation $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-navigation (logged-in? count-members)
              div
                {} $ :style
                  merge ui/row-center $ {} (:height 48) (:justify-content :space-between) (:padding "|0 16px") (:font-size 16)
                    :border-bottom $ str "|1px solid " (hsl 0 0 0 0.1)
                    :font-family ui/font-fancy
                div
                  {}
                    :on-click $ fn (e d!)
                      d! :router/change $ {} (:name :home)
                    :style $ {} (:cursor :pointer)
                  <>
                    assert-type (app.schema/read-field config/site :title) 'String
                    , nil
                div
                  {}
                    :style $ {} (:cursor |pointer)
                    :on-click $ fn (e d!)
                      d! :router/change $ {} (:name :profile)
                  <> $ if logged-in? |Me |Guest
                  =< 8 nil
                  <> count-members
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.comp.navigation $ :require
            [] respo-ui.core :refer $ [] hsl
            [] respo-ui.core :as ui
            [] respo.comp.space :refer $ [] =<
            [] respo.core :refer $ [] defcomp <> span div
            [] app.config :as config
    'app.comp.profile $ %{} 'FileEntry
      :defs $ {}
        'comp-profile $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-profile (user members)
              div
                {} $ :style
                  merge ui/flex $ {} (:padding 16)
                div
                  {} $ :style
                    {} (:font-family ui/font-fancy) (:font-size 32) (:font-weight 100)
                  <> $ str "|Hello! " (app.schema/read-field user :name)
                =< nil 16
                div
                  {} $ :style ui/row
                  <> |Members:
                  =< 8 nil
                  list->
                    {} $ :style ui/row
                    -> (unsafe-coerce members 'Map) (.to-list)
                      .map-pair $ fn (k username)
                        [] k $ div
                          {} $ :style
                            {} (:padding "|0 8px")
                              :border $ str "|1px solid " (hsl 0 0 80)
                              :border-radius |16px
                              :margin "|0 4px"
                          <> username
                =< nil 48
                div ({})
                  button
                    {}
                      :style $ merge ui/button
                      :on-click $ fn (e d! m!)
                        .replace js/location $ str js/location.origin |?time= (.now js/Date)
                    <> |Refresh
                  =< 16 nil
                  button
                    {}
                      :style $ merge ui/button
                        {} (:color :red) (:border-color :red)
                      :on-click $ fn (e dispatch!) (dispatch! :user/log-out nil)
                        js/localStorage.removeItem $ :storage-key config/site
                    <> "|Log out"
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.comp.profile $ :require
            [] respo-ui.core :refer $ [] hsl
            [] app.schema :as schema
            [] respo-ui.core :as ui
            [] respo.core :refer $ [] defcomp list-> <> span div button
            [] respo.comp.space :refer $ [] =<
            [] app.config :as config
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'cdn? $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def cdn? $ cond
                exists? js/window
                , false
              (exists? js/process) (= |true js/process.env.cdn)
              :else false
          :examples $ []
          :schema $ :: 'Dynamic
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def dev? $ = |dev
              -> (get-env |mode) (.unwrap-or |release)
          :examples $ []
          :schema $ :: 'Dynamic
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def site $ {} (:port 11011) (:title |Pumila) (:icon |http://cdn-tc.tiye.me/logo/pumila.png) (:storage-key |pumila) (:storage-file |storage.cirru) (:theme |#6EBAEE)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns app.config)
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'database $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def database $ {}
              :sessions $ do session ({})
              :users $ do user ({})
          :examples $ []
          :schema $ :: 'Dynamic
        'emotion $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def emotion $ {} (:id nil) (:text |) (:score 0)
              :color $ hsl 0 0 90
          :examples $ []
          :schema $ :: 'Dynamic
        'mood $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def mood $ {} (:id nil) (:emotion-id nil) (:text |) (:time nil)
          :examples $ []
          :schema $ :: 'Dynamic
        'notification $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def notification $ {} (:id nil) (:kind nil) (:text nil)
          :examples $ []
          :schema $ :: 'Dynamic
        'read-field $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn read-field (value field)
              if (struct? value) (&struct:get value field) (&map:get value field)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ [] 'Dynamic 'Tag
        'router $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def router $ {} (:name nil) (:title nil)
              :data $ {}
              :router nil
          :examples $ []
          :schema $ :: 'Dynamic
        'session $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def session $ {} (:user-id nil) (:id nil) (:nickname nil)
              :router $ do router
                {} (:name :home) (:data nil) (:router nil)
              :messages $ {}
          :examples $ []
          :schema $ :: 'Dynamic
        'user $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def user $ {} (:name nil) (:id nil) (:nickname nil) (:avatar nil) (:password nil)
              :moods $ do mood ({})
              :emotions $ do emotion ({})
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.schema $ :require
            [] respo.util.format :refer $ [] hsl
    'app.server $ %{} 'FileEntry
      :defs $ {}
        '*client-caches $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defatom *client-caches $ {}
          :examples $ []
          :schema $ :: 'Dynamic
        '*initial-db $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defatom *initial-db $ if
              path-exists? $ w-log storage-file
              do (println "|Found local EDN data")
                merge schema/database $ parse-cirru-edn (read-file storage-file)
              do (println "|Found no data") schema/database
          :examples $ []
          :schema $ :: 'Dynamic
        '*reader-reel $ %{} 'CodeEntry (:doc |)
          :code $ quote (defatom *reader-reel @*reel)
          :examples $ []
          :schema $ :: 'Dynamic
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defatom *reel $ struct-with reel-schema (:base @*initial-db) (:db @*initial-db)
          :examples $ []
          :schema $ :: 'Ref 'cumulo-reel.core/ReelState
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn dispatch! (op sid)
              let
                  op-id $ turn-string (generate-id!)
                  op-time $ -> (get-time!) (.timestamp)
                if config/dev? $ println |Dispatch! (str op) sid
                if (= op :effect/persist) (persist-db!)
                  reset! *reel $ reel-reducer @*reel updater op sid op-id op-time config/dev?
          :examples $ []
          :schema $ :: 'Dynamic
        'get-backup-path! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn get-backup-path! () $ let
                now $ .extract (get-time!)
              join-path calcit-dirname |backups
                str $ app.schema/read-field now :month
                str (app.schema/read-field now :day) |-snapshot.cirru
          :examples $ []
          :schema $ :: 'Dynamic
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn main! ()
              println "|Running mode:" $ if config/dev? |dev |release
              let
                  p? $ get-env |port
                  port $ option:fold p?
                    fn () $ app.schema/read-field config/site :port
                    fn (raw)
                      (parse-float raw) .unwrap-or $ app.schema/read-field config/site :port
                run-server! port
                println $ str "|Server started on port:" port
              do (; "|init it before doing multi-threading") (identity @*reader-reel)
              set-interval 200 $ fn () (render-loop!)
              set-interval 600000 $ fn () (persist-db!)
              on-control-c on-exit!
          :examples $ []
          :schema $ :: 'Dynamic
        'on-exit! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn on-exit! () (persist-db!) (; println "|exit code is...") (quit! 0)
          :examples $ []
          :schema $ :: 'Dynamic
        'persist-db! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn persist-db! () $ let
                file-content $ format-cirru-edn
                  assoc
                    :db $ unsafe-coerce @*reel 'cumulo-reel.core/ReelState
                    , :sessions $ {}
                storage-path storage-file
                backup-path $ get-backup-path!
              check-write-file! storage-path file-content
              check-write-file! backup-path file-content
          :examples $ []
          :schema $ :: 'Dynamic
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn reload! () (println "|Code updated..")
              if (not config/dev?) (raise "|reloading only happens in dev mode")
              clear-twig-caches!
              reset! *reel $ refresh-reel @*reel @*initial-db updater
              sync-clients! @*reader-reel
          :examples $ []
          :schema $ :: 'Dynamic
        'render-loop! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn render-loop! () $ when
              not $ identical? @*reader-reel @*reel
              reset! *reader-reel @*reel
              sync-clients! @*reader-reel
          :examples $ []
          :schema $ :: 'Dynamic
        'run-server! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn run-server! (port)
              wss-serve! (&{} :port port)
                fn (data)
                  match data
                    (:connect sid)
                      do
                        dispatch! (:: :session/connect) sid
                        println "|New client."
                    (:message sid msg)
                      dispatch! (parse-cirru-edn msg) sid
                    (:disconnect sid)
                      do (println "|Client closed!")
                        dispatch! (:: :session/disconnect) sid
                    _ $ println "|unknown data:" data
          :examples $ []
          :schema $ :: 'Dynamic
        'storage-file $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def storage-file $ if (empty? calcit-dirname)
              str calcit-dirname $ :storage-file config/site
              str calcit-dirname |/ $ :storage-file config/site
          :examples $ []
          :schema $ :: 'Dynamic
        'sync-clients! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn sync-clients! (reel)
              wss-each! $ fn (sid)
                let
                    db $ app.schema/read-field reel :db
                    records $ app.schema/read-field reel :records
                    session $
                      get-in db $ [] :sessions sid
                      , .unwrap-or schema/session
                    old-store $
                      get @*client-caches sid
                      , .unwrap-or nil
                    new-store $ twig-container db session records
                    changes $ diff-twig old-store new-store
                      {} $ :key :id
                  ; when config/dev? $ println "|Changes for" sid |: changes (count records)
                  if
                    not= changes $ []
                    do
                      wss-send! sid $ format-cirru-edn (:: :patch changes)
                      swap! *client-caches assoc sid new-store
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.server $ :require ([] app.schema :as schema)
            [] app.updater :refer $ [] updater
            [] cumulo-reel.core :refer $ [] reel-reducer refresh-reel reel-schema
            [] app.config :as config
            [] app.twig.container :refer $ [] twig-container
            [] recollect.diff :refer $ [] diff-twig
            wss.core :refer $ wss-serve! wss-send! wss-each!
            [] recollect.twig :refer $ [] clear-twig-caches!
            app.$meta :refer $ calcit-dirname
            calcit.std.fs :refer $ path-exists? check-write-file!
            calcit.std.time :refer $ set-interval
            calcit.std.date :refer $ Date get-time!
            calcit.std.path :refer $ join-path
    'app.style $ %{} 'FileEntry
      :defs $ {}
        'link $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def link $ {} (:text-decoration :underline) (:cursor :pointer)
              :color $ hsl 240 80 80
              :font-family ui/font-fancy
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.style $ :require
            [] hsl.core :refer $ [] hsl
            [] respo-ui.core :as ui
    'app.twig.container $ %{} 'FileEntry
      :defs $ {}
        'twig-container $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn twig-container (db session records)
              let
                  logged-in? $ some? (app.schema/read-field session :user-id)
                  router $ app.schema/read-field session :router
                  base-data $ {} (:logged-in? logged-in?) (:session session)
                    :reel-length $ count records
                merge base-data $ if logged-in?
                  let
                      user $ ->
                        get-in db $ [] :users (app.schema/read-field session :user-id)
                        .unwrap-or $ {}
                    {}
                      :user $ twig-user user
                      :router $ assoc router :data
                        case-default (app.schema/read-field router :name) ({})
                          :home $ {}
                            :emotions $ app.schema/read-field user :emotions
                            :moods $ ->
                              unsafe-coerce (app.schema/read-field user :moods) 'Map
                              .to-list
                              .sort-by $ fn (pair)
                                negate $ app.schema/read-field (last pair) :time
                              take 8
                              .pairs-map
                          :history $ {}
                            :emotions $ app.schema/read-field user :emotions
                            :moods $ app.schema/read-field user :moods
                          :emotions $ app.schema/read-field user :emotions
                          :edit-emotion $ if
                            nil? $ app.schema/read-field router :data
                            , nil
                              get-in user $ [] :emotions (app.schema/read-field router :data)
                          :profile $ twig-members (app.schema/read-field db :sessions) (app.schema/read-field db :users)
                      :count $ count (app.schema/read-field db :sessions)
                      :color $ rand-hex-color!
                  {}
          :examples $ []
          :schema $ :: 'Dynamic
        'twig-members $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn twig-members (sessions users)
              -> sessions $ map-kv
                fn (k session)
                  [] k $
                    get-in users $ [] (app.schema/read-field session :user-id) :name
                    , .unwrap-or nil
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.twig.container $ :require
            [] app.twig.user :refer $ [] twig-user
            calcit.std.rand :refer $ rand-hex-color!
    'app.twig.user $ %{} 'FileEntry
      :defs $ {}
        'twig-user $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn twig-user (user)
              -> user (dissoc :password) (dissoc :moods) (dissoc :archived-moods)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.twig.user $ :require
            [] recollect.twig :refer $ [] deftwig
    'app.updater $ %{} 'FileEntry
      :defs $ {}
        'updater $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn updater (db op sid op-id op-time)
              match op
                (:session/connect) (session/connect db sid op-id op-time)
                (:session/disconnect) (session/disconnect db sid op-id op-time)
                (:session/remove-message op-data) (session/remove-message db op-data sid op-id op-time)
                (:user/log-in op-data) (user/log-in db op-data sid op-id op-time)
                (:user/sign-up op-data) (user/sign-up db op-data sid op-id op-time)
                (:user/log-out op-data) (user/log-out db op-data sid op-id op-time)
                (:router/change op-data) (router/change db op-data sid op-id op-time)
                (:emotion/create-one op-data) (emotion/create-one db op-data sid op-id op-time)
                (:emotion/remove-one op-data) (emotion/remove-one db op-data sid op-id op-time)
                (:mood/create-one op-data) (mood/create-one db op-data sid op-id op-time)
                (:mood/remove-one op-data) (mood/remove-one db op-data sid op-id op-time)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.updater $ :require ([] app.updater.session :as session) ([] app.updater.user :as user) ([] app.updater.router :as router) ([] app.schema :as schema)
            [] respo-message.updater :refer $ [] update-messages
            [] app.updater.emotion :as emotion
            [] app.updater.mood :as mood
    'app.updater.emotion $ %{} 'FileEntry
      :defs $ {}
        'create-one $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn create-one (db op-data sid op-id op-time)
              let
                  user-id $
                    get-in db $ [] :sessions sid :user-id
                    , .unwrap-or nil
                update-in db ([] :users user-id :emotions)
                  fn (emotions-option)
                    let
                        emotions $ option:unwrap-or emotions-option ({})
                      match (get op-data :id)
                        (:some id)
                          update emotions id $ fn (emotion-option)
                            merge (option:unwrap-or emotion-option schema/emotion) op-data
                        (:none)
                          assoc emotions op-id $ merge schema/emotion op-data
                            {} $ :id op-id
          :examples $ []
          :schema $ :: 'Dynamic
        'remove-one $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn remove-one (db op-data sid op-id op-time)
              let
                  user-id $
                    get-in db $ [] :sessions sid :user-id
                    , .unwrap-or nil
                update-in db ([] :users user-id :emotions)
                  fn (emotions-option)
                    dissoc
                      option:unwrap-or emotions-option $ {}
                      , op-data
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.updater.emotion $ :require ([] app.schema :as schema)
    'app.updater.mood $ %{} 'FileEntry
      :defs $ {}
        'create-one $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn create-one (db op-data sid op-id op-time)
              let
                  user-id $
                    get-in db $ [] :sessions sid :user-id
                    , .unwrap-or nil
                assoc-in db ([] :users user-id :moods op-id)
                  merge schema/mood op-data $ {} (:id op-id) (:time op-time)
          :examples $ []
          :schema $ :: 'Dynamic
        'remove-one $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn remove-one (db op-data sid op-id op-time)
              let
                  user-id $
                    get-in db $ [] :sessions sid :user-id
                    , .unwrap-or nil
                update-in db ([] :users user-id :moods)
                  fn (moods-option)
                    dissoc
                      option:unwrap-or moods-option $ {}
                      , op-data
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.updater.mood $ :require ([] app.schema :as schema)
    'app.updater.router $ %{} 'FileEntry
      :defs $ {}
        'change $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn change (db op-data sid op-id op-time)
              assoc-in db ([] :sessions sid :router) op-data
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns app.updater.router)
    'app.updater.session $ %{} 'FileEntry
      :defs $ {}
        'connect $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn connect (db sid op-id op-time)
              assoc-in db ([] :sessions sid)
                merge schema/session $ {} (:id sid)
          :examples $ []
          :schema $ :: 'Dynamic
        'disconnect $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn disconnect (db sid op-id op-time)
              update db :sessions $ fn (session) (dissoc session sid)
          :examples $ []
          :schema $ :: 'Dynamic
        'remove-message $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn remove-message (db op-data sid op-id op-time)
              update-in db ([] :sessions sid :messages)
                fn (messages-option)
                  dissoc
                    option:unwrap-or messages-option $ {}
                    app.schema/read-field op-data :id
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.updater.session $ :require ([] app.schema :as schema)
    'app.updater.user $ %{} 'FileEntry
      :defs $ {}
        'log-in $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn log-in (db op-data sid op-id op-time)
              let-sugar
                    [] username password
                    , op-data
                  maybe-user $ -> (app.schema/read-field db :users) (vals) (.to-list)
                    find $ fn (user)
                      and $ = username (app.schema/read-field user :name)
                update-in db ([] :sessions sid)
                  fn (session-option)
                    let
                        session $ option:unwrap-or session-option schema/session
                      match maybe-user
                        (:some user)
                          if
                            = (md5 password) (app.schema/read-field user :password)
                            assoc session :user-id $ app.schema/read-field user :id
                            assoc session :messages $ assoc (app.schema/read-field session :messages) op-id
                              {} (:id op-id)
                                :text $ str "|Wrong password for " username
                        (:none)
                          assoc session :messages $ assoc (app.schema/read-field session :messages) op-id
                            {} (:id op-id)
                              :text $ str "|No user named: " username
          :examples $ []
          :schema $ :: 'Dynamic
        'log-out $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn log-out (db op-data sid op-id op-time)
              assoc-in db ([] :sessions sid :user-id) nil
          :examples $ []
          :schema $ :: 'Dynamic
        'reset-mark $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn reset-mark (db op-data sid op-id op-time)
              let
                  user-id $ get-in db ([] :sessions sid :user-id)
                assoc-in db ([] :users user-id :history-mark) op-time
          :examples $ []
          :schema $ :: 'Dynamic
        'sign-up $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn sign-up (db op-data sid op-id op-time)
              let-sugar
                    [] username password
                    , op-data
                  maybe-user $ find
                    -> (app.schema/read-field db :users) vals .to-list
                    fn (user)
                      = username $ app.schema/read-field user :name
                match maybe-user
                  (:some _user)
                    update-in db ([] :sessions sid :messages)
                      fn (messages-option)
                        assoc
                          option:unwrap-or messages-option $ {}
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
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.updater.user $ :require
            calcit.std.hash :refer $ md5
            app.schema :as schema
    'app.util.dom $ %{} 'FileEntry
      :defs $ {}
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns app.util.dom)
