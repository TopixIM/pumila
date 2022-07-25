
{}
  :configs $ {} (:init-fn |app.client/main!) (:port 6001) (:reload-fn |app.client/reload!) (:storage-key |calcit.cirru)
    :modules $ [] |respo.calcit/ |lilac/ |recollect/ |memof/ |respo-ui.calcit/ |ws-edn.calcit/ |cumulo-util.calcit/ |respo-message.calcit/ |cumulo-reel.calcit/ |respo-feather.calcit/ |alerts.calcit/
  :entries $ {}
    :server $ {} (:init-fn |app.server/main!) (:port 6001) (:reload-fn |app.server/reload!) (:storage-key |calcit.cirru)
      :modules $ [] |lilac/ |recollect/ |memof/ |cumulo-util.calcit/ |cumulo-reel.calcit/ |calcit.std/ |calcit-wss/ |respo.calcit/
  :ir $ {} (:package |app)
    :files $ {}
      |app.client $ {}
        :defs $ {}
          |*states $ {} (:at 1629572118675) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629572118675) (:by |B1y7Rc-Zz) (:text |defatom) (:type :leaf)
              |j $ {} (:at 1629572118675) (:by |B1y7Rc-Zz) (:text |*states) (:type :leaf)
              |r $ {} (:at 1629572118675) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629572118675) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1629572118675) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629572118675) (:by |B1y7Rc-Zz) (:text |:states) (:type :leaf)
                      |j $ {} (:at 1629572118675) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629572118675) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1629572118675) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629572118675) (:by |B1y7Rc-Zz) (:text |:cursor) (:type :leaf)
                              |j $ {} (:at 1629572118675) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629572118675) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
          |*store $ {} (:at 1629572128051) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629572128051) (:by |B1y7Rc-Zz) (:text |defatom) (:type :leaf)
              |j $ {} (:at 1629572128051) (:by |B1y7Rc-Zz) (:text |*store) (:type :leaf)
              |r $ {} (:at 1629572128051) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
          |connect! $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |connect!) (:type :leaf)
              |r $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
              |v $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                  |j $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |url-obj) (:type :leaf)
                          |j $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |url-parse) (:type :leaf)
                              |j $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |js/location.href) (:type :leaf)
                              |r $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |true) (:type :leaf)
                      |j $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |host) (:type :leaf)
                          |j $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |either) (:type :leaf)
                              |j $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |->) (:type :leaf)
                                  |j $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |url-obj) (:type :leaf)
                                  |r $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |.-query) (:type :leaf)
                                  |v $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |.-host) (:type :leaf)
                              |r $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |js/location.hostname) (:type :leaf)
                      |r $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |port) (:type :leaf)
                          |j $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |either) (:type :leaf)
                              |j $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |->) (:type :leaf)
                                  |j $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |url-obj) (:type :leaf)
                                  |r $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |.-query) (:type :leaf)
                                  |v $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |.-port) (:type :leaf)
                              |r $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |:port) (:type :leaf)
                                  |j $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |config/site) (:type :leaf)
                  |r $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |ws-connect!) (:type :leaf)
                      |j $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                          |j $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:text "|\"ws://") (:type :leaf)
                          |r $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |host) (:type :leaf)
                          |v $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:text "|\":") (:type :leaf)
                          |x $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |port) (:type :leaf)
                      |r $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |:on-open) (:type :leaf)
                              |j $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                  |j $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |event) (:type :leaf)
                                  |r $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |simulate-login!) (:type :leaf)
                          |r $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |:on-close) (:type :leaf)
                              |j $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                  |j $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |event) (:type :leaf)
                                  |r $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |reset!) (:type :leaf)
                                      |j $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |*store) (:type :leaf)
                                      |r $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
                                  |v $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |js/console.error) (:type :leaf)
                                      |j $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:text "|\"Lost connection!") (:type :leaf)
                          |v $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |:on-data) (:type :leaf)
                              |j $ {} (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |on-server-data) (:type :leaf)
          |dispatch! $ {} (:at 1629573061901) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629573061901) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1629573061901) (:by |B1y7Rc-Zz) (:text |dispatch!) (:type :leaf)
              |r $ {} (:at 1629573061901) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629573061901) (:by |B1y7Rc-Zz) (:text |op) (:type :leaf)
                  |j $ {} (:at 1629573061901) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
              |v $ {} (:at 1629573061901) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629573061901) (:by |B1y7Rc-Zz) (:text |when) (:type :leaf)
                  |j $ {} (:at 1629573061901) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629573061901) (:by |B1y7Rc-Zz) (:text |and) (:type :leaf)
                      |j $ {} (:at 1629573061901) (:by |B1y7Rc-Zz) (:text |config/dev?) (:type :leaf)
                      |r $ {} (:at 1629573061901) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629573061901) (:by |B1y7Rc-Zz) (:text |not=) (:type :leaf)
                          |j $ {} (:at 1629573061901) (:by |B1y7Rc-Zz) (:text |op) (:type :leaf)
                          |r $ {} (:at 1629573061901) (:by |B1y7Rc-Zz) (:text |:states) (:type :leaf)
                  |r $ {} (:at 1629573061901) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629573061901) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                      |j $ {} (:at 1629573061901) (:by |B1y7Rc-Zz) (:text "|\"Dispatch") (:type :leaf)
                      |r $ {} (:at 1629573061901) (:by |B1y7Rc-Zz) (:text |op) (:type :leaf)
                      |v $ {} (:at 1629573061901) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
              |x $ {} (:at 1629573061901) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629573061901) (:by |B1y7Rc-Zz) (:text |case-default) (:type :leaf)
                  |j $ {} (:at 1629573061901) (:by |B1y7Rc-Zz) (:text |op) (:type :leaf)
                  |r $ {} (:at 1629573061901) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629573061901) (:by |B1y7Rc-Zz) (:text |ws-send!) (:type :leaf)
                      |j $ {} (:at 1629573061901) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629573061901) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1629573061901) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629573061901) (:by |B1y7Rc-Zz) (:text |:kind) (:type :leaf)
                              |j $ {} (:at 1629573061901) (:by |B1y7Rc-Zz) (:text |:op) (:type :leaf)
                          |r $ {} (:at 1629573061901) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629573061901) (:by |B1y7Rc-Zz) (:text |:op) (:type :leaf)
                              |j $ {} (:at 1629573061901) (:by |B1y7Rc-Zz) (:text |op) (:type :leaf)
                          |v $ {} (:at 1629573061901) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629573061901) (:by |B1y7Rc-Zz) (:text |:data) (:type :leaf)
                              |j $ {} (:at 1629573061901) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
                  |v $ {} (:at 1629573061901) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629573061901) (:by |B1y7Rc-Zz) (:text |:states) (:type :leaf)
                      |j $ {} (:at 1629573061901) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629573061901) (:by |B1y7Rc-Zz) (:text |reset!) (:type :leaf)
                          |j $ {} (:at 1629573061901) (:by |B1y7Rc-Zz) (:text |*states) (:type :leaf)
                          |r $ {} (:at 1629573061901) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629573061901) (:by |B1y7Rc-Zz) (:text |update-states) (:type :leaf)
                              |j $ {} (:at 1629573061901) (:by |B1y7Rc-Zz) (:text |@*states) (:type :leaf)
                              |r $ {} (:at 1629573061901) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
                  |x $ {} (:at 1629573061901) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629573061901) (:by |B1y7Rc-Zz) (:text |:effect/connect) (:type :leaf)
                      |j $ {} (:at 1629573061901) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629573061901) (:by |B1y7Rc-Zz) (:text |connect!) (:type :leaf)
          |main! $ {} (:at 1629572138414) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629572138414) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1629572138414) (:by |B1y7Rc-Zz) (:text |main!) (:type :leaf)
              |r $ {} (:at 1629572138414) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
              |v $ {} (:at 1629572138414) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629572138414) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                  |j $ {} (:at 1629572138414) (:by |B1y7Rc-Zz) (:text "|\"Running mode:") (:type :leaf)
                  |r $ {} (:at 1629572138414) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629572138414) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                      |j $ {} (:at 1629572138414) (:by |B1y7Rc-Zz) (:text |config/dev?) (:type :leaf)
                      |r $ {} (:at 1629572138414) (:by |B1y7Rc-Zz) (:text "|\"dev") (:type :leaf)
                      |v $ {} (:at 1629572138414) (:by |B1y7Rc-Zz) (:text "|\"release") (:type :leaf)
              |x $ {} (:at 1629572138414) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629572138414) (:by |B1y7Rc-Zz) (:text |render-app!) (:type :leaf)
              |y $ {} (:at 1629572138414) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629572138414) (:by |B1y7Rc-Zz) (:text |connect!) (:type :leaf)
              |yT $ {} (:at 1629572138414) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629572138414) (:by |B1y7Rc-Zz) (:text |add-watch) (:type :leaf)
                  |j $ {} (:at 1629572138414) (:by |B1y7Rc-Zz) (:text |*store) (:type :leaf)
                  |r $ {} (:at 1629572138414) (:by |B1y7Rc-Zz) (:text |:changes) (:type :leaf)
                  |v $ {} (:at 1629572138414) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629572138414) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                      |j $ {} (:at 1629572138414) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629572138414) (:by |B1y7Rc-Zz) (:text |store) (:type :leaf)
                          |j $ {} (:at 1629572138414) (:by |B1y7Rc-Zz) (:text |prev) (:type :leaf)
                      |r $ {} (:at 1629572138414) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629572138414) (:by |B1y7Rc-Zz) (:text |render-app!) (:type :leaf)
              |yj $ {} (:at 1629572138414) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629572138414) (:by |B1y7Rc-Zz) (:text |add-watch) (:type :leaf)
                  |j $ {} (:at 1629572138414) (:by |B1y7Rc-Zz) (:text |*states) (:type :leaf)
                  |r $ {} (:at 1629572138414) (:by |B1y7Rc-Zz) (:text |:changes) (:type :leaf)
                  |v $ {} (:at 1629572138414) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629572138414) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                      |j $ {} (:at 1629572138414) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629572138414) (:by |B1y7Rc-Zz) (:text |states) (:type :leaf)
                          |j $ {} (:at 1629572138414) (:by |B1y7Rc-Zz) (:text |prev) (:type :leaf)
                      |r $ {} (:at 1629572138414) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629572138414) (:by |B1y7Rc-Zz) (:text |render-app!) (:type :leaf)
              |yr $ {} (:at 1629572138414) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629572138414) (:by |B1y7Rc-Zz) (:text |on-page-touch) (:type :leaf)
                  |j $ {} (:at 1629572138414) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629572138414) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                      |j $ {} (:at 1629572138414) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                      |r $ {} (:at 1629572138414) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629572138414) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                          |j $ {} (:at 1629572138414) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629572138414) (:by |B1y7Rc-Zz) (:text |nil?) (:type :leaf)
                              |j $ {} (:at 1629572138414) (:by |B1y7Rc-Zz) (:text |@*store) (:type :leaf)
                          |r $ {} (:at 1629572138414) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629572138414) (:by |B1y7Rc-Zz) (:text |connect!) (:type :leaf)
              |yv $ {} (:at 1629572138414) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629572138414) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                  |j $ {} (:at 1629572138414) (:by |B1y7Rc-Zz) (:text "|\"App started!") (:type :leaf)
          |mount-target $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |def) (:type :leaf)
              |j $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |mount-target) (:type :leaf)
              |r $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |.querySelector) (:type :leaf)
                  |j $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |js/document) (:type :leaf)
                  |r $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text "|\".app") (:type :leaf)
          |on-server-data $ {} (:at 1629571934306) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629571934306) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1629571934306) (:by |B1y7Rc-Zz) (:text |on-server-data) (:type :leaf)
              |r $ {} (:at 1629571934306) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629571934306) (:by |B1y7Rc-Zz) (:text |data) (:type :leaf)
              |v $ {} (:at 1629571934306) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629571934306) (:by |B1y7Rc-Zz) (:text |case-default) (:type :leaf)
                  |j $ {} (:at 1629571934306) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629571934306) (:by |B1y7Rc-Zz) (:text |:kind) (:type :leaf)
                      |j $ {} (:at 1629571934306) (:by |B1y7Rc-Zz) (:text |data) (:type :leaf)
                  |r $ {} (:at 1629571934306) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629571934306) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                      |j $ {} (:at 1629571934306) (:by |B1y7Rc-Zz) (:text "|\"unknown server data kind:") (:type :leaf)
                      |r $ {} (:at 1629571934306) (:by |B1y7Rc-Zz) (:text |data) (:type :leaf)
                  |v $ {} (:at 1629571934306) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629571934306) (:by |B1y7Rc-Zz) (:text |:patch) (:type :leaf)
                      |j $ {} (:at 1629571934306) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629571934306) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                          |j $ {} (:at 1629571934306) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629571934306) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629571934306) (:by |B1y7Rc-Zz) (:text |changes) (:type :leaf)
                                  |j $ {} (:at 1629571934306) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629571934306) (:by |B1y7Rc-Zz) (:text |:data) (:type :leaf)
                                      |j $ {} (:at 1629571934306) (:by |B1y7Rc-Zz) (:text |data) (:type :leaf)
                          |r $ {} (:at 1629571934306) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629571934306) (:by |B1y7Rc-Zz) (:text |when) (:type :leaf)
                              |j $ {} (:at 1629571934306) (:by |B1y7Rc-Zz) (:text |config/dev?) (:type :leaf)
                              |r $ {} (:at 1629571934306) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629571934306) (:by |B1y7Rc-Zz) (:text |js/console.log) (:type :leaf)
                                  |j $ {} (:at 1629571934306) (:by |B1y7Rc-Zz) (:text "|\"Changes") (:type :leaf)
                                  |r $ {} (:at 1629571934306) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629571934306) (:by |B1y7Rc-Zz) (:text |to-js-data) (:type :leaf)
                                      |j $ {} (:at 1629571934306) (:by |B1y7Rc-Zz) (:text |changes) (:type :leaf)
                          |v $ {} (:at 1629571934306) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629571934306) (:by |B1y7Rc-Zz) (:text |reset!) (:type :leaf)
                              |j $ {} (:at 1629571934306) (:by |B1y7Rc-Zz) (:text |*store) (:type :leaf)
                              |r $ {} (:at 1629571934306) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629571934306) (:by |B1y7Rc-Zz) (:text |patch-twig) (:type :leaf)
                                  |j $ {} (:at 1629571934306) (:by |B1y7Rc-Zz) (:text |@*store) (:type :leaf)
                                  |r $ {} (:at 1629571934306) (:by |B1y7Rc-Zz) (:text |changes) (:type :leaf)
          |reload! $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |reload!) (:type :leaf)
              |r $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
              |v $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                  |j $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |or) (:type :leaf)
                      |j $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |some?) (:type :leaf)
                          |j $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |client-errors) (:type :leaf)
                      |r $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |some?) (:type :leaf)
                          |j $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |server-errors) (:type :leaf)
                  |r $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |hud!) (:type :leaf)
                      |j $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:text "|\"error") (:type :leaf)
                      |r $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                          |j $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |client-errors) (:type :leaf)
                          |r $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |&newline) (:type :leaf)
                          |v $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |server-errors) (:type :leaf)
                  |v $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |do) (:type :leaf)
                      |j $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |hud!) (:type :leaf)
                          |j $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:text "|\"inactive") (:type :leaf)
                          |r $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
                      |r $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |remove-watch) (:type :leaf)
                          |j $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |*store) (:type :leaf)
                          |r $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |:changes) (:type :leaf)
                      |v $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |remove-watch) (:type :leaf)
                          |j $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |*states) (:type :leaf)
                          |r $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |:changes) (:type :leaf)
                      |x $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |clear-cache!) (:type :leaf)
                      |y $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |render-app!) (:type :leaf)
                      |yT $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |add-watch) (:type :leaf)
                          |j $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |*store) (:type :leaf)
                          |r $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |:changes) (:type :leaf)
                          |v $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                              |j $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |store) (:type :leaf)
                                  |j $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |prev) (:type :leaf)
                              |r $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |render-app!) (:type :leaf)
                      |yj $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |add-watch) (:type :leaf)
                          |j $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |*states) (:type :leaf)
                          |r $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |:changes) (:type :leaf)
                          |v $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                              |j $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |states) (:type :leaf)
                                  |j $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |prev) (:type :leaf)
                              |r $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |render-app!) (:type :leaf)
                      |yr $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                          |j $ {} (:at 1629572089433) (:by |B1y7Rc-Zz) (:text "|\"Code updated.") (:type :leaf)
          |render-app! $ {} (:at 1629572144691) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629572144691) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1629572144691) (:by |B1y7Rc-Zz) (:text |render-app!) (:type :leaf)
              |r $ {} (:at 1629572144691) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
              |v $ {} (:at 1629572144691) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629572144691) (:by |B1y7Rc-Zz) (:text |render!) (:type :leaf)
                  |j $ {} (:at 1629572144691) (:by |B1y7Rc-Zz) (:text |mount-target) (:type :leaf)
                  |r $ {} (:at 1629572144691) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629572144691) (:by |B1y7Rc-Zz) (:text |comp-container) (:type :leaf)
                      |j $ {} (:at 1629572144691) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629572144691) (:by |B1y7Rc-Zz) (:text |:states) (:type :leaf)
                          |j $ {} (:at 1629572144691) (:by |B1y7Rc-Zz) (:text |@*states) (:type :leaf)
                      |r $ {} (:at 1629572144691) (:by |B1y7Rc-Zz) (:text |@*store) (:type :leaf)
                  |v $ {} (:at 1629572144691) (:by |B1y7Rc-Zz) (:text |dispatch!) (:type :leaf)
          |simulate-login! $ {} (:at 1629571944846) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629571944846) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1629571944846) (:by |B1y7Rc-Zz) (:text |simulate-login!) (:type :leaf)
              |r $ {} (:at 1629571944846) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
              |v $ {} (:at 1629571944846) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629571944846) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                  |j $ {} (:at 1629571944846) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629571944846) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629571944846) (:by |B1y7Rc-Zz) (:text |raw) (:type :leaf)
                          |j $ {} (:at 1629571944846) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629571944846) (:by |B1y7Rc-Zz) (:text |.!getItem) (:type :leaf)
                              |j $ {} (:at 1629571944846) (:by |B1y7Rc-Zz) (:text |js/localStorage) (:type :leaf)
                              |r $ {} (:at 1629571944846) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629571944846) (:by |B1y7Rc-Zz) (:text |:storage-key) (:type :leaf)
                                  |j $ {} (:at 1629571944846) (:by |B1y7Rc-Zz) (:text |config/site) (:type :leaf)
                  |r $ {} (:at 1629571944846) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629571944846) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                      |j $ {} (:at 1629571944846) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629571944846) (:by |B1y7Rc-Zz) (:text |some?) (:type :leaf)
                          |j $ {} (:at 1629571944846) (:by |B1y7Rc-Zz) (:text |raw) (:type :leaf)
                      |r $ {} (:at 1629571944846) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629571944846) (:by |B1y7Rc-Zz) (:text |do) (:type :leaf)
                          |j $ {} (:at 1629571944846) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629571944846) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                              |j $ {} (:at 1629571944846) (:by |B1y7Rc-Zz) (:text "|\"Found storage.") (:type :leaf)
                          |r $ {} (:at 1629571944846) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629571944846) (:by |B1y7Rc-Zz) (:text |dispatch!) (:type :leaf)
                              |j $ {} (:at 1629571944846) (:by |B1y7Rc-Zz) (:text |:user/log-in) (:type :leaf)
                              |r $ {} (:at 1629571944846) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629571944846) (:by |B1y7Rc-Zz) (:text |parse-cirru-edn) (:type :leaf)
                                  |j $ {} (:at 1629571944846) (:by |B1y7Rc-Zz) (:text |raw) (:type :leaf)
                      |v $ {} (:at 1629571944846) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629571944846) (:by |B1y7Rc-Zz) (:text |do) (:type :leaf)
                          |j $ {} (:at 1629571944846) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629571944846) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                              |j $ {} (:at 1629571944846) (:by |B1y7Rc-Zz) (:text "|\"Found no storage.") (:type :leaf)
          |ssr? $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |def) (:type :leaf)
              |j $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |ssr?) (:type :leaf)
              |r $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |some?) (:type :leaf)
                  |j $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |.querySelector) (:type :leaf)
                      |j $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |js/document) (:type :leaf)
                      |r $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text "|\"meta.respo-ssr") (:type :leaf)
        :ns $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:type :expr)
          :data $ {}
            |T $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |ns) (:type :leaf)
            |j $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |app.client) (:type :leaf)
            |r $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:type :expr)
              :data $ {}
                |T $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |:require) (:type :leaf)
                |j $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |render!) (:type :leaf)
                        |r $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |clear-cache!) (:type :leaf)
                        |v $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |realize-ssr!) (:type :leaf)
                |r $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |respo.cursor) (:type :leaf)
                    |r $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |update-states) (:type :leaf)
                |v $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |app.comp.container) (:type :leaf)
                    |r $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |comp-container) (:type :leaf)
                |x $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |cljs.reader) (:type :leaf)
                    |r $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |read-string) (:type :leaf)
                |y $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |app.schema) (:type :leaf)
                    |r $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |schema) (:type :leaf)
                |yT $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |app.config) (:type :leaf)
                    |r $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |config) (:type :leaf)
                |yj $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |ws-edn.client) (:type :leaf)
                    |r $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |ws-connect!) (:type :leaf)
                        |r $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |ws-send!) (:type :leaf)
                |yr $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |recollect.patch) (:type :leaf)
                    |r $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |patch-twig) (:type :leaf)
                |yv $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |cumulo-util.core) (:type :leaf)
                    |r $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |on-page-touch) (:type :leaf)
                |yx $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text "|\"url-parse") (:type :leaf)
                    |r $ {} (:at 1629572152255) (:by |B1y7Rc-Zz) (:text |:default) (:type :leaf)
                    |v $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |url-parse) (:type :leaf)
                |yy5 $ {} (:at 1629572107471) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1629572107471) (:by |B1y7Rc-Zz) (:text "|\"bottom-tip") (:type :leaf)
                    |j $ {} (:at 1629572107471) (:by |B1y7Rc-Zz) (:text |:default) (:type :leaf)
                    |r $ {} (:at 1629572107471) (:by |B1y7Rc-Zz) (:text |hud!) (:type :leaf)
                |yyD $ {} (:at 1629572102235) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1629572102235) (:by |B1y7Rc-Zz) (:text "|\"./calcit.build-errors") (:type :leaf)
                    |j $ {} (:at 1629572102235) (:by |B1y7Rc-Zz) (:text |:default) (:type :leaf)
                    |r $ {} (:at 1629572102235) (:by |B1y7Rc-Zz) (:text |client-errors) (:type :leaf)
                |yyT $ {} (:at 1629572096941) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1629572096941) (:by |B1y7Rc-Zz) (:text "|\"../js-out/calcit.build-errors") (:type :leaf)
                    |j $ {} (:at 1629572096941) (:by |B1y7Rc-Zz) (:text |:default) (:type :leaf)
                    |r $ {} (:at 1629572096941) (:by |B1y7Rc-Zz) (:text |server-errors) (:type :leaf)
        :proc $ {} (:at 1608701533644) (:by |B1y7Rc-Zz) (:type :expr)
          :data $ {}
      |app.comp.container $ {}
        :defs $ {}
          |comp-container $ {} (:at 1500541010211) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541010211) (:by |root) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1500541010211) (:by |root) (:text |comp-container) (:type :leaf)
              |r $ {} (:at 1500541010211) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:text |states) (:type :leaf)
                  |j $ {} (:at 1500541010211) (:by |root) (:text |store) (:type :leaf)
              |v $ {} (:at 1500541010211) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:text |let) (:type :leaf)
                  |j $ {} (:at 1500541010211) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:text |state) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:text |:data) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by |root) (:text |states) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:text |session) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:text |:session) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by |root) (:text |store) (:type :leaf)
                      |r $ {} (:at 1525106928554) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1525106929232) (:by |root) (:text |router) (:type :leaf)
                          |j $ {} (:at 1525106929915) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1525106930860) (:by |root) (:text |:router) (:type :leaf)
                              |j $ {} (:at 1525106931558) (:by |root) (:text |store) (:type :leaf)
                      |v $ {} (:at 1525106933346) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1525106935393) (:by |root) (:text |router-data) (:type :leaf)
                          |j $ {} (:at 1525106935675) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1525106936827) (:by |root) (:text |:data) (:type :leaf)
                              |j $ {} (:at 1525106937665) (:by |root) (:text |router) (:type :leaf)
                  |r $ {} (:at 1500541010211) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:text |if) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:text |nil?) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by |root) (:text |store) (:type :leaf)
                      |r $ {} (:at 1521951403873) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1521951417580) (:by |root) (:text |comp-offline) (:type :leaf)
                      |v $ {} (:at 1500541010211) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:text |div) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:text |:style) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:text |merge) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by |root) (:text |ui/global) (:type :leaf)
                                      |r $ {} (:at 1500541010211) (:by |root) (:text |ui/fullscreen) (:type :leaf)
                                      |v $ {} (:at 1500541010211) (:by |root) (:text |ui/column) (:type :leaf)
                          |r $ {} (:at 1500541010211) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1523120265747) (:by |root) (:text |comp-navigation) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:text |:logged-in?) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by |root) (:text |store) (:type :leaf)
                              |r $ {} (:at 1523120353961) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1523120357277) (:by |root) (:text |:count) (:type :leaf)
                                  |j $ {} (:at 1523120358953) (:by |root) (:text |store) (:type :leaf)
                          |v $ {} (:at 1500541010211) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:text |if) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:text |:logged-in?) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by |root) (:text |store) (:type :leaf)
                              |r $ {} (:at 1500541010211) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:text |case) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:text |:name) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by |root) (:text |router) (:type :leaf)
                                  |n $ {} (:at 1525106918943) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1525106921967) (:by |root) (:text |:home) (:type :leaf)
                                      |j $ {} (:at 1539536764262) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1539711451309) (:by |root) (:text |comp-dashboard) (:type :leaf)
                                          |b $ {} (:at 1608701739918) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |D $ {} (:at 1608701740576) (:by |B1y7Rc-Zz) (:text |>>) (:type :leaf)
                                              |T $ {} (:at 1540042240434) (:by |root) (:text |states) (:type :leaf)
                                              |j $ {} (:at 1608701741589) (:by |B1y7Rc-Zz) (:text |:dashboard) (:type :leaf)
                                          |n $ {} (:at 1540043187329) (:by |root) (:text |router-data) (:type :leaf)
                                  |p $ {} (:at 1539711583563) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1539711586345) (:by |root) (:text |:emotions) (:type :leaf)
                                      |j $ {} (:at 1539711586541) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1539711593599) (:by |root) (:text |comp-emotions-manager) (:type :leaf)
                                          |j $ {} (:at 1540043189409) (:by |root) (:text |router-data) (:type :leaf)
                                  |pT $ {} (:at 1539883293562) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1539883296255) (:by |root) (:text |:edit-emotion) (:type :leaf)
                                      |j $ {} (:at 1539883296911) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1539883302895) (:by |root) (:text |comp-emotion-form) (:type :leaf)
                                          |b $ {} (:at 1608701747376) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |D $ {} (:at 1608701748560) (:by |B1y7Rc-Zz) (:text |>>) (:type :leaf)
                                              |T $ {} (:at 1539883632361) (:by |root) (:text |states) (:type :leaf)
                                              |j $ {} (:at 1608701749400) (:by |B1y7Rc-Zz) (:text |:form) (:type :leaf)
                                          |j $ {} (:at 1539883329378) (:by |root) (:text |router-data) (:type :leaf)
                                  |q $ {} (:at 1539796073422) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1539796076339) (:by |root) (:text |:history) (:type :leaf)
                                      |j $ {} (:at 1539796076859) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1539796093331) (:by |root) (:text |comp-history) (:type :leaf)
                                          |X $ {} (:at 1608701940156) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |D $ {} (:at 1608701940895) (:by |B1y7Rc-Zz) (:text |>>) (:type :leaf)
                                              |T $ {} (:at 1540056369918) (:by |root) (:text |states) (:type :leaf)
                                              |j $ {} (:at 1608701941538) (:by |B1y7Rc-Zz) (:text |:history) (:type :leaf)
                                          |b $ {} (:at 1540043174723) (:by |root) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1540043177364) (:by |root) (:text |:moods) (:type :leaf)
                                              |j $ {} (:at 1540043179483) (:by |root) (:text |router-data) (:type :leaf)
                                          |j $ {} (:at 1540043160196) (:by |root) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1540043161497) (:by |root) (:text |:emotions) (:type :leaf)
                                              |j $ {} (:at 1540043172307) (:by |root) (:text |router-data) (:type :leaf)
                                  |r $ {} (:at 1500541010211) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:text |:profile) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:text |comp-profile) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by nil) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1500541010211) (:by |root) (:text |:user) (:type :leaf)
                                              |j $ {} (:at 1500541010211) (:by |root) (:text |store) (:type :leaf)
                                          |r $ {} (:at 1540043183496) (:by |root) (:text |router-data) (:type :leaf)
                                  |x $ {} (:at 1525106913773) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1525106915016) (:by |root) (:text |<>) (:type :leaf)
                                      |j $ {} (:at 1525106916644) (:by |root) (:text |router) (:type :leaf)
                              |v $ {} (:at 1500541010211) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:text |comp-login) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by |root) (:text |states) (:type :leaf)
                          |w $ {} (:at 1524279203814) (:by |root) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1537032413916) (:by |root) (:text |;) (:type :leaf)
                              |T $ {} (:at 1524279211924) (:by |root) (:text |comp-status-color) (:type :leaf)
                              |j $ {} (:at 1524279213788) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1524279214588) (:by |root) (:text |:color) (:type :leaf)
                                  |j $ {} (:at 1524279215366) (:by |root) (:text |store) (:type :leaf)
                          |x $ {} (:at 1521911488967) (:by |root) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1521911509225) (:by |root) (:text |when) (:type :leaf)
                              |L $ {} (:at 1521911495407) (:by |root) (:text |dev?) (:type :leaf)
                              |T $ {} (:at 1500541010211) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:text |comp-inspect) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by |root) (:text ||Store) (:type :leaf)
                                  |r $ {} (:at 1500541010211) (:by |root) (:text |store) (:type :leaf)
                                  |v $ {} (:at 1500541010211) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:text |:bottom) (:type :leaf)
                                          |j $ {} (:at 1539795925186) (:by |root) (:text |20) (:type :leaf)
                                      |r $ {} (:at 1500541010211) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:text |:left) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by |root) (:text |0) (:type :leaf)
                                      |v $ {} (:at 1500541010211) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:text |:max-width) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by |root) (:text ||100%) (:type :leaf)
                          |y $ {} (:at 1629573226162) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629573226162) (:by |B1y7Rc-Zz) (:text |comp-messages) (:type :leaf)
                              |j $ {} (:at 1629573226162) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629573226162) (:by |B1y7Rc-Zz) (:text |get-in) (:type :leaf)
                                  |j $ {} (:at 1629573226162) (:by |B1y7Rc-Zz) (:text |store) (:type :leaf)
                                  |r $ {} (:at 1629573226162) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629573226162) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                                      |j $ {} (:at 1629573226162) (:by |B1y7Rc-Zz) (:text |:session) (:type :leaf)
                                      |r $ {} (:at 1629573226162) (:by |B1y7Rc-Zz) (:text |:messages) (:type :leaf)
                              |r $ {} (:at 1629573226162) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629573226162) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                              |v $ {} (:at 1629573226162) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629573226162) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                  |j $ {} (:at 1629573226162) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629573226162) (:by |B1y7Rc-Zz) (:text |info) (:type :leaf)
                                      |j $ {} (:at 1629573226162) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                  |r $ {} (:at 1629573226162) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629573226162) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                      |j $ {} (:at 1629573226162) (:by |B1y7Rc-Zz) (:text |:session/remove-message) (:type :leaf)
                                      |r $ {} (:at 1629573226162) (:by |B1y7Rc-Zz) (:text |info) (:type :leaf)
                          |yT $ {} (:at 1521911502552) (:by |root) (:type :expr)
                            :data $ {}
                              |5 $ {} (:at 1537032421072) (:by |root) (:text |;) (:type :leaf)
                              |D $ {} (:at 1521911507241) (:by |root) (:text |when) (:type :leaf)
                              |L $ {} (:at 1521911504664) (:by |root) (:text |dev?) (:type :leaf)
                              |T $ {} (:at 1507828710405) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1507828712159) (:by |root) (:text |comp-reel) (:type :leaf)
                                  |j $ {} (:at 1507829101137) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1507830262253) (:by |root) (:text |:reel-length) (:type :leaf)
                                      |j $ {} (:at 1507829104010) (:by |root) (:text |store) (:type :leaf)
                                  |r $ {} (:at 1507828721052) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1507828722268) (:by |root) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1537030091670) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1537030093393) (:by |root) (:text |:bottom) (:type :leaf)
                                          |j $ {} (:at 1537030094481) (:by |root) (:text |100) (:type :leaf)
                                      |r $ {} (:at 1537030106424) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1537030112903) (:by |root) (:text |:background-color) (:type :leaf)
                                          |j $ {} (:at 1537030114948) (:by |root) (:text |:white) (:type :leaf)
          |comp-offline $ {} (:at 1519314599832) (:by |root) (:type :expr)
            :data $ {}
              |T $ {} (:at 1521951399872) (:by |root) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1519314599832) (:by |root) (:text |comp-offline) (:type :leaf)
              |n $ {} (:at 1521951400852) (:by |root) (:type :expr)
                :data $ {}
              |r $ {} (:at 1519314599832) (:by |root) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1519314599832) (:by |root) (:text |div) (:type :leaf)
                  |j $ {} (:at 1519314599832) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1519314599832) (:by |root) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1519314599832) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1519314599832) (:by |root) (:text |:style) (:type :leaf)
                          |j $ {} (:at 1519314599832) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1519314599832) (:by |root) (:text |merge) (:type :leaf)
                              |j $ {} (:at 1519314599832) (:by |root) (:text |ui/global) (:type :leaf)
                              |r $ {} (:at 1519314599832) (:by |root) (:text |ui/fullscreen) (:type :leaf)
                              |v $ {} (:at 1535564672966) (:by |B1y7Rc-Zz) (:text |ui/column-dispersive) (:type :leaf)
                              |x $ {} (:at 1535565529682) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1535565530129) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1535565530397) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1535565536637) (:by |B1y7Rc-Zz) (:text |:background-color) (:type :leaf)
                                      |j $ {} (:at 1540053995256) (:by |root) (:text |:white) (:type :leaf)
                  |l $ {} (:at 1535564983624) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1535565362594) (:by |B1y7Rc-Zz) (:text |div) (:type :leaf)
                      |j $ {} (:at 1535564984947) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1535564985316) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1535564985627) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1535564987644) (:by |B1y7Rc-Zz) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1535565371727) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1535565373172) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                  |T $ {} (:at 1535564988232) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1535564988883) (:by |B1y7Rc-Zz) (:text |:height) (:type :leaf)
                                      |j $ {} (:at 1535565472380) (:by |B1y7Rc-Zz) (:text |0) (:type :leaf)
                  |n $ {} (:at 1535564675845) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1535564681122) (:by |B1y7Rc-Zz) (:text |div) (:type :leaf)
                      |j $ {} (:at 1535564681371) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1535564681741) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1535564681981) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1535564682940) (:by |B1y7Rc-Zz) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1535564683257) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1535564683549) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1535564683815) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1535564692026) (:by |B1y7Rc-Zz) (:text |:background-image) (:type :leaf)
                                      |j $ {} (:at 1535564692507) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1535564693703) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                                          |j $ {} (:at 1535564698133) (:by |B1y7Rc-Zz) (:text "|\"url(") (:type :leaf)
                                          |n $ {} (:at 1535564699933) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1535564708041) (:by |B1y7Rc-Zz) (:text |:icon) (:type :leaf)
                                              |j $ {} (:at 1535564775736) (:by |B1y7Rc-Zz) (:text |config/site) (:type :leaf)
                                          |r $ {} (:at 1535564696349) (:by |B1y7Rc-Zz) (:text "|\")") (:type :leaf)
                                  |r $ {} (:at 1535564726919) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1535564728738) (:by |B1y7Rc-Zz) (:text |:width) (:type :leaf)
                                      |j $ {} (:at 1540092880075) (:by |root) (:text |86) (:type :leaf)
                                  |v $ {} (:at 1535564733832) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1535564736588) (:by |B1y7Rc-Zz) (:text |:height) (:type :leaf)
                                      |j $ {} (:at 1540092882131) (:by |root) (:text |86) (:type :leaf)
                                  |x $ {} (:at 1535564741439) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1535564745512) (:by |B1y7Rc-Zz) (:text |:background-size) (:type :leaf)
                                      |j $ {} (:at 1535564749164) (:by |B1y7Rc-Zz) (:text |:contain) (:type :leaf)
                  |r $ {} (:at 1519314599832) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1535565436682) (:by |B1y7Rc-Zz) (:text |div) (:type :leaf)
                      |j $ {} (:at 1519314599832) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1519314599832) (:by |root) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1519314599832) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1519314599832) (:by |root) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1519314599832) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1519314599832) (:by |root) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1519314599832) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1519314599832) (:by |root) (:text |:cursor) (:type :leaf)
                                      |j $ {} (:at 1519314599832) (:by |root) (:text |:pointer) (:type :leaf)
                                  |r $ {} (:at 1535565239666) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1535565243041) (:by |B1y7Rc-Zz) (:text |:line-height) (:type :leaf)
                                      |j $ {} (:at 1535565498969) (:by |B1y7Rc-Zz) (:text "|\"32px") (:type :leaf)
                          |r $ {} (:at 1519314599832) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1519314599832) (:by |root) (:text |:on-click) (:type :leaf)
                              |j $ {} (:at 1608701959357) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1608701959946) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                  |L $ {} (:at 1608701960468) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1608701960730) (:by |B1y7Rc-Zz) (:text |e) (:type :leaf)
                                      |j $ {} (:at 1608701961248) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                  |T $ {} (:at 1519314599832) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1608701958892) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                      |j $ {} (:at 1519314599832) (:by |root) (:text |:effect/connect) (:type :leaf)
                                      |r $ {} (:at 1519314599832) (:by |root) (:text |nil) (:type :leaf)
                      |r $ {} (:at 1519314599832) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1519314599832) (:by |root) (:text |<>) (:type :leaf)
                          |j $ {} (:at 1535564856884) (:by |B1y7Rc-Zz) (:text "||No connection...") (:type :leaf)
                          |r $ {} (:at 1500541010211) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:text |:font-family) (:type :leaf)
                                  |j $ {} (:at 1535565688657) (:by |B1y7Rc-Zz) (:text |ui/font-fancy) (:type :leaf)
                              |v $ {} (:at 1500541010211) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:text |:font-size) (:type :leaf)
                                  |j $ {} (:at 1535565156897) (:by |B1y7Rc-Zz) (:text |24) (:type :leaf)
          |comp-status-color $ {} (:at 1524279216692) (:by |root) (:type :expr)
            :data $ {}
              |T $ {} (:at 1524279218316) (:by |root) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1524279216692) (:by |root) (:text |comp-status-color) (:type :leaf)
              |r $ {} (:at 1524279216692) (:by |root) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1524279220380) (:by |root) (:text |color) (:type :leaf)
              |v $ {} (:at 1524279221052) (:by |root) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1524279221503) (:by |root) (:text |div) (:type :leaf)
                  |j $ {} (:at 1524279221753) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1524279222145) (:by |root) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1524279222434) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1524279223333) (:by |root) (:text |:style) (:type :leaf)
                          |j $ {} (:at 1533835122554) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1533835132715) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                              |L $ {} (:at 1533835132973) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1533835133406) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1533835134066) (:by |B1y7Rc-Zz) (:text |size) (:type :leaf)
                                      |j $ {} (:at 1533835156000) (:by |B1y7Rc-Zz) (:text |24) (:type :leaf)
                              |T $ {} (:at 1524279223555) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1524279223903) (:by |root) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1524279224175) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1524279228958) (:by |root) (:text |:width) (:type :leaf)
                                      |j $ {} (:at 1533835137743) (:by |B1y7Rc-Zz) (:text |size) (:type :leaf)
                                  |r $ {} (:at 1524279231457) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1524279232432) (:by |root) (:text |:height) (:type :leaf)
                                      |j $ {} (:at 1533835138984) (:by |B1y7Rc-Zz) (:text |size) (:type :leaf)
                                  |v $ {} (:at 1524279233724) (:by |root) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1524279242067) (:by |root) (:text |:position) (:type :leaf)
                                      |T $ {} (:at 1524279236076) (:by |root) (:text |:absolute) (:type :leaf)
                                  |x $ {} (:at 1524279242693) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1533835259111) (:by |B1y7Rc-Zz) (:text |:bottom) (:type :leaf)
                                      |j $ {} (:at 1524279295251) (:by |root) (:text |60) (:type :leaf)
                                  |y $ {} (:at 1524279244626) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1533835114388) (:by |B1y7Rc-Zz) (:text |:left) (:type :leaf)
                                      |j $ {} (:at 1524279252706) (:by |root) (:text |8) (:type :leaf)
                                  |yT $ {} (:at 1524279259074) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1524279265891) (:by |root) (:text |:background-color) (:type :leaf)
                                      |j $ {} (:at 1524279319762) (:by |root) (:text |color) (:type :leaf)
                                  |yj $ {} (:at 1524279300007) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1524279306393) (:by |root) (:text |:border-radius) (:type :leaf)
                                      |j $ {} (:at 1533835148624) (:by |B1y7Rc-Zz) (:text "|\"50%") (:type :leaf)
                                  |yr $ {} (:at 1524279322054) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1524279323711) (:by |root) (:text |:opacity) (:type :leaf)
                                      |j $ {} (:at 1533835161153) (:by |B1y7Rc-Zz) (:text |0.6) (:type :leaf)
                                  |yv $ {} (:at 1533835167955) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1533835177358) (:by |B1y7Rc-Zz) (:text |:pointer-events) (:type :leaf)
                                      |j $ {} (:at 1533835178211) (:by |B1y7Rc-Zz) (:text |:none) (:type :leaf)
        :ns $ {} (:at 1500541010211) (:by nil) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541010211) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541010211) (:by |root) (:text |app.comp.container) (:type :leaf)
            |v $ {} (:at 1500541010211) (:by nil) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541010211) (:by |root) (:text |:require) (:type :leaf)
                |j $ {} (:at 1500541010211) (:by nil) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:text |hsl.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:text |hsl) (:type :leaf)
                |r $ {} (:at 1500541010211) (:by nil) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1516547378489) (:by |root) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by |root) (:text |ui) (:type :leaf)
                |x $ {} (:at 1500541010211) (:by nil) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:text |defcomp) (:type :leaf)
                        |r $ {} (:at 1500541010211) (:by |root) (:text |<>) (:type :leaf)
                        |t $ {} (:at 1608701735708) (:by |B1y7Rc-Zz) (:text |>>) (:type :leaf)
                        |v $ {} (:at 1500541010211) (:by |root) (:text |div) (:type :leaf)
                        |x $ {} (:at 1500541010211) (:by |root) (:text |span) (:type :leaf)
                        |y $ {} (:at 1507815955483) (:by |root) (:text |button) (:type :leaf)
                |y $ {} (:at 1500541010211) (:by nil) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:text |respo.comp.inspect) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:text |comp-inspect) (:type :leaf)
                |yD $ {} (:at 1507816109319) (:by |root) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1507816109737) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1507816117447) (:by |root) (:text |respo.comp.space) (:type :leaf)
                    |r $ {} (:at 1507816112686) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1507816113982) (:by |root) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1507816114106) (:by |root) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1507816114704) (:by |root) (:text |=<) (:type :leaf)
                |yT $ {} (:at 1500541010211) (:by nil) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1523120275079) (:by |root) (:text |app.comp.navigation) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1523120276563) (:by |root) (:text |comp-navigation) (:type :leaf)
                |yj $ {} (:at 1500541010211) (:by nil) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:text |app.comp.profile) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:text |comp-profile) (:type :leaf)
                |yr $ {} (:at 1500541010211) (:by nil) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:text |app.comp.login) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:text |comp-login) (:type :leaf)
                |yv $ {} (:at 1500541010211) (:by nil) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1529230826824) (:by |root) (:text |respo-message.comp.messages) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1529230829559) (:by |root) (:text |comp-messages) (:type :leaf)
                |yx $ {} (:at 1507828725931) (:by |root) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1507828726338) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1544118413871) (:by |B1y7Rc-Zz) (:text |cumulo-reel.comp.reel) (:type :leaf)
                    |r $ {} (:at 1507828731528) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1507828731735) (:by |root) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1507828731987) (:by |root) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1507828733743) (:by |root) (:text |comp-reel) (:type :leaf)
                |yy $ {} (:at 1521911479054) (:by |root) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1521911480104) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1527789167264) (:by |root) (:text |app.config) (:type :leaf)
                    |r $ {} (:at 1521911483589) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1521911483778) (:by |root) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1521911483935) (:by |root) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1521911485489) (:by |root) (:text |dev?) (:type :leaf)
                |yyj $ {} (:at 1529230793085) (:by |root) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1529230793389) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1529230796079) (:by |root) (:text |app.schema) (:type :leaf)
                    |r $ {} (:at 1529230796499) (:by |root) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1529230797248) (:by |root) (:text |schema) (:type :leaf)
                |yyr $ {} (:at 1535564714854) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1535564716963) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1535564718729) (:by |B1y7Rc-Zz) (:text |app.config) (:type :leaf)
                    |r $ {} (:at 1535564719687) (:by |B1y7Rc-Zz) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1535564721387) (:by |B1y7Rc-Zz) (:text |config) (:type :leaf)
                |yyv $ {} (:at 1539711446574) (:by |root) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1539711446574) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1539711446574) (:by |root) (:text |app.comp.dashboard) (:type :leaf)
                    |r $ {} (:at 1539711446574) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1539711446574) (:by |root) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1539711446574) (:by |root) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1539711446574) (:by |root) (:text |comp-dashboard) (:type :leaf)
                |yyx $ {} (:at 1539711590599) (:by |root) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1539711590599) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1539711590599) (:by |root) (:text |app.comp.emotions) (:type :leaf)
                    |r $ {} (:at 1539711590599) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1539711590599) (:by |root) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1539711590599) (:by |root) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1539711590599) (:by |root) (:text |comp-emotions-manager) (:type :leaf)
                |yyy $ {} (:at 1539796088050) (:by |root) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1539796088050) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1539796088050) (:by |root) (:text |app.comp.history) (:type :leaf)
                    |r $ {} (:at 1539796088050) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1539796088050) (:by |root) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1539796088050) (:by |root) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1539796088050) (:by |root) (:text |comp-history) (:type :leaf)
                |yyyT $ {} (:at 1539883321432) (:by |root) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1539883321432) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1539883321432) (:by |root) (:text |app.comp.emotion-form) (:type :leaf)
                    |r $ {} (:at 1539883321432) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1539883321432) (:by |root) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1539883321432) (:by |root) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1539883321432) (:by |root) (:text |comp-emotion-form) (:type :leaf)
        :proc $ {} (:at 1500541010211) (:by nil) (:type :expr)
          :data $ {}
      |app.comp.dashboard $ {}
        :defs $ {}
          |comp-dashboard $ {} (:at 1500541010211) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541010211) (:by |root) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1500541010211) (:by |root) (:text |comp-dashboard) (:type :leaf)
              |r $ {} (:at 1500541010211) (:by nil) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1540042252495) (:by |root) (:text |states) (:type :leaf)
                  |T $ {} (:at 1575989893018) (:by |B1y7Rc-Zz) (:text |router-data) (:type :leaf)
              |v $ {} (:at 1540042253395) (:by |root) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1540042254032) (:by |root) (:text |let) (:type :leaf)
                  |L $ {} (:at 1540042254280) (:by |root) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1608701781745) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1608701784462) (:by |B1y7Rc-Zz) (:text |cursor) (:type :leaf)
                          |j $ {} (:at 1608701784800) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1608701786016) (:by |B1y7Rc-Zz) (:text |:cursor) (:type :leaf)
                              |j $ {} (:at 1608701787552) (:by |B1y7Rc-Zz) (:text |states) (:type :leaf)
                      |T $ {} (:at 1540042254445) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1540042262151) (:by |root) (:text |state) (:type :leaf)
                          |j $ {} (:at 1540042263323) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1540042264501) (:by |root) (:text |or) (:type :leaf)
                              |j $ {} (:at 1540042265103) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1540042266426) (:by |root) (:text |:data) (:type :leaf)
                                  |j $ {} (:at 1540042267398) (:by |root) (:text |states) (:type :leaf)
                              |r $ {} (:at 1540042268405) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1540042271563) (:by |root) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1540042271879) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1540042280793) (:by |root) (:text |:show-editor?) (:type :leaf)
                                      |j $ {} (:at 1540042281492) (:by |root) (:text |false) (:type :leaf)
                                  |n $ {} (:at 1540042306802) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1540042309100) (:by |root) (:text |:emotion-id) (:type :leaf)
                                      |j $ {} (:at 1540042313590) (:by |root) (:text |nil) (:type :leaf)
                                  |r $ {} (:at 1540042283392) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1540042285245) (:by |root) (:text |:draft) (:type :leaf)
                                      |j $ {} (:at 1540042286284) (:by |root) (:text "|\"") (:type :leaf)
                      |j $ {} (:at 1575989893861) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1575989895064) (:by |B1y7Rc-Zz) (:text |emotions) (:type :leaf)
                          |j $ {} (:at 1575989895390) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1575989896458) (:by |B1y7Rc-Zz) (:text |:emotions) (:type :leaf)
                              |j $ {} (:at 1575989899350) (:by |B1y7Rc-Zz) (:text |router-data) (:type :leaf)
                      |r $ {} (:at 1575990334077) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1575990336948) (:by |B1y7Rc-Zz) (:text |moods) (:type :leaf)
                          |j $ {} (:at 1575990337608) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1575990339469) (:by |B1y7Rc-Zz) (:text |:moods) (:type :leaf)
                              |j $ {} (:at 1575990341352) (:by |B1y7Rc-Zz) (:text |router-data) (:type :leaf)
                  |T $ {} (:at 1500541010211) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:text |div) (:type :leaf)
                      |j $ {} (:at 1539711418045) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1539711418390) (:by |root) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1539795384916) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1539795386614) (:by |root) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1539795386879) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1539795389475) (:by |root) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1539795389866) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1539795391725) (:by |root) (:text |:padding) (:type :leaf)
                                      |j $ {} (:at 1539795398976) (:by |root) (:text "|\"8px 16px") (:type :leaf)
                      |r $ {} (:at 1539711419433) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1540044089552) (:by |root) (:text |comp-title) (:type :leaf)
                          |j $ {} (:at 1540044124469) (:by |root) (:text "|\"What do you feel now?") (:type :leaf)
                      |s $ {} (:at 1540055366959) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1540055367562) (:by |root) (:text |=<) (:type :leaf)
                          |j $ {} (:at 1540055368228) (:by |root) (:text |nil) (:type :leaf)
                          |r $ {} (:at 1540055368797) (:by |root) (:text |16) (:type :leaf)
                      |t $ {} (:at 1540039084513) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1540039088669) (:by |root) (:text |list->) (:type :leaf)
                          |j $ {} (:at 1540039089765) (:by |root) (:text |emotions) (:type :leaf)
                          |r $ {} (:at 1540039090337) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629571389144) (:by |B1y7Rc-Zz) (:text |->) (:type :leaf)
                              |j $ {} (:at 1540039096633) (:by |root) (:text |emotions) (:type :leaf)
                              |l $ {} (:at 1629573180788) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629573202436) (:by |B1y7Rc-Zz) (:text |.to-list) (:type :leaf)
                              |n $ {} (:at 1540044164693) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629571390640) (:by |B1y7Rc-Zz) (:text |.sort-by) (:type :leaf)
                                  |j $ {} (:at 1540044166637) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1540044166950) (:by |root) (:text |fn) (:type :leaf)
                                      |j $ {} (:at 1540044168687) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629571416423) (:by |B1y7Rc-Zz) (:text |pair) (:type :leaf)
                                      |r $ {} (:at 1540044172874) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629571408387) (:by |B1y7Rc-Zz) (:text |negate) (:type :leaf)
                                          |j $ {} (:at 1540044182743) (:by |root) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1540044184145) (:by |root) (:text |:score) (:type :leaf)
                                              |j $ {} (:at 1629571409663) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |D $ {} (:at 1636983136033) (:by |B1y7Rc-Zz) (:text |last) (:type :leaf)
                                                  |T $ {} (:at 1629571411970) (:by |B1y7Rc-Zz) (:text |pair) (:type :leaf)
                              |r $ {} (:at 1540039096964) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629571399407) (:by |B1y7Rc-Zz) (:text |.map-pair) (:type :leaf)
                                  |j $ {} (:at 1540039103848) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1540039103304) (:by |root) (:text |fn) (:type :leaf)
                                      |j $ {} (:at 1540039106471) (:by |root) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1629571400994) (:by |B1y7Rc-Zz) (:text |k) (:type :leaf)
                                          |T $ {} (:at 1540039106190) (:by |root) (:text |emotion) (:type :leaf)
                                      |r $ {} (:at 1629571402619) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1629571403117) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                                          |L $ {} (:at 1629571404231) (:by |B1y7Rc-Zz) (:text |k) (:type :leaf)
                                          |T $ {} (:at 1540039112541) (:by |root) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1540039113891) (:by |root) (:text |comp-emotion) (:type :leaf)
                                              |j $ {} (:at 1540039115060) (:by |root) (:text |emotion) (:type :leaf)
                                              |n $ {} (:at 1575991054462) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
                                              |r $ {} (:at 1540039115698) (:by |root) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1540039197792) (:by |root) (:text |fn) (:type :leaf)
                                                  |j $ {} (:at 1540039117842) (:by |root) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1540039116515) (:by |root) (:text |e) (:type :leaf)
                                                      |j $ {} (:at 1540039119342) (:by |root) (:text |d!) (:type :leaf)
                                                  |r $ {} (:at 1540042441990) (:by |root) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1608701855519) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                                      |b $ {} (:at 1608701856720) (:by |B1y7Rc-Zz) (:text |cursor) (:type :leaf)
                                                      |j $ {} (:at 1540042447287) (:by |root) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1540042487818) (:by |root) (:text |merge) (:type :leaf)
                                                          |j $ {} (:at 1540042449371) (:by |root) (:text |state) (:type :leaf)
                                                          |r $ {} (:at 1540042466728) (:by |root) (:type :expr)
                                                            :data $ {}
                                                              |D $ {} (:at 1540042468144) (:by |root) (:text |{}) (:type :leaf)
                                                              |T $ {} (:at 1540042471698) (:by |root) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1540042451864) (:by |root) (:text |:show-editor?) (:type :leaf)
                                                                  |j $ {} (:at 1540042472275) (:by |root) (:text |true) (:type :leaf)
                                                              |j $ {} (:at 1540042480060) (:by |root) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1540042661632) (:by |root) (:text |:emotion-id) (:type :leaf)
                                                                  |j $ {} (:at 1540042483610) (:by |root) (:type :expr)
                                                                    :data $ {}
                                                                      |T $ {} (:at 1540042483610) (:by |root) (:text |:id) (:type :leaf)
                                                                      |j $ {} (:at 1540042483610) (:by |root) (:text |emotion) (:type :leaf)
                      |v $ {} (:at 1539795404957) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1539795406853) (:by |root) (:text |=<) (:type :leaf)
                          |j $ {} (:at 1539795408791) (:by |root) (:text |nil) (:type :leaf)
                          |r $ {} (:at 1540055295048) (:by |root) (:text |0) (:type :leaf)
                      |x $ {} (:at 1539795410469) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1539795411712) (:by |root) (:text |div) (:type :leaf)
                          |j $ {} (:at 1539795411948) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1539795412258) (:by |root) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1540055277726) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1540055279153) (:by |root) (:text |:style) (:type :leaf)
                                  |j $ {} (:at 1540055284790) (:by |root) (:text |ui/row-parted) (:type :leaf)
                          |n $ {} (:at 1540055285715) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1540055286546) (:by |root) (:text |span) (:type :leaf)
                              |j $ {} (:at 1540055286944) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1540055287263) (:by |root) (:text |{}) (:type :leaf)
                          |r $ {} (:at 1539795413211) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1539795418242) (:by |root) (:text |a) (:type :leaf)
                              |j $ {} (:at 1539795418563) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1539795418890) (:by |root) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1539795419118) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1539795419838) (:by |root) (:text |:style) (:type :leaf)
                                      |j $ {} (:at 1540055310152) (:by |root) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1540055311224) (:by |root) (:text |merge) (:type :leaf)
                                          |T $ {} (:at 1539795421536) (:by |root) (:text |ui/link) (:type :leaf)
                                  |r $ {} (:at 1539795438820) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1539795444014) (:by |root) (:text |:on-click) (:type :leaf)
                                      |j $ {} (:at 1608701767073) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1608701767656) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                          |L $ {} (:at 1608701767990) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1608701768290) (:by |B1y7Rc-Zz) (:text |e) (:type :leaf)
                                              |j $ {} (:at 1608701769187) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                          |T $ {} (:at 1539796198362) (:by |root) (:type :expr)
                                            :data $ {}
                                              |L $ {} (:at 1608701766490) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                              |j $ {} (:at 1539796198362) (:by |root) (:text |:router/change) (:type :leaf)
                                              |r $ {} (:at 1539796198362) (:by |root) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1539796198362) (:by |root) (:text |{}) (:type :leaf)
                                                  |j $ {} (:at 1539796198362) (:by |root) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1539796198362) (:by |root) (:text |:name) (:type :leaf)
                                                      |j $ {} (:at 1539796198362) (:by |root) (:text |:emotions) (:type :leaf)
                              |r $ {} (:at 1539795423153) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1557335201149) (:by |B1y7Rc-Zz) (:text |comp-i) (:type :leaf)
                                  |j $ {} (:at 1557335183197) (:by |B1y7Rc-Zz) (:text |:settings) (:type :leaf)
                                  |r $ {} (:at 1557335205502) (:by |B1y7Rc-Zz) (:text |16) (:type :leaf)
                                  |v $ {} (:at 1557335206106) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1557335207474) (:by |B1y7Rc-Zz) (:text |hsl) (:type :leaf)
                                      |j $ {} (:at 1557335209973) (:by |B1y7Rc-Zz) (:text |200) (:type :leaf)
                                      |r $ {} (:at 1557335210319) (:by |B1y7Rc-Zz) (:text |80) (:type :leaf)
                                      |v $ {} (:at 1557335211623) (:by |B1y7Rc-Zz) (:text |80) (:type :leaf)
                      |xT $ {} (:at 1539796153228) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1539796153228) (:by |root) (:text |=<) (:type :leaf)
                          |j $ {} (:at 1539796153228) (:by |root) (:text |nil) (:type :leaf)
                          |r $ {} (:at 1539796153228) (:by |root) (:text |16) (:type :leaf)
                      |y $ {} (:at 1539795410469) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1539795411712) (:by |root) (:text |div) (:type :leaf)
                          |j $ {} (:at 1539795411948) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1539795412258) (:by |root) (:text |{}) (:type :leaf)
                          |r $ {} (:at 1539795413211) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1539795418242) (:by |root) (:text |a) (:type :leaf)
                              |j $ {} (:at 1539795418563) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1539795418890) (:by |root) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1539795419118) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1539795419838) (:by |root) (:text |:style) (:type :leaf)
                                      |j $ {} (:at 1539795421536) (:by |root) (:text |ui/link) (:type :leaf)
                                  |r $ {} (:at 1539795438820) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1539795444014) (:by |root) (:text |:on-click) (:type :leaf)
                                      |j $ {} (:at 1608701772546) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1608701773097) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                          |L $ {} (:at 1608701773339) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1608701773549) (:by |B1y7Rc-Zz) (:text |e) (:type :leaf)
                                              |j $ {} (:at 1608701774065) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                          |T $ {} (:at 1539796203819) (:by |root) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1608701771766) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                              |j $ {} (:at 1539796203819) (:by |root) (:text |:router/change) (:type :leaf)
                                              |r $ {} (:at 1539796203819) (:by |root) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1539796203819) (:by |root) (:text |{}) (:type :leaf)
                                                  |j $ {} (:at 1539796203819) (:by |root) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1539796203819) (:by |root) (:text |:name) (:type :leaf)
                                                      |j $ {} (:at 1539796203819) (:by |root) (:text |:history) (:type :leaf)
                              |r $ {} (:at 1539795423153) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1539795423489) (:by |root) (:text |<>) (:type :leaf)
                                  |j $ {} (:at 1539796159253) (:by |root) (:text "|\"View history") (:type :leaf)
                      |y5 $ {} (:at 1575990221174) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1575990221719) (:by |B1y7Rc-Zz) (:text |div) (:type :leaf)
                          |j $ {} (:at 1575990221995) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1575990223038) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                          |r $ {} (:at 1575990360429) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1575990364633) (:by |B1y7Rc-Zz) (:text |list->) (:type :leaf)
                              |b $ {} (:at 1575990455132) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1575990455510) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1575990456762) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1629571464863) (:by |B1y7Rc-Zz) (:text |->) (:type :leaf)
                                  |T $ {} (:at 1575990377536) (:by |B1y7Rc-Zz) (:text |moods) (:type :leaf)
                                  |X $ {} (:at 1629573192030) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629573194092) (:by |B1y7Rc-Zz) (:text |.to-list) (:type :leaf)
                                  |b $ {} (:at 1575990474696) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629571480019) (:by |B1y7Rc-Zz) (:text |.sort-by) (:type :leaf)
                                      |j $ {} (:at 1575990483973) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1575990484297) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                          |j $ {} (:at 1575990484769) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629571473531) (:by |B1y7Rc-Zz) (:text |pair) (:type :leaf)
                                          |r $ {} (:at 1575990492842) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |D $ {} (:at 1629572202367) (:by |B1y7Rc-Zz) (:text |negate) (:type :leaf)
                                              |T $ {} (:at 1575990487998) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1575990488902) (:by |B1y7Rc-Zz) (:text |:time) (:type :leaf)
                                                  |j $ {} (:at 1629571475221) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1629571476462) (:by |B1y7Rc-Zz) (:text |last) (:type :leaf)
                                                      |j $ {} (:at 1629571477920) (:by |B1y7Rc-Zz) (:text |pair) (:type :leaf)
                                  |j $ {} (:at 1575990461709) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629571490891) (:by |B1y7Rc-Zz) (:text |.map-pair) (:type :leaf)
                                      |j $ {} (:at 1575990461709) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1575990461709) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                          |j $ {} (:at 1575990461709) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1575990461709) (:by |B1y7Rc-Zz) (:text |k) (:type :leaf)
                                              |j $ {} (:at 1575990461709) (:by |B1y7Rc-Zz) (:text |mood) (:type :leaf)
                                          |r $ {} (:at 1575990461709) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1575990461709) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                                              |j $ {} (:at 1575990461709) (:by |B1y7Rc-Zz) (:text |k) (:type :leaf)
                                              |r $ {} (:at 1575990527641) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |D $ {} (:at 1575990528311) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                                                  |L $ {} (:at 1575990528562) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1575990528692) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1575990531556) (:by |B1y7Rc-Zz) (:text |emotion-id) (:type :leaf)
                                                          |j $ {} (:at 1575990532044) (:by |B1y7Rc-Zz) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1575990536046) (:by |B1y7Rc-Zz) (:text |:emotion-id) (:type :leaf)
                                                              |j $ {} (:at 1575990537328) (:by |B1y7Rc-Zz) (:text |mood) (:type :leaf)
                                                  |T $ {} (:at 1575990461709) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1575990461709) (:by |B1y7Rc-Zz) (:text |div) (:type :leaf)
                                                      |j $ {} (:at 1575990461709) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1575990461709) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                                          |j $ {} (:at 1575991929746) (:by |B1y7Rc-Zz) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1575991930585) (:by |B1y7Rc-Zz) (:text |:style) (:type :leaf)
                                                              |j $ {} (:at 1575991935145) (:by |B1y7Rc-Zz) (:text |ui/row) (:type :leaf)
                                                      |n $ {} (:at 1575990604707) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |D $ {} (:at 1575990605472) (:by |B1y7Rc-Zz) (:text |comp-emotion) (:type :leaf)
                                                          |T $ {} (:at 1575990566030) (:by |B1y7Rc-Zz) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1575990569215) (:by |B1y7Rc-Zz) (:text |get) (:type :leaf)
                                                              |j $ {} (:at 1575990573906) (:by |B1y7Rc-Zz) (:text |emotions) (:type :leaf)
                                                              |r $ {} (:at 1575990575770) (:by |B1y7Rc-Zz) (:text |emotion-id) (:type :leaf)
                                                          |b $ {} (:at 1575991025457) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
                                                          |j $ {} (:at 1575990610755) (:by |B1y7Rc-Zz) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1575990612057) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                                              |j $ {} (:at 1575990617111) (:by |B1y7Rc-Zz) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1575990617845) (:by |B1y7Rc-Zz) (:text |e) (:type :leaf)
                                                                  |j $ {} (:at 1575990618394) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                                      |r $ {} (:at 1575991944904) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |D $ {} (:at 1575991947699) (:by |B1y7Rc-Zz) (:text |div) (:type :leaf)
                                                          |L $ {} (:at 1575991947937) (:by |B1y7Rc-Zz) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1575991948263) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                                              |j $ {} (:at 1575991948516) (:by |B1y7Rc-Zz) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1575991950249) (:by |B1y7Rc-Zz) (:text |:style) (:type :leaf)
                                                                  |j $ {} (:at 1575991953743) (:by |B1y7Rc-Zz) (:type :expr)
                                                                    :data $ {}
                                                                      |T $ {} (:at 1575991958170) (:by |B1y7Rc-Zz) (:text |merge) (:type :leaf)
                                                                      |j $ {} (:at 1575991960334) (:by |B1y7Rc-Zz) (:text |ui/expand) (:type :leaf)
                                                                      |r $ {} (:at 1575991965422) (:by |B1y7Rc-Zz) (:type :expr)
                                                                        :data $ {}
                                                                          |T $ {} (:at 1575991966180) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                                                          |j $ {} (:at 1575991967036) (:by |B1y7Rc-Zz) (:type :expr)
                                                                            :data $ {}
                                                                              |T $ {} (:at 1575991992324) (:by |B1y7Rc-Zz) (:text |:white-space) (:type :leaf)
                                                                              |j $ {} (:at 1575991974236) (:by |B1y7Rc-Zz) (:text |:nowrap) (:type :leaf)
                                                                          |r $ {} (:at 1575991996920) (:by |B1y7Rc-Zz) (:type :expr)
                                                                            :data $ {}
                                                                              |T $ {} (:at 1575992001966) (:by |B1y7Rc-Zz) (:text |:text-overflow) (:type :leaf)
                                                                              |j $ {} (:at 1575992008331) (:by |B1y7Rc-Zz) (:text |:ellipsis) (:type :leaf)
                                                                          |v $ {} (:at 1575992009932) (:by |B1y7Rc-Zz) (:type :expr)
                                                                            :data $ {}
                                                                              |T $ {} (:at 1575992011898) (:by |B1y7Rc-Zz) (:text |:overflow) (:type :leaf)
                                                                              |j $ {} (:at 1575992013062) (:by |B1y7Rc-Zz) (:text |:hidden) (:type :leaf)
                                                          |T $ {} (:at 1575990461709) (:by |B1y7Rc-Zz) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1575990461709) (:by |B1y7Rc-Zz) (:text |<>) (:type :leaf)
                                                              |j $ {} (:at 1575990461709) (:by |B1y7Rc-Zz) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1575990461709) (:by |B1y7Rc-Zz) (:text |:text) (:type :leaf)
                                                                  |j $ {} (:at 1575990461709) (:by |B1y7Rc-Zz) (:text |mood) (:type :leaf)
                      |yD $ {} (:at 1575909412145) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1575909418385) (:by |B1y7Rc-Zz) (:text |comp-modal) (:type :leaf)
                          |r $ {} (:at 1575909428790) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1575909430021) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                              |f $ {} (:at 1608702474398) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1608702474398) (:by |B1y7Rc-Zz) (:text |:style) (:type :leaf)
                                  |j $ {} (:at 1608702474398) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1608702474398) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1608702474398) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1608702474398) (:by |B1y7Rc-Zz) (:text |:width) (:type :leaf)
                                          |j $ {} (:at 1608702474398) (:by |B1y7Rc-Zz) (:text |400) (:type :leaf)
                                      |r $ {} (:at 1608702474398) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1608702474398) (:by |B1y7Rc-Zz) (:text |:max-width) (:type :leaf)
                                          |j $ {} (:at 1608702474398) (:by |B1y7Rc-Zz) (:text "|\"86%") (:type :leaf)
                              |r $ {} (:at 1608702093481) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1608702095623) (:by |B1y7Rc-Zz) (:text |:render) (:type :leaf)
                                  |j $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                      |j $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1608702109457) (:by |B1y7Rc-Zz) (:text |on-close) (:type :leaf)
                                      |r $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |div) (:type :leaf)
                                          |j $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                              |j $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |:style) (:type :leaf)
                                                  |j $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                                      |j $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |:min-width) (:type :leaf)
                                                          |j $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |240) (:type :leaf)
                                                      |r $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |:padding) (:type :leaf)
                                                          |j $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |20) (:type :leaf)
                                          |r $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |div) (:type :leaf)
                                              |j $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                                  |j $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |:style) (:type :leaf)
                                                      |j $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |ui/row-middle) (:type :leaf)
                                              |r $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |<>) (:type :leaf)
                                                  |j $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text "|\"In mood") (:type :leaf)
                                              |v $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |=<) (:type :leaf)
                                                  |j $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |8) (:type :leaf)
                                                  |r $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
                                              |x $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |comp-emotion) (:type :leaf)
                                                  |j $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |get) (:type :leaf)
                                                      |j $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |emotions) (:type :leaf)
                                                      |r $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |:emotion-id) (:type :leaf)
                                                          |j $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |state) (:type :leaf)
                                                  |r $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
                                                  |v $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                                      |j $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                          |v $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |div) (:type :leaf)
                                              |j $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                              |r $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |textarea) (:type :leaf)
                                                  |j $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                                      |j $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |:style) (:type :leaf)
                                                          |j $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |merge) (:type :leaf)
                                                              |j $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |ui/textarea) (:type :leaf)
                                                              |r $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                                                  |j $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:type :expr)
                                                                    :data $ {}
                                                                      |T $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |:width) (:type :leaf)
                                                                      |j $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text "|\"100%") (:type :leaf)
                                                                  |r $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:type :expr)
                                                                    :data $ {}
                                                                      |T $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |:min-height) (:type :leaf)
                                                                      |j $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |160) (:type :leaf)
                                                      |r $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |:value) (:type :leaf)
                                                          |j $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |:draft) (:type :leaf)
                                                              |j $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |state) (:type :leaf)
                                                      |v $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |:placeholder) (:type :leaf)
                                                          |j $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text "|\"Some notes...") (:type :leaf)
                                                      |x $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |:on-input) (:type :leaf)
                                                          |j $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                                              |j $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |e) (:type :leaf)
                                                                  |j $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                                              |r $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                                                  |j $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |cursor) (:type :leaf)
                                                                  |r $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:type :expr)
                                                                    :data $ {}
                                                                      |T $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |assoc) (:type :leaf)
                                                                      |j $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |state) (:type :leaf)
                                                                      |r $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |:draft) (:type :leaf)
                                                                      |v $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:type :expr)
                                                                        :data $ {}
                                                                          |T $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |:value) (:type :leaf)
                                                                          |j $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |e) (:type :leaf)
                                          |x $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |=<) (:type :leaf)
                                              |j $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
                                              |r $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |8) (:type :leaf)
                                          |y $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |div) (:type :leaf)
                                              |j $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                                  |j $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |:style) (:type :leaf)
                                                      |j $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |ui/row-parted) (:type :leaf)
                                              |r $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |span) (:type :leaf)
                                                  |j $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                              |v $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |button) (:type :leaf)
                                                  |j $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                                      |j $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |:style) (:type :leaf)
                                                          |j $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |ui/button) (:type :leaf)
                                                      |r $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |:inner-text) (:type :leaf)
                                                          |j $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text "|\"Submit") (:type :leaf)
                                                      |v $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |:on-click) (:type :leaf)
                                                          |j $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                                              |j $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |e) (:type :leaf)
                                                                  |j $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                                              |r $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                                                  |j $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |:mood/create-one) (:type :leaf)
                                                                  |r $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:type :expr)
                                                                    :data $ {}
                                                                      |T $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                                                      |j $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:type :expr)
                                                                        :data $ {}
                                                                          |T $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |:text) (:type :leaf)
                                                                          |j $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:type :expr)
                                                                            :data $ {}
                                                                              |T $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |:draft) (:type :leaf)
                                                                              |j $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |state) (:type :leaf)
                                                                      |r $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:type :expr)
                                                                        :data $ {}
                                                                          |T $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |:emotion-id) (:type :leaf)
                                                                          |j $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:type :expr)
                                                                            :data $ {}
                                                                              |T $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |:emotion-id) (:type :leaf)
                                                                              |j $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |state) (:type :leaf)
                                                              |v $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                                                  |j $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |cursor) (:type :leaf)
                                                                  |r $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:type :expr)
                                                                    :data $ {}
                                                                      |T $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |assoc) (:type :leaf)
                                                                      |j $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |state) (:type :leaf)
                                                                      |r $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |:show-editor?) (:type :leaf)
                                                                      |v $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |false) (:type :leaf)
                                                                      |x $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |:draft) (:type :leaf)
                                                                      |y $ {} (:at 1608702097059) (:by |B1y7Rc-Zz) (:text "|\"") (:type :leaf)
                          |s $ {} (:at 1608702469994) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1608702469994) (:by |B1y7Rc-Zz) (:text |:show-editor?) (:type :leaf)
                              |j $ {} (:at 1608702469994) (:by |B1y7Rc-Zz) (:text |state) (:type :leaf)
                          |v $ {} (:at 1575909477488) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1575909477488) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                              |j $ {} (:at 1575909477488) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1608701797137) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                              |r $ {} (:at 1575909477488) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1608701800576) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                  |j $ {} (:at 1608701802477) (:by |B1y7Rc-Zz) (:text |cursor) (:type :leaf)
                                  |r $ {} (:at 1575909477488) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1575909477488) (:by |B1y7Rc-Zz) (:text |assoc) (:type :leaf)
                                      |j $ {} (:at 1575909477488) (:by |B1y7Rc-Zz) (:text |state) (:type :leaf)
                                      |r $ {} (:at 1575909477488) (:by |B1y7Rc-Zz) (:text |:show-editor?) (:type :leaf)
                                      |v $ {} (:at 1575909477488) (:by |B1y7Rc-Zz) (:text |false) (:type :leaf)
        :ns $ {} (:at 1500541010211) (:by nil) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541010211) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1539711467256) (:by |root) (:text |app.comp.dashboard) (:type :leaf)
            |v $ {} (:at 1500541010211) (:by nil) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541010211) (:by |root) (:text |:require) (:type :leaf)
                |j $ {} (:at 1500541010211) (:by nil) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1629571452106) (:by |B1y7Rc-Zz) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:text |hsl) (:type :leaf)
                |r $ {} (:at 1500541010211) (:by nil) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1516547394445) (:by |root) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by |root) (:text |ui) (:type :leaf)
                |w $ {} (:at 1523120376505) (:by |root) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1523120376949) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1523120379036) (:by |root) (:text |respo.comp.space) (:type :leaf)
                    |r $ {} (:at 1523120382218) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1523120382545) (:by |root) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1523120382719) (:by |root) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1523120383255) (:by |root) (:text |=<) (:type :leaf)
                |x $ {} (:at 1500541010211) (:by nil) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:text |defcomp) (:type :leaf)
                        |r $ {} (:at 1500541010211) (:by |root) (:text |<>) (:type :leaf)
                        |u $ {} (:at 1540039157751) (:by |root) (:text |list->) (:type :leaf)
                        |v $ {} (:at 1500541010211) (:by |root) (:text |span) (:type :leaf)
                        |x $ {} (:at 1500541010211) (:by |root) (:text |div) (:type :leaf)
                        |xT $ {} (:at 1540042517353) (:by |root) (:text |input) (:type :leaf)
                        |y $ {} (:at 1539795435021) (:by |root) (:text |a) (:type :leaf)
                        |yT $ {} (:at 1540042698810) (:by |root) (:text |button) (:type :leaf)
                        |yj $ {} (:at 1547914249828) (:by |B1y7Rc-Zz) (:text |textarea) (:type :leaf)
                        |yr $ {} (:at 1575990245573) (:by |B1y7Rc-Zz) (:text |pre) (:type :leaf)
                |y $ {} (:at 1536470155450) (:by |root) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1536470155450) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1536470155450) (:by |root) (:text |app.config) (:type :leaf)
                    |r $ {} (:at 1536470161520) (:by |root) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1536470163188) (:by |root) (:text |config) (:type :leaf)
                |yT $ {} (:at 1540039137615) (:by |root) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1540039137615) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1540039137615) (:by |root) (:text |app.comp.emotions) (:type :leaf)
                    |r $ {} (:at 1540039137615) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1540039137615) (:by |root) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1540039137615) (:by |root) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1540039137615) (:by |root) (:text |comp-emotion) (:type :leaf)
                |yv $ {} (:at 1540044096077) (:by |root) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1540044096077) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1540044096077) (:by |root) (:text |app.comp.kit) (:type :leaf)
                    |r $ {} (:at 1540044096077) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1540044096077) (:by |root) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1540044096077) (:by |root) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1540044096077) (:by |root) (:text |comp-title) (:type :leaf)
                |yx $ {} (:at 1540055122491) (:by |root) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1540055123425) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1557335170978) (:by |B1y7Rc-Zz) (:text |feather.core) (:type :leaf)
                    |r $ {} (:at 1540055130785) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1540055131019) (:by |root) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1540055131193) (:by |root) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1557335172396) (:by |B1y7Rc-Zz) (:text |comp-i) (:type :leaf)
                |yy $ {} (:at 1575909497134) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1575909499033) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1575909502405) (:by |B1y7Rc-Zz) (:text |respo-alerts.core) (:type :leaf)
                    |r $ {} (:at 1575909503123) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1575909503301) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1575909503550) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1575909505375) (:by |B1y7Rc-Zz) (:text |comp-modal) (:type :leaf)
        :proc $ {} (:at 1500541010211) (:by nil) (:type :expr)
          :data $ {}
      |app.comp.emotion-form $ {}
        :defs $ {}
          |comp-color-picker $ {} (:at 1547915746139) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1547915747773) (:by |B1y7Rc-Zz) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1547915746139) (:by |B1y7Rc-Zz) (:text |comp-color-picker) (:type :leaf)
              |r $ {} (:at 1547915746139) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1547917448044) (:by |B1y7Rc-Zz) (:text |form) (:type :leaf)
                  |T $ {} (:at 1547916575245) (:by |B1y7Rc-Zz) (:text |on-pick) (:type :leaf)
              |v $ {} (:at 1547915749275) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1547916234410) (:by |B1y7Rc-Zz) (:text |list->) (:type :leaf)
                  |j $ {} (:at 1547915750924) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1547915751233) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                  |v $ {} (:at 1547915827973) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629573276961) (:by |B1y7Rc-Zz) (:text |->) (:type :leaf)
                      |j $ {} (:at 1547915836762) (:by |B1y7Rc-Zz) (:text |default-colors) (:type :leaf)
                      |r $ {} (:at 1547916013157) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1547916014969) (:by |B1y7Rc-Zz) (:text |map) (:type :leaf)
                          |T $ {} (:at 1547916015803) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1547916016341) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                              |L $ {} (:at 1547916016862) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1547916018217) (:by |B1y7Rc-Zz) (:text |color) (:type :leaf)
                              |T $ {} (:at 1547916019484) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1547916020091) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                                  |L $ {} (:at 1547916022003) (:by |B1y7Rc-Zz) (:text |color) (:type :leaf)
                                  |T $ {} (:at 1547916003991) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1547916009290) (:by |B1y7Rc-Zz) (:text |div) (:type :leaf)
                                      |j $ {} (:at 1547916009549) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1547916009872) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1547916024517) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1547916025215) (:by |B1y7Rc-Zz) (:text |:style) (:type :leaf)
                                              |j $ {} (:at 1547916182978) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |D $ {} (:at 1547916183583) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                                                  |L $ {} (:at 1547916183908) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1547916184107) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1547916184792) (:by |B1y7Rc-Zz) (:text |size) (:type :leaf)
                                                          |j $ {} (:at 1547916186815) (:by |B1y7Rc-Zz) (:text |24) (:type :leaf)
                                                  |T $ {} (:at 1547916026768) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1547916027650) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                                      |j $ {} (:at 1547916027908) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1547916032050) (:by |B1y7Rc-Zz) (:text |:background-color) (:type :leaf)
                                                          |j $ {} (:at 1547916032963) (:by |B1y7Rc-Zz) (:text |color) (:type :leaf)
                                                      |r $ {} (:at 1547916034729) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1547916037616) (:by |B1y7Rc-Zz) (:text |:height) (:type :leaf)
                                                          |j $ {} (:at 1547916189883) (:by |B1y7Rc-Zz) (:text |size) (:type :leaf)
                                                      |v $ {} (:at 1547916190264) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1547916192985) (:by |B1y7Rc-Zz) (:text |:width) (:type :leaf)
                                                          |j $ {} (:at 1547916194119) (:by |B1y7Rc-Zz) (:text |size) (:type :leaf)
                                                      |x $ {} (:at 1547916195051) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1547916200747) (:by |B1y7Rc-Zz) (:text |:border-radius) (:type :leaf)
                                                          |j $ {} (:at 1547916249404) (:by |B1y7Rc-Zz) (:text "|\"6px") (:type :leaf)
                                                      |y $ {} (:at 1547916253804) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1547916254953) (:by |B1y7Rc-Zz) (:text |:display) (:type :leaf)
                                                          |j $ {} (:at 1547916258120) (:by |B1y7Rc-Zz) (:text |:inline-block) (:type :leaf)
                                                      |yT $ {} (:at 1547916260362) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1547916262890) (:by |B1y7Rc-Zz) (:text |:margin) (:type :leaf)
                                                          |j $ {} (:at 1547916270707) (:by |B1y7Rc-Zz) (:text "|\"0 8px 8px 0") (:type :leaf)
                                                      |yj $ {} (:at 1547916275806) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1547916283265) (:by |B1y7Rc-Zz) (:text |:cursor) (:type :leaf)
                                                          |j $ {} (:at 1547916278261) (:by |B1y7Rc-Zz) (:text |:pointer) (:type :leaf)
                                          |r $ {} (:at 1547916526641) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1547916529945) (:by |B1y7Rc-Zz) (:text |:on-click) (:type :leaf)
                                              |j $ {} (:at 1547916530294) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1547916530523) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                                  |j $ {} (:at 1547916530854) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1547916532211) (:by |B1y7Rc-Zz) (:text |e) (:type :leaf)
                                                      |j $ {} (:at 1547916534218) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                                  |r $ {} (:at 1547916577785) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1547916579430) (:by |B1y7Rc-Zz) (:text |on-pick) (:type :leaf)
                                                      |j $ {} (:at 1547916580826) (:by |B1y7Rc-Zz) (:text |color) (:type :leaf)
                                                      |r $ {} (:at 1547916582203) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
          |comp-emotion-form $ {} (:at 1500541010211) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541010211) (:by |root) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1500541010211) (:by |root) (:text |comp-emotion-form) (:type :leaf)
              |r $ {} (:at 1500541010211) (:by nil) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1539883644714) (:by |root) (:text |states) (:type :leaf)
                  |T $ {} (:at 1539883357106) (:by |root) (:text |data) (:type :leaf)
              |v $ {} (:at 1539883358280) (:by |root) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1539883359452) (:by |root) (:text |let) (:type :leaf)
                  |L $ {} (:at 1539883359825) (:by |root) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1608701889089) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1608701890504) (:by |B1y7Rc-Zz) (:text |cursor) (:type :leaf)
                          |j $ {} (:at 1608701890914) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1608701892770) (:by |B1y7Rc-Zz) (:text |:cursor) (:type :leaf)
                              |j $ {} (:at 1608701893556) (:by |B1y7Rc-Zz) (:text |states) (:type :leaf)
                      |T $ {} (:at 1539883359976) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1539883361399) (:by |root) (:text |form) (:type :leaf)
                          |j $ {} (:at 1539883674310) (:by |root) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1539883675034) (:by |root) (:text |or) (:type :leaf)
                              |L $ {} (:at 1539883675840) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1539883676637) (:by |root) (:text |:data) (:type :leaf)
                                  |j $ {} (:at 1539883677977) (:by |root) (:text |states) (:type :leaf)
                              |T $ {} (:at 1539883362419) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1539883362783) (:by |root) (:text |or) (:type :leaf)
                                  |j $ {} (:at 1539883366728) (:by |root) (:text |data) (:type :leaf)
                                  |r $ {} (:at 1539883373017) (:by |root) (:text |schema/emotion) (:type :leaf)
                      |j $ {} (:at 1540037070862) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1540037072610) (:by |root) (:text |editing?) (:type :leaf)
                          |j $ {} (:at 1540037073160) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1540037073160) (:by |root) (:text |some?) (:type :leaf)
                              |j $ {} (:at 1540037073160) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1540037073160) (:by |root) (:text |:id) (:type :leaf)
                                  |j $ {} (:at 1540037073160) (:by |root) (:text |form) (:type :leaf)
                      |r $ {} (:at 1629571635973) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629571649167) (:by |B1y7Rc-Zz) (:text |delete-plugin) (:type :leaf)
                          |j $ {} (:at 1629571649784) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629571651734) (:by |B1y7Rc-Zz) (:text |use-confirm) (:type :leaf)
                              |b $ {} (:at 1629571740246) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629571740731) (:by |B1y7Rc-Zz) (:text |>>) (:type :leaf)
                                  |j $ {} (:at 1629571741580) (:by |B1y7Rc-Zz) (:text |states) (:type :leaf)
                                  |r $ {} (:at 1629571744604) (:by |B1y7Rc-Zz) (:text |:delete) (:type :leaf)
                              |j $ {} (:at 1629571655706) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629571655706) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                  |r $ {} (:at 1629571655706) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629571655706) (:by |B1y7Rc-Zz) (:text |:text) (:type :leaf)
                                      |j $ {} (:at 1629571655706) (:by |B1y7Rc-Zz) (:text "|\"Sure to delete?") (:type :leaf)
                  |T $ {} (:at 1500541010211) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:text |div) (:type :leaf)
                      |j $ {} (:at 1539711418045) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1539711418390) (:by |root) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1539795492172) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1539795496048) (:by |root) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1539795499936) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1539795500285) (:by |root) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1539795500500) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1539795502868) (:by |root) (:text |:padding) (:type :leaf)
                                      |j $ {} (:at 1539795505817) (:by |root) (:text "|\"8px 16px") (:type :leaf)
                      |r $ {} (:at 1539711419433) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1540055987903) (:by |root) (:text |div) (:type :leaf)
                          |j $ {} (:at 1540055988164) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1540055988479) (:by |root) (:text |{}) (:type :leaf)
                          |r $ {} (:at 1540055989801) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1540055991517) (:by |root) (:text |comp-title) (:type :leaf)
                              |j $ {} (:at 1540056001568) (:by |root) (:text "|\"Emotion details") (:type :leaf)
                      |t $ {} (:at 1540056005434) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1540056005955) (:by |root) (:text |=<) (:type :leaf)
                          |j $ {} (:at 1540056007030) (:by |root) (:text |nil) (:type :leaf)
                          |r $ {} (:at 1540056007476) (:by |root) (:text |16) (:type :leaf)
                      |v $ {} (:at 1539883403371) (:by |root) (:type :expr)
                        :data $ {}
                          |P $ {} (:at 1540055912577) (:by |root) (:text |comp-field) (:type :leaf)
                          |d $ {} (:at 1540055924401) (:by |root) (:text "|\"Name") (:type :leaf)
                          |r $ {} (:at 1539883404906) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1539883406113) (:by |root) (:text |input) (:type :leaf)
                              |j $ {} (:at 1539883410498) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1539883410817) (:by |root) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1539883411041) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1539883412661) (:by |root) (:text |:style) (:type :leaf)
                                      |j $ {} (:at 1539883414071) (:by |root) (:text |ui/input) (:type :leaf)
                                  |r $ {} (:at 1539883416645) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1539883419114) (:by |root) (:text |:value) (:type :leaf)
                                      |j $ {} (:at 1539883432251) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1539883420325) (:by |root) (:text |:text) (:type :leaf)
                                          |j $ {} (:at 1539883433450) (:by |root) (:text |form) (:type :leaf)
                                  |v $ {} (:at 1539883686793) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1539883692846) (:by |root) (:text |:on-input) (:type :leaf)
                                      |j $ {} (:at 1608701901781) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1608701902401) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                          |L $ {} (:at 1608701902607) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1608701902949) (:by |B1y7Rc-Zz) (:text |e) (:type :leaf)
                                              |j $ {} (:at 1608701903533) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                          |T $ {} (:at 1539883693274) (:by |root) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1608701899762) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                              |b $ {} (:at 1608701901199) (:by |B1y7Rc-Zz) (:text |cursor) (:type :leaf)
                                              |j $ {} (:at 1539883701941) (:by |root) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1539883703321) (:by |root) (:text |assoc) (:type :leaf)
                                                  |j $ {} (:at 1539883707762) (:by |root) (:text |form) (:type :leaf)
                                                  |r $ {} (:at 1539883709708) (:by |root) (:text |:text) (:type :leaf)
                                                  |v $ {} (:at 1539883709941) (:by |root) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1539883711409) (:by |root) (:text |:value) (:type :leaf)
                                                      |j $ {} (:at 1608702011332) (:by |B1y7Rc-Zz) (:text |e) (:type :leaf)
                      |x $ {} (:at 1539883403371) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1540055930931) (:by |root) (:text |comp-field) (:type :leaf)
                          |f $ {} (:at 1540055937030) (:by |root) (:text "|\"Score") (:type :leaf)
                          |r $ {} (:at 1539883404906) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1539883406113) (:by |root) (:text |input) (:type :leaf)
                              |j $ {} (:at 1539883410498) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1539883410817) (:by |root) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1539883411041) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1539883412661) (:by |root) (:text |:style) (:type :leaf)
                                      |j $ {} (:at 1539883414071) (:by |root) (:text |ui/input) (:type :leaf)
                                  |r $ {} (:at 1539883416645) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1539883419114) (:by |root) (:text |:value) (:type :leaf)
                                      |j $ {} (:at 1539883432251) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1539883441681) (:by |root) (:text |:score) (:type :leaf)
                                          |j $ {} (:at 1539883433450) (:by |root) (:text |form) (:type :leaf)
                                  |v $ {} (:at 1539883442869) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1539883444611) (:by |root) (:text |:type) (:type :leaf)
                                      |j $ {} (:at 1539883512828) (:by |root) (:text "|\"number") (:type :leaf)
                                  |x $ {} (:at 1539883717688) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1539883717688) (:by |root) (:text |:on-input) (:type :leaf)
                                      |j $ {} (:at 1608701908614) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1608701909225) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                          |L $ {} (:at 1608701909466) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1608701909763) (:by |B1y7Rc-Zz) (:text |e) (:type :leaf)
                                              |j $ {} (:at 1608701910242) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                          |T $ {} (:at 1539883717688) (:by |root) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1608701906135) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                              |b $ {} (:at 1608701908137) (:by |B1y7Rc-Zz) (:text |cursor) (:type :leaf)
                                              |j $ {} (:at 1539883717688) (:by |root) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1539883717688) (:by |root) (:text |assoc) (:type :leaf)
                                                  |j $ {} (:at 1539883717688) (:by |root) (:text |form) (:type :leaf)
                                                  |r $ {} (:at 1539883723965) (:by |root) (:text |:score) (:type :leaf)
                                                  |v $ {} (:at 1539883717688) (:by |root) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1539883717688) (:by |root) (:text |:value) (:type :leaf)
                                                      |j $ {} (:at 1608702012656) (:by |B1y7Rc-Zz) (:text |e) (:type :leaf)
                      |y $ {} (:at 1539883450054) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1540055941110) (:by |root) (:text |comp-field) (:type :leaf)
                          |f $ {} (:at 1540055944142) (:by |root) (:text "|\"Color") (:type :leaf)
                          |r $ {} (:at 1547915710771) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1547915714627) (:by |B1y7Rc-Zz) (:text |div) (:type :leaf)
                              |L $ {} (:at 1547915712590) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1547915712968) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1547915716773) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1547915719243) (:by |B1y7Rc-Zz) (:text |:style) (:type :leaf)
                                      |j $ {} (:at 1547915721558) (:by |B1y7Rc-Zz) (:text |ui/column) (:type :leaf)
                              |T $ {} (:at 1539883479120) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1539883479120) (:by |root) (:text |input) (:type :leaf)
                                  |j $ {} (:at 1539883479120) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1539883479120) (:by |root) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1539883479120) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1539883479120) (:by |root) (:text |:style) (:type :leaf)
                                          |j $ {} (:at 1540056066978) (:by |root) (:type :expr)
                                            :data $ {}
                                              |D $ {} (:at 1540056068027) (:by |root) (:text |merge) (:type :leaf)
                                              |T $ {} (:at 1539883479120) (:by |root) (:text |ui/input) (:type :leaf)
                                              |j $ {} (:at 1540056068735) (:by |root) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1540056069080) (:by |root) (:text |{}) (:type :leaf)
                                                  |j $ {} (:at 1540056069359) (:by |root) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1540056077584) (:by |root) (:text |:font-family) (:type :leaf)
                                                      |j $ {} (:at 1540056079700) (:by |root) (:text |ui/font-code) (:type :leaf)
                                      |r $ {} (:at 1539883479120) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1539883479120) (:by |root) (:text |:value) (:type :leaf)
                                          |j $ {} (:at 1539883479120) (:by |root) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1539883479120) (:by |root) (:text |:color) (:type :leaf)
                                              |j $ {} (:at 1539883479120) (:by |root) (:text |form) (:type :leaf)
                                      |v $ {} (:at 1539883728009) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1539883728009) (:by |root) (:text |:on-input) (:type :leaf)
                                          |j $ {} (:at 1608701914481) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |D $ {} (:at 1608701915068) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                              |L $ {} (:at 1608701915272) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1608701915551) (:by |B1y7Rc-Zz) (:text |e) (:type :leaf)
                                                  |j $ {} (:at 1608701916060) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                              |T $ {} (:at 1539883728009) (:by |root) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1608701912886) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                                  |b $ {} (:at 1608701913998) (:by |B1y7Rc-Zz) (:text |cursor) (:type :leaf)
                                                  |j $ {} (:at 1539883728009) (:by |root) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1539883728009) (:by |root) (:text |assoc) (:type :leaf)
                                                      |j $ {} (:at 1539883728009) (:by |root) (:text |form) (:type :leaf)
                                                      |r $ {} (:at 1539883731869) (:by |root) (:text |:color) (:type :leaf)
                                                      |v $ {} (:at 1539883728009) (:by |root) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1539883728009) (:by |root) (:text |:value) (:type :leaf)
                                                          |j $ {} (:at 1608702015846) (:by |B1y7Rc-Zz) (:text |e) (:type :leaf)
                              |b $ {} (:at 1547915815092) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1547915815813) (:by |B1y7Rc-Zz) (:text |=<) (:type :leaf)
                                  |j $ {} (:at 1547915817063) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
                                  |r $ {} (:at 1547915817406) (:by |B1y7Rc-Zz) (:text |8) (:type :leaf)
                              |j $ {} (:at 1547915723566) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1547915730848) (:by |B1y7Rc-Zz) (:text |comp-color-picker) (:type :leaf)
                                  |b $ {} (:at 1547917445146) (:by |B1y7Rc-Zz) (:text |form) (:type :leaf)
                                  |j $ {} (:at 1547916551707) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1547916554016) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                      |j $ {} (:at 1547916554392) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1547916555248) (:by |B1y7Rc-Zz) (:text |color) (:type :leaf)
                                          |j $ {} (:at 1547916558174) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                      |r $ {} (:at 1547916559937) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1608701885265) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                          |j $ {} (:at 1608701886925) (:by |B1y7Rc-Zz) (:text |cursor) (:type :leaf)
                                          |r $ {} (:at 1547916565370) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1547916566429) (:by |B1y7Rc-Zz) (:text |assoc) (:type :leaf)
                                              |j $ {} (:at 1547916566991) (:by |B1y7Rc-Zz) (:text |form) (:type :leaf)
                                              |r $ {} (:at 1547916568119) (:by |B1y7Rc-Zz) (:text |:color) (:type :leaf)
                                              |v $ {} (:at 1547916569789) (:by |B1y7Rc-Zz) (:text |color) (:type :leaf)
                      |yD $ {} (:at 1540037140050) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1540037141897) (:by |root) (:text |=<) (:type :leaf)
                          |j $ {} (:at 1540037142471) (:by |root) (:text |nil) (:type :leaf)
                          |r $ {} (:at 1540037143887) (:by |root) (:text |16) (:type :leaf)
                      |yT $ {} (:at 1539884817672) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1539884818706) (:by |root) (:text |div) (:type :leaf)
                          |j $ {} (:at 1539884818952) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1539884819287) (:by |root) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1539884819856) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1539884837063) (:by |root) (:text |:style) (:type :leaf)
                                  |j $ {} (:at 1539884842215) (:by |root) (:text |ui/row-parted) (:type :leaf)
                          |r $ {} (:at 1539884843721) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1539884844747) (:by |root) (:text |span) (:type :leaf)
                              |j $ {} (:at 1539884845004) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1539884845326) (:by |root) (:text |{}) (:type :leaf)
                          |v $ {} (:at 1540037044684) (:by |root) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1540037047089) (:by |root) (:text |span) (:type :leaf)
                              |L $ {} (:at 1540037048359) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1540037048168) (:by |root) (:text |{}) (:type :leaf)
                              |P $ {} (:at 1540037052628) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1540037058827) (:by |root) (:text |when) (:type :leaf)
                                  |j $ {} (:at 1540037081116) (:by |root) (:text |editing?) (:type :leaf)
                                  |n $ {} (:at 1629571681124) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629571681124) (:by |B1y7Rc-Zz) (:text |button) (:type :leaf)
                                      |j $ {} (:at 1629571681124) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629571681124) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1629571681124) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629571681124) (:by |B1y7Rc-Zz) (:text |:style) (:type :leaf)
                                              |j $ {} (:at 1629571681124) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1629571681124) (:by |B1y7Rc-Zz) (:text |merge) (:type :leaf)
                                                  |j $ {} (:at 1629571681124) (:by |B1y7Rc-Zz) (:text |ui/button) (:type :leaf)
                                                  |r $ {} (:at 1629571681124) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1629571681124) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                                      |j $ {} (:at 1629571681124) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1629571681124) (:by |B1y7Rc-Zz) (:text |:color) (:type :leaf)
                                                          |j $ {} (:at 1629571681124) (:by |B1y7Rc-Zz) (:text |:white) (:type :leaf)
                                                      |r $ {} (:at 1629571681124) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1629571681124) (:by |B1y7Rc-Zz) (:text |:background-color) (:type :leaf)
                                                          |j $ {} (:at 1629571681124) (:by |B1y7Rc-Zz) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1629571681124) (:by |B1y7Rc-Zz) (:text |hsl) (:type :leaf)
                                                              |j $ {} (:at 1629571681124) (:by |B1y7Rc-Zz) (:text |10) (:type :leaf)
                                                              |r $ {} (:at 1629571681124) (:by |B1y7Rc-Zz) (:text |50) (:type :leaf)
                                                              |v $ {} (:at 1629571681124) (:by |B1y7Rc-Zz) (:text |70) (:type :leaf)
                                                      |v $ {} (:at 1629571681124) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1629571681124) (:by |B1y7Rc-Zz) (:text |:border) (:type :leaf)
                                                          |j $ {} (:at 1629571681124) (:by |B1y7Rc-Zz) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1629571681124) (:by |B1y7Rc-Zz) (:text |hsl) (:type :leaf)
                                                              |j $ {} (:at 1629571681124) (:by |B1y7Rc-Zz) (:text |10) (:type :leaf)
                                                              |r $ {} (:at 1629571681124) (:by |B1y7Rc-Zz) (:text |50) (:type :leaf)
                                                              |v $ {} (:at 1629571681124) (:by |B1y7Rc-Zz) (:text |60) (:type :leaf)
                                          |r $ {} (:at 1629571681124) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629571681124) (:by |B1y7Rc-Zz) (:text |:inner-text) (:type :leaf)
                                              |j $ {} (:at 1629571681124) (:by |B1y7Rc-Zz) (:text "|\"Delete") (:type :leaf)
                                          |v $ {} (:at 1629571685492) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629571687360) (:by |B1y7Rc-Zz) (:text |:on-click) (:type :leaf)
                                              |j $ {} (:at 1629571687758) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1629571688884) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                                  |j $ {} (:at 1629571689138) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1629571690134) (:by |B1y7Rc-Zz) (:text |e) (:type :leaf)
                                                      |j $ {} (:at 1629571690692) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                                  |r $ {} (:at 1629571693962) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1629571694722) (:by |B1y7Rc-Zz) (:text |.show) (:type :leaf)
                                                      |j $ {} (:at 1629571699103) (:by |B1y7Rc-Zz) (:text |delete-plugin) (:type :leaf)
                                                      |r $ {} (:at 1629571700568) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                                      |v $ {} (:at 1629571701619) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1629571702036) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                                          |j $ {} (:at 1629571702941) (:by |B1y7Rc-Zz) (:type :expr)
                                                            :data $ {}
                                                          |r $ {} (:at 1629571710062) (:by |B1y7Rc-Zz) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1629571710062) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                                              |j $ {} (:at 1629571710062) (:by |B1y7Rc-Zz) (:text |:router/change) (:type :leaf)
                                                              |r $ {} (:at 1629571710062) (:by |B1y7Rc-Zz) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1629571710062) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                                                  |j $ {} (:at 1629571710062) (:by |B1y7Rc-Zz) (:type :expr)
                                                                    :data $ {}
                                                                      |T $ {} (:at 1629571710062) (:by |B1y7Rc-Zz) (:text |:name) (:type :leaf)
                                                                      |j $ {} (:at 1629571710062) (:by |B1y7Rc-Zz) (:text |:emotions) (:type :leaf)
                                                          |v $ {} (:at 1629571710062) (:by |B1y7Rc-Zz) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1629571710062) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                                              |j $ {} (:at 1629571710062) (:by |B1y7Rc-Zz) (:text |:emotion/remove-one) (:type :leaf)
                                                              |r $ {} (:at 1629571710062) (:by |B1y7Rc-Zz) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1629571710062) (:by |B1y7Rc-Zz) (:text |:id) (:type :leaf)
                                                                  |j $ {} (:at 1629571710062) (:by |B1y7Rc-Zz) (:text |form) (:type :leaf)
                              |R $ {} (:at 1540037126325) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1540037127459) (:by |root) (:text |when) (:type :leaf)
                                  |j $ {} (:at 1540037132613) (:by |root) (:text |editing?) (:type :leaf)
                                  |r $ {} (:at 1540037133046) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1540037136572) (:by |root) (:text |=<) (:type :leaf)
                                      |j $ {} (:at 1540037136916) (:by |root) (:text |8) (:type :leaf)
                                      |r $ {} (:at 1540037137439) (:by |root) (:text |nil) (:type :leaf)
                              |T $ {} (:at 1539884846053) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1539884847890) (:by |root) (:text |button) (:type :leaf)
                                  |j $ {} (:at 1539884848217) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1539884848540) (:by |root) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1539884848759) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1539884849418) (:by |root) (:text |:style) (:type :leaf)
                                          |j $ {} (:at 1539884851584) (:by |root) (:text |ui/button) (:type :leaf)
                                      |r $ {} (:at 1539884853458) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1539884855574) (:by |root) (:text |:on-click) (:type :leaf)
                                          |j $ {} (:at 1539884859742) (:by |root) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1539884860065) (:by |root) (:text |fn) (:type :leaf)
                                              |j $ {} (:at 1539884860268) (:by |root) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1539884860476) (:by |root) (:text |e) (:type :leaf)
                                                  |j $ {} (:at 1539884862246) (:by |root) (:text |d!) (:type :leaf)
                                              |r $ {} (:at 1539884864459) (:by |root) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1539884864986) (:by |root) (:text |d!) (:type :leaf)
                                                  |j $ {} (:at 1539884872341) (:by |root) (:text |:emotion/create-one) (:type :leaf)
                                                  |r $ {} (:at 1539884874838) (:by |root) (:text |form) (:type :leaf)
                                              |v $ {} (:at 1539884875909) (:by |root) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1608701927848) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                                  |b $ {} (:at 1608701929020) (:by |B1y7Rc-Zz) (:text |cursor) (:type :leaf)
                                                  |j $ {} (:at 1539884878626) (:by |root) (:text |nil) (:type :leaf)
                                              |x $ {} (:at 1540037119679) (:by |root) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1540037119679) (:by |root) (:text |d!) (:type :leaf)
                                                  |j $ {} (:at 1540037119679) (:by |root) (:text |:router/change) (:type :leaf)
                                                  |r $ {} (:at 1540037119679) (:by |root) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1540037119679) (:by |root) (:text |{}) (:type :leaf)
                                                      |j $ {} (:at 1540037119679) (:by |root) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1540037119679) (:by |root) (:text |:name) (:type :leaf)
                                                          |j $ {} (:at 1540037119679) (:by |root) (:text |:emotions) (:type :leaf)
                                      |v $ {} (:at 1539884893804) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1539884897830) (:by |root) (:text |:inner-text) (:type :leaf)
                                          |j $ {} (:at 1540036808535) (:by |root) (:type :expr)
                                            :data $ {}
                                              |D $ {} (:at 1540036809215) (:by |root) (:text |if) (:type :leaf)
                                              |J $ {} (:at 1540037068572) (:by |root) (:text |editing?) (:type :leaf)
                                              |P $ {} (:at 1547916604675) (:by |B1y7Rc-Zz) (:text "|\"Save") (:type :leaf)
                                              |T $ {} (:at 1539884899204) (:by |root) (:text "|\"Create") (:type :leaf)
                      |yj $ {} (:at 1629571667411) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629571669196) (:by |B1y7Rc-Zz) (:text |.render) (:type :leaf)
                          |j $ {} (:at 1629571672841) (:by |B1y7Rc-Zz) (:text |delete-plugin) (:type :leaf)
          |default-colors $ {} (:at 1547915837266) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1547915837889) (:by |B1y7Rc-Zz) (:text |def) (:type :leaf)
              |j $ {} (:at 1547915837266) (:by |B1y7Rc-Zz) (:text |default-colors) (:type :leaf)
              |r $ {} (:at 1547967245344) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1547967246497) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                  |j $ {} (:at 1547967252681) (:by |B1y7Rc-Zz) (:text "|\"#ff9e96") (:type :leaf)
                  |r $ {} (:at 1547967333274) (:by |B1y7Rc-Zz) (:text "|\"#e7e5e5") (:type :leaf)
                  |v $ {} (:at 1547967331791) (:by |B1y7Rc-Zz) (:text "|\"#baf9c2") (:type :leaf)
                  |x $ {} (:at 1547967330599) (:by |B1y7Rc-Zz) (:text "|\"#c6ded2") (:type :leaf)
                  |y $ {} (:at 1547967329240) (:by |B1y7Rc-Zz) (:text "|\"#5facf6") (:type :leaf)
                  |yT $ {} (:at 1547967327561) (:by |B1y7Rc-Zz) (:text "|\"#c390e8") (:type :leaf)
                  |yj $ {} (:at 1547967326244) (:by |B1y7Rc-Zz) (:text "|\"#ffdd57") (:type :leaf)
                  |yr $ {} (:at 1547967324715) (:by |B1y7Rc-Zz) (:text "|\"#f79800") (:type :leaf)
                  |yv $ {} (:at 1547967322462) (:by |B1y7Rc-Zz) (:text "|\"#cf0027") (:type :leaf)
        :ns $ {} (:at 1500541010211) (:by nil) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541010211) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1539711562542) (:by |root) (:text |app.comp.emotion-form) (:type :leaf)
            |v $ {} (:at 1500541010211) (:by nil) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541010211) (:by |root) (:text |:require) (:type :leaf)
                |j $ {} (:at 1500541010211) (:by nil) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1629571585164) (:by |B1y7Rc-Zz) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:text |hsl) (:type :leaf)
                |r $ {} (:at 1500541010211) (:by nil) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1516547394445) (:by |root) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by |root) (:text |ui) (:type :leaf)
                |w $ {} (:at 1523120376505) (:by |root) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1523120376949) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1523120379036) (:by |root) (:text |respo.comp.space) (:type :leaf)
                    |r $ {} (:at 1523120382218) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1523120382545) (:by |root) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1523120382719) (:by |root) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1523120383255) (:by |root) (:text |=<) (:type :leaf)
                |x $ {} (:at 1500541010211) (:by nil) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:text |defcomp) (:type :leaf)
                        |r $ {} (:at 1500541010211) (:by |root) (:text |<>) (:type :leaf)
                        |sD $ {} (:at 1608701996859) (:by |B1y7Rc-Zz) (:text |>>) (:type :leaf)
                        |tT $ {} (:at 1547916241911) (:by |B1y7Rc-Zz) (:text |list->) (:type :leaf)
                        |v $ {} (:at 1500541010211) (:by |root) (:text |span) (:type :leaf)
                        |x $ {} (:at 1500541010211) (:by |root) (:text |div) (:type :leaf)
                        |y $ {} (:at 1539796302495) (:by |root) (:text |button) (:type :leaf)
                        |yT $ {} (:at 1539883484986) (:by |root) (:text |input) (:type :leaf)
                |y $ {} (:at 1536470155450) (:by |root) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1536470155450) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1536470155450) (:by |root) (:text |app.config) (:type :leaf)
                    |r $ {} (:at 1536470161520) (:by |root) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1536470163188) (:by |root) (:text |config) (:type :leaf)
                |yT $ {} (:at 1539883375803) (:by |root) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1539883376151) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1539883377543) (:by |root) (:text |app.schema) (:type :leaf)
                    |r $ {} (:at 1539883378021) (:by |root) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1539883380834) (:by |root) (:text |schema) (:type :leaf)
                |yj $ {} (:at 1540037656195) (:by |root) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1540037656555) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1608701501750) (:by |B1y7Rc-Zz) (:text |respo-alerts.core) (:type :leaf)
                    |r $ {} (:at 1540037665129) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1540037665318) (:by |root) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1540037665496) (:by |root) (:text |[]) (:type :leaf)
                        |r $ {} (:at 1629571630549) (:by |B1y7Rc-Zz) (:text |use-confirm) (:type :leaf)
                |yr $ {} (:at 1540055905310) (:by |root) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1540055905310) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1540055905310) (:by |root) (:text |app.comp.kit) (:type :leaf)
                    |r $ {} (:at 1540055905310) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1540055905310) (:by |root) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1540055905310) (:by |root) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1540055905310) (:by |root) (:text |comp-field) (:type :leaf)
                        |r $ {} (:at 1540056025161) (:by |root) (:text |comp-title) (:type :leaf)
        :proc $ {} (:at 1500541010211) (:by nil) (:type :expr)
          :data $ {}
      |app.comp.emotions $ {}
        :defs $ {}
          |comp-emotion $ {} (:at 1540038515168) (:by |root) (:type :expr)
            :data $ {}
              |T $ {} (:at 1540038517621) (:by |root) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1540038515168) (:by |root) (:text |comp-emotion) (:type :leaf)
              |r $ {} (:at 1540038515168) (:by |root) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1540038519756) (:by |root) (:text |emotion) (:type :leaf)
                  |b $ {} (:at 1575990991582) (:by |B1y7Rc-Zz) (:text |style) (:type :leaf)
                  |j $ {} (:at 1540038522924) (:by |root) (:text |on-click!) (:type :leaf)
              |v $ {} (:at 1540038537954) (:by |root) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1540038537954) (:by |root) (:text |div) (:type :leaf)
                  |j $ {} (:at 1540038537954) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1540038537954) (:by |root) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1540038537954) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1540038537954) (:by |root) (:text |:style) (:type :leaf)
                          |j $ {} (:at 1575989526467) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1575989528855) (:by |B1y7Rc-Zz) (:text |merge) (:type :leaf)
                              |L $ {} (:at 1575989531739) (:by |B1y7Rc-Zz) (:text |ui/center) (:type :leaf)
                              |T $ {} (:at 1540038537954) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1540038537954) (:by |root) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1540038537954) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1540038537954) (:by |root) (:text |:background-color) (:type :leaf)
                                      |j $ {} (:at 1540038537954) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1540038537954) (:by |root) (:text |:color) (:type :leaf)
                                          |j $ {} (:at 1540038537954) (:by |root) (:text |emotion) (:type :leaf)
                                  |r $ {} (:at 1540038537954) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1540038537954) (:by |root) (:text |:display) (:type :leaf)
                                      |j $ {} (:at 1575989596292) (:by |B1y7Rc-Zz) (:text |:inline-flex) (:type :leaf)
                                  |v $ {} (:at 1540038537954) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1540038537954) (:by |root) (:text |:padding) (:type :leaf)
                                      |j $ {} (:at 1540038616577) (:by |root) (:text "|\"0 16px") (:type :leaf)
                                  |wD $ {} (:at 1575989622045) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1575989622045) (:by |B1y7Rc-Zz) (:text |:line-height) (:type :leaf)
                                      |j $ {} (:at 1575989622045) (:by |B1y7Rc-Zz) (:text "|\"24px") (:type :leaf)
                                  |xT $ {} (:at 1547914140654) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1547914141822) (:by |B1y7Rc-Zz) (:text |:height) (:type :leaf)
                                      |j $ {} (:at 1547914143918) (:by |B1y7Rc-Zz) (:text "|\"24px") (:type :leaf)
                                  |y $ {} (:at 1540038537954) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1540038537954) (:by |root) (:text |:margin) (:type :leaf)
                                      |j $ {} (:at 1540038537954) (:by |root) (:text "|\"0 8px 8px 0") (:type :leaf)
                                  |yT $ {} (:at 1540038537954) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1540038537954) (:by |root) (:text |:border-radius) (:type :leaf)
                                      |j $ {} (:at 1540055073158) (:by |root) (:text "|\"8px") (:type :leaf)
                                  |yj $ {} (:at 1540038537954) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1540038537954) (:by |root) (:text |:color) (:type :leaf)
                                      |j $ {} (:at 1540038537954) (:by |root) (:text |:white) (:type :leaf)
                              |j $ {} (:at 1575990997159) (:by |B1y7Rc-Zz) (:text |style) (:type :leaf)
                      |r $ {} (:at 1540038537954) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1540038537954) (:by |root) (:text |:on-click) (:type :leaf)
                          |j $ {} (:at 1540038556592) (:by |root) (:text |on-click!) (:type :leaf)
                  |r $ {} (:at 1540038537954) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1540038537954) (:by |root) (:text |<>) (:type :leaf)
                      |j $ {} (:at 1540038537954) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1540038537954) (:by |root) (:text |:text) (:type :leaf)
                          |j $ {} (:at 1540038537954) (:by |root) (:text |emotion) (:type :leaf)
          |comp-emotions-manager $ {} (:at 1500541010211) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541010211) (:by |root) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1500541010211) (:by |root) (:text |comp-emotions-manager) (:type :leaf)
              |r $ {} (:at 1500541010211) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1540028299141) (:by |root) (:text |emotions) (:type :leaf)
              |v $ {} (:at 1500541010211) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:text |div) (:type :leaf)
                  |j $ {} (:at 1539711418045) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1539711418390) (:by |root) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1539795492172) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1539795496048) (:by |root) (:text |:style) (:type :leaf)
                          |j $ {} (:at 1539795499936) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1539795500285) (:by |root) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1539795500500) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1539795502868) (:by |root) (:text |:padding) (:type :leaf)
                                  |j $ {} (:at 1539795505817) (:by |root) (:text "|\"8px 16px") (:type :leaf)
                  |r $ {} (:at 1540030714895) (:by |root) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1540030715613) (:by |root) (:text |div) (:type :leaf)
                      |L $ {} (:at 1540030715816) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1540030716150) (:by |root) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1540030717335) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1540030719883) (:by |root) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1540031099547) (:by |root) (:text |ui/row-middle) (:type :leaf)
                      |T $ {} (:at 1539711419433) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1539711419780) (:by |root) (:text |<>) (:type :leaf)
                          |j $ {} (:at 1540030700353) (:by |root) (:text "|\"Emotions") (:type :leaf)
                          |r $ {} (:at 1540030619454) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1540030619831) (:by |root) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1540030620091) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1540030623427) (:by |root) (:text |:font-family) (:type :leaf)
                                  |j $ {} (:at 1540030632884) (:by |root) (:text |ui/font-fancy) (:type :leaf)
                              |r $ {} (:at 1540030688703) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1540030690425) (:by |root) (:text |:font-size) (:type :leaf)
                                  |j $ {} (:at 1540030696359) (:by |root) (:text |24) (:type :leaf)
                      |b $ {} (:at 1540030742949) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1540030743511) (:by |root) (:text |=<) (:type :leaf)
                          |f $ {} (:at 1540055354194) (:by |root) (:text |8) (:type :leaf)
                          |r $ {} (:at 1540030744802) (:by |root) (:text |nil) (:type :leaf)
                      |j $ {} (:at 1540030733370) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1540055388280) (:by |root) (:text |a) (:type :leaf)
                          |j $ {} (:at 1540030733370) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1540030733370) (:by |root) (:text |{}) (:type :leaf)
                              |r $ {} (:at 1540030733370) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1540030733370) (:by |root) (:text |:on-click) (:type :leaf)
                                  |j $ {} (:at 1608701868526) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1608701869081) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                      |L $ {} (:at 1608701869860) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1608701870371) (:by |B1y7Rc-Zz) (:text |e) (:type :leaf)
                                          |j $ {} (:at 1608701871821) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                      |T $ {} (:at 1540030733370) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1608701868024) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                          |j $ {} (:at 1540030733370) (:by |root) (:text |:router/change) (:type :leaf)
                                          |r $ {} (:at 1540030733370) (:by |root) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1540030733370) (:by |root) (:text |{}) (:type :leaf)
                                              |j $ {} (:at 1540030733370) (:by |root) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1540030733370) (:by |root) (:text |:name) (:type :leaf)
                                                  |j $ {} (:at 1540030733370) (:by |root) (:text |:edit-emotion) (:type :leaf)
                                              |r $ {} (:at 1540030733370) (:by |root) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1540030733370) (:by |root) (:text |:data) (:type :leaf)
                                                  |j $ {} (:at 1540030733370) (:by |root) (:text |nil) (:type :leaf)
                              |v $ {} (:at 1540055448268) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1540055449205) (:by |root) (:text |:style) (:type :leaf)
                                  |j $ {} (:at 1540055451299) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1540055451652) (:by |root) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1540055451901) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1540055454399) (:by |root) (:text |:font-size) (:type :leaf)
                                          |j $ {} (:at 1540055455139) (:by |root) (:text |16) (:type :leaf)
                          |r $ {} (:at 1540030733370) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1557335240411) (:by |B1y7Rc-Zz) (:text |comp-i) (:type :leaf)
                              |j $ {} (:at 1557335244783) (:by |B1y7Rc-Zz) (:text |:plus) (:type :leaf)
                              |r $ {} (:at 1557335247237) (:by |B1y7Rc-Zz) (:text |16) (:type :leaf)
                              |v $ {} (:at 1557335247650) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1557335248001) (:by |B1y7Rc-Zz) (:text |hsl) (:type :leaf)
                                  |j $ {} (:at 1557335249228) (:by |B1y7Rc-Zz) (:text |200) (:type :leaf)
                                  |r $ {} (:at 1557335249550) (:by |B1y7Rc-Zz) (:text |80) (:type :leaf)
                                  |v $ {} (:at 1557335249800) (:by |B1y7Rc-Zz) (:text |80) (:type :leaf)
                  |t $ {} (:at 1540055355247) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1540055356922) (:by |root) (:text |=<) (:type :leaf)
                      |j $ {} (:at 1540055358010) (:by |root) (:text |nil) (:type :leaf)
                      |r $ {} (:at 1540055358708) (:by |root) (:text |16) (:type :leaf)
                  |v $ {} (:at 1539796277354) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1539796278449) (:by |root) (:text |div) (:type :leaf)
                      |j $ {} (:at 1539796279867) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1539796280270) (:by |root) (:text |{}) (:type :leaf)
                      |r $ {} (:at 1540028302206) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1540028307569) (:by |root) (:text |list->) (:type :leaf)
                          |j $ {} (:at 1540028308550) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1540028308885) (:by |root) (:text |{}) (:type :leaf)
                          |r $ {} (:at 1540028309377) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629572162525) (:by |B1y7Rc-Zz) (:text |->) (:type :leaf)
                              |j $ {} (:at 1540028311485) (:by |root) (:text |emotions) (:type :leaf)
                              |n $ {} (:at 1629573263991) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629573265138) (:by |B1y7Rc-Zz) (:text |.to-list) (:type :leaf)
                              |r $ {} (:at 1540028312813) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629572166207) (:by |B1y7Rc-Zz) (:text |.map-pair) (:type :leaf)
                                  |j $ {} (:at 1540028316552) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1540028316846) (:by |root) (:text |fn) (:type :leaf)
                                      |j $ {} (:at 1540028317174) (:by |root) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1629572167684) (:by |B1y7Rc-Zz) (:text |k) (:type :leaf)
                                          |T $ {} (:at 1540028329643) (:by |root) (:text |emotion) (:type :leaf)
                                      |r $ {} (:at 1629572168605) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1629572169798) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                                          |L $ {} (:at 1629572171531) (:by |B1y7Rc-Zz) (:text |k) (:type :leaf)
                                          |T $ {} (:at 1540038533727) (:by |root) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1540038535221) (:by |root) (:text |comp-emotion) (:type :leaf)
                                              |j $ {} (:at 1540038563147) (:by |root) (:text |emotion) (:type :leaf)
                                              |n $ {} (:at 1575991073463) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
                                              |r $ {} (:at 1540038565043) (:by |root) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1540038565043) (:by |root) (:text |fn) (:type :leaf)
                                                  |f $ {} (:at 1540038574950) (:by |root) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1540038585491) (:by |root) (:text |e) (:type :leaf)
                                                      |j $ {} (:at 1540038586206) (:by |root) (:text |d!) (:type :leaf)
                                                  |r $ {} (:at 1540038565043) (:by |root) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1540038565043) (:by |root) (:text |d!) (:type :leaf)
                                                      |j $ {} (:at 1540038565043) (:by |root) (:text |:router/change) (:type :leaf)
                                                      |r $ {} (:at 1540038565043) (:by |root) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1540038565043) (:by |root) (:text |{}) (:type :leaf)
                                                          |j $ {} (:at 1540038565043) (:by |root) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1540038565043) (:by |root) (:text |:name) (:type :leaf)
                                                              |j $ {} (:at 1540038565043) (:by |root) (:text |:edit-emotion) (:type :leaf)
                                                          |r $ {} (:at 1540038565043) (:by |root) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1540038565043) (:by |root) (:text |:data) (:type :leaf)
                                                              |j $ {} (:at 1540038565043) (:by |root) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1540038565043) (:by |root) (:text |:id) (:type :leaf)
                                                                  |j $ {} (:at 1540038565043) (:by |root) (:text |emotion) (:type :leaf)
                  |x $ {} (:at 1540030737937) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1540030739383) (:by |root) (:text |=<) (:type :leaf)
                      |j $ {} (:at 1540030739962) (:by |root) (:text |nil) (:type :leaf)
                      |r $ {} (:at 1540030740488) (:by |root) (:text |32) (:type :leaf)
        :ns $ {} (:at 1500541010211) (:by nil) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541010211) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1539711562542) (:by |root) (:text |app.comp.emotions) (:type :leaf)
            |v $ {} (:at 1500541010211) (:by nil) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541010211) (:by |root) (:text |:require) (:type :leaf)
                |j $ {} (:at 1500541010211) (:by nil) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1629571572370) (:by |B1y7Rc-Zz) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:text |hsl) (:type :leaf)
                |r $ {} (:at 1500541010211) (:by nil) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1516547394445) (:by |root) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by |root) (:text |ui) (:type :leaf)
                |w $ {} (:at 1523120376505) (:by |root) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1523120376949) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1523120379036) (:by |root) (:text |respo.comp.space) (:type :leaf)
                    |r $ {} (:at 1523120382218) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1523120382545) (:by |root) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1523120382719) (:by |root) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1523120383255) (:by |root) (:text |=<) (:type :leaf)
                |x $ {} (:at 1500541010211) (:by nil) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:text |defcomp) (:type :leaf)
                        |r $ {} (:at 1500541010211) (:by |root) (:text |<>) (:type :leaf)
                        |u $ {} (:at 1540028365841) (:by |root) (:text |list->) (:type :leaf)
                        |v $ {} (:at 1500541010211) (:by |root) (:text |span) (:type :leaf)
                        |x $ {} (:at 1500541010211) (:by |root) (:text |div) (:type :leaf)
                        |y $ {} (:at 1539796302495) (:by |root) (:text |button) (:type :leaf)
                        |yT $ {} (:at 1540055437322) (:by |root) (:text |a) (:type :leaf)
                |y $ {} (:at 1536470155450) (:by |root) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1536470155450) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1536470155450) (:by |root) (:text |app.config) (:type :leaf)
                    |r $ {} (:at 1536470161520) (:by |root) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1536470163188) (:by |root) (:text |config) (:type :leaf)
                |yj $ {} (:at 1540055423190) (:by |root) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1540055423496) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1557335256114) (:by |B1y7Rc-Zz) (:text |feather.core) (:type :leaf)
                    |r $ {} (:at 1540055428580) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1540055428787) (:by |root) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1540055428956) (:by |root) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1557335252768) (:by |B1y7Rc-Zz) (:text |comp-i) (:type :leaf)
        :proc $ {} (:at 1500541010211) (:by nil) (:type :expr)
          :data $ {}
      |app.comp.history $ {}
        :defs $ {}
          |comp-history $ {} (:at 1500541010211) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541010211) (:by |root) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1500541010211) (:by |root) (:text |comp-history) (:type :leaf)
              |r $ {} (:at 1500541010211) (:by nil) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1540056353693) (:by |root) (:text |states) (:type :leaf)
                  |T $ {} (:at 1540043193510) (:by |root) (:text |moods) (:type :leaf)
                  |j $ {} (:at 1540043195789) (:by |root) (:text |emotions) (:type :leaf)
              |v $ {} (:at 1500541010211) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:text |div) (:type :leaf)
                  |j $ {} (:at 1539711418045) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1539711418390) (:by |root) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1539795384916) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1539795386614) (:by |root) (:text |:style) (:type :leaf)
                          |j $ {} (:at 1547660570342) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1547660571896) (:by |B1y7Rc-Zz) (:text |merge) (:type :leaf)
                              |H $ {} (:at 1547660667695) (:by |B1y7Rc-Zz) (:text |ui/flex) (:type :leaf)
                              |L $ {} (:at 1547660573463) (:by |B1y7Rc-Zz) (:text |ui/column) (:type :leaf)
                              |T $ {} (:at 1539795386879) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1539795389475) (:by |root) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1547660753765) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1547660753765) (:by |B1y7Rc-Zz) (:text |:overflow) (:type :leaf)
                                      |j $ {} (:at 1547660753765) (:by |B1y7Rc-Zz) (:text |:auto) (:type :leaf)
                  |r $ {} (:at 1540043523620) (:by |root) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1540043524256) (:by |root) (:text |div) (:type :leaf)
                      |L $ {} (:at 1540043524480) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1540043524800) (:by |root) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1540043527473) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1540043528424) (:by |root) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1540043532070) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1540043529229) (:by |root) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1540043532810) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1540043533535) (:by |root) (:text |:margin) (:type :leaf)
                                      |j $ {} (:at 1540043537065) (:by |root) (:text "|\"8px 0") (:type :leaf)
                                  |r $ {} (:at 1547660717221) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1547660717221) (:by |B1y7Rc-Zz) (:text |:padding) (:type :leaf)
                                      |j $ {} (:at 1547660717221) (:by |B1y7Rc-Zz) (:text "|\"8px 16px") (:type :leaf)
                      |T $ {} (:at 1539711419433) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1540043484344) (:by |root) (:text |comp-title) (:type :leaf)
                          |j $ {} (:at 1540043487980) (:by |root) (:text "|\"History") (:type :leaf)
                  |v $ {} (:at 1540043546636) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1540043549685) (:by |root) (:text |list->) (:type :leaf)
                      |j $ {} (:at 1540043550861) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1540043551237) (:by |root) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1547660142573) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1547660144332) (:by |B1y7Rc-Zz) (:text |:style) (:type :leaf)
                              |T $ {} (:at 1547660578445) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1547660580051) (:by |B1y7Rc-Zz) (:text |merge) (:type :leaf)
                                  |L $ {} (:at 1547660582037) (:by |B1y7Rc-Zz) (:text |ui/flex) (:type :leaf)
                                  |T $ {} (:at 1547660144776) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1547660145340) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                      |T $ {} (:at 1547660135288) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1547660137508) (:by |B1y7Rc-Zz) (:text |:width) (:type :leaf)
                                          |j $ {} (:at 1547660141972) (:by |B1y7Rc-Zz) (:text "|\"100%") (:type :leaf)
                                      |r $ {} (:at 1547660709645) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1547660709645) (:by |B1y7Rc-Zz) (:text |:padding) (:type :leaf)
                                          |j $ {} (:at 1547660709645) (:by |B1y7Rc-Zz) (:text "|\"8px 16px") (:type :leaf)
                      |r $ {} (:at 1540043551669) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629571830279) (:by |B1y7Rc-Zz) (:text |->) (:type :leaf)
                          |j $ {} (:at 1540043602396) (:by |root) (:text |moods) (:type :leaf)
                          |l $ {} (:at 1629573243798) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629573246978) (:by |B1y7Rc-Zz) (:text |.to-list) (:type :leaf)
                          |n $ {} (:at 1540043614805) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629571831597) (:by |B1y7Rc-Zz) (:text |.sort-by) (:type :leaf)
                              |j $ {} (:at 1540043622365) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1540043622799) (:by |root) (:text |fn) (:type :leaf)
                                  |j $ {} (:at 1540043623380) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629571834391) (:by |B1y7Rc-Zz) (:text |pair) (:type :leaf)
                                  |r $ {} (:at 1540043635271) (:by |root) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1629571838815) (:by |B1y7Rc-Zz) (:text |negate) (:type :leaf)
                                      |T $ {} (:at 1540043629615) (:by |root) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1540043634624) (:by |root) (:text |:time) (:type :leaf)
                                          |T $ {} (:at 1629571835940) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629571836567) (:by |B1y7Rc-Zz) (:text |last) (:type :leaf)
                                              |j $ {} (:at 1629571837211) (:by |B1y7Rc-Zz) (:text |pair) (:type :leaf)
                          |r $ {} (:at 1540043556035) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629571844249) (:by |B1y7Rc-Zz) (:text |.map-pair) (:type :leaf)
                              |j $ {} (:at 1540043569292) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1540043571750) (:by |root) (:text |fn) (:type :leaf)
                                  |j $ {} (:at 1540043572486) (:by |root) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1629571846680) (:by |B1y7Rc-Zz) (:text |k) (:type :leaf)
                                      |T $ {} (:at 1540043604316) (:by |root) (:text |mood) (:type :leaf)
                                  |r $ {} (:at 1629571847755) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1629571849251) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                                      |L $ {} (:at 1629571849619) (:by |B1y7Rc-Zz) (:text |k) (:type :leaf)
                                      |T $ {} (:at 1540044409086) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1540044400625) (:by |root) (:text |comp-record) (:type :leaf)
                                          |b $ {} (:at 1608702034413) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |D $ {} (:at 1608702035285) (:by |B1y7Rc-Zz) (:text |>>) (:type :leaf)
                                              |T $ {} (:at 1540056351165) (:by |root) (:text |states) (:type :leaf)
                                              |j $ {} (:at 1608702036465) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1608702036465) (:by |B1y7Rc-Zz) (:text |:id) (:type :leaf)
                                                  |j $ {} (:at 1608702036465) (:by |B1y7Rc-Zz) (:text |mood) (:type :leaf)
                                          |j $ {} (:at 1540044413613) (:by |root) (:text |mood) (:type :leaf)
                                          |r $ {} (:at 1540044429310) (:by |root) (:text |emotions) (:type :leaf)
          |comp-record $ {} (:at 1540044400625) (:by |root) (:type :expr)
            :data $ {}
              |T $ {} (:at 1540044402286) (:by |root) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1540044400625) (:by |root) (:text |comp-record) (:type :leaf)
              |n $ {} (:at 1540044403490) (:by |root) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1540056342688) (:by |root) (:text |states) (:type :leaf)
                  |T $ {} (:at 1540044417261) (:by |root) (:text |mood) (:type :leaf)
                  |j $ {} (:at 1540044426646) (:by |root) (:text |emotions) (:type :leaf)
              |r $ {} (:at 1629571725641) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1629571726673) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                  |L $ {} (:at 1629571727246) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629571727330) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629571733787) (:by |B1y7Rc-Zz) (:text |remove-plugin) (:type :leaf)
                          |j $ {} (:at 1629571747885) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629571750480) (:by |B1y7Rc-Zz) (:text |use-confirm) (:type :leaf)
                              |j $ {} (:at 1629571763562) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629571763981) (:by |B1y7Rc-Zz) (:text |>>) (:type :leaf)
                                  |j $ {} (:at 1629571766459) (:by |B1y7Rc-Zz) (:text |states) (:type :leaf)
                                  |r $ {} (:at 1629571769950) (:by |B1y7Rc-Zz) (:text |:remove) (:type :leaf)
                              |r $ {} (:at 1629571774723) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629571774723) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                  |r $ {} (:at 1629571774723) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629571774723) (:by |B1y7Rc-Zz) (:text |:text) (:type :leaf)
                                      |j $ {} (:at 1629571774723) (:by |B1y7Rc-Zz) (:text "|\"Sure to delete?") (:type :leaf)
                  |T $ {} (:at 1540044400625) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1540044400625) (:by |root) (:text |div) (:type :leaf)
                      |j $ {} (:at 1540044400625) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1540044400625) (:by |root) (:text |{}) (:type :leaf)
                          |b $ {} (:at 1547660300512) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1547660304934) (:by |B1y7Rc-Zz) (:text |:class-name) (:type :leaf)
                              |j $ {} (:at 1547660440165) (:by |B1y7Rc-Zz) (:text "|\"") (:type :leaf)
                          |j $ {} (:at 1540044400625) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1540044400625) (:by |root) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1547914048360) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1547914050035) (:by |B1y7Rc-Zz) (:text |merge) (:type :leaf)
                                  |L $ {} (:at 1547914050919) (:by |B1y7Rc-Zz) (:text |ui/column) (:type :leaf)
                                  |T $ {} (:at 1540044400625) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1540044400625) (:by |root) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1540044400625) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1540044400625) (:by |root) (:text |:border-bottom) (:type :leaf)
                                          |j $ {} (:at 1540044400625) (:by |root) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629572179903) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                                              |j $ {} (:at 1629572186487) (:by |B1y7Rc-Zz) (:text "|\"1px solid ") (:type :leaf)
                                              |r $ {} (:at 1629572187352) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1629572187352) (:by |B1y7Rc-Zz) (:text |hsl) (:type :leaf)
                                                  |j $ {} (:at 1629572187352) (:by |B1y7Rc-Zz) (:text |0) (:type :leaf)
                                                  |r $ {} (:at 1629572187352) (:by |B1y7Rc-Zz) (:text |0) (:type :leaf)
                                                  |v $ {} (:at 1629572187352) (:by |B1y7Rc-Zz) (:text |90) (:type :leaf)
                                      |r $ {} (:at 1540044400625) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1540044400625) (:by |root) (:text |:padding) (:type :leaf)
                                          |j $ {} (:at 1540044400625) (:by |root) (:text "|\"8px 0") (:type :leaf)
                      |r $ {} (:at 1547914056132) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1547914056867) (:by |B1y7Rc-Zz) (:text |div) (:type :leaf)
                          |L $ {} (:at 1547914057076) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1547914058012) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1547914059648) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1547914060842) (:by |B1y7Rc-Zz) (:text |:style) (:type :leaf)
                                  |j $ {} (:at 1547914067893) (:by |B1y7Rc-Zz) (:text |ui/row-parted) (:type :leaf)
                          |T $ {} (:at 1547914074008) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1547914077658) (:by |B1y7Rc-Zz) (:text |div) (:type :leaf)
                              |L $ {} (:at 1547914078050) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1547914078393) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1547914078976) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1547914079715) (:by |B1y7Rc-Zz) (:text |:style) (:type :leaf)
                                      |j $ {} (:at 1547914096748) (:by |B1y7Rc-Zz) (:text |ui/row-middle) (:type :leaf)
                              |P $ {} (:at 1547914085740) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1547914085740) (:by |B1y7Rc-Zz) (:text |comp-emotion) (:type :leaf)
                                  |j $ {} (:at 1547914085740) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1547914085740) (:by |B1y7Rc-Zz) (:text |get) (:type :leaf)
                                      |j $ {} (:at 1547914085740) (:by |B1y7Rc-Zz) (:text |emotions) (:type :leaf)
                                      |r $ {} (:at 1547914085740) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1547914085740) (:by |B1y7Rc-Zz) (:text |:emotion-id) (:type :leaf)
                                          |j $ {} (:at 1547914085740) (:by |B1y7Rc-Zz) (:text |mood) (:type :leaf)
                                  |n $ {} (:at 1575991087971) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
                                  |r $ {} (:at 1547914085740) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
                              |T $ {} (:at 1540044492405) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1540044492405) (:by |root) (:text |comp-hint) (:type :leaf)
                                  |j $ {} (:at 1540044492405) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1540044492405) (:by |root) (:text |->) (:type :leaf)
                                      |j $ {} (:at 1540044492405) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1540044492405) (:by |root) (:text |dayjs) (:type :leaf)
                                          |j $ {} (:at 1540044492405) (:by |root) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1540044492405) (:by |root) (:text |:time) (:type :leaf)
                                              |j $ {} (:at 1540044492405) (:by |root) (:text |mood) (:type :leaf)
                                      |r $ {} (:at 1540044492405) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1540044492405) (:by |root) (:text |.format) (:type :leaf)
                                          |j $ {} (:at 1540044492405) (:by |root) (:text "|\"MM-DD HH:mm") (:type :leaf)
                          |b $ {} (:at 1629571781267) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629571782487) (:by |B1y7Rc-Zz) (:text |span) (:type :leaf)
                              |j $ {} (:at 1629571783155) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629571783531) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1629571785860) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629571789254) (:by |B1y7Rc-Zz) (:text |:on-click) (:type :leaf)
                                      |j $ {} (:at 1629571789561) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629571789906) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                          |j $ {} (:at 1629571790137) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629571790587) (:by |B1y7Rc-Zz) (:text |e) (:type :leaf)
                                              |j $ {} (:at 1629571791267) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                          |r $ {} (:at 1629571792265) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629571793220) (:by |B1y7Rc-Zz) (:text |.show) (:type :leaf)
                                              |j $ {} (:at 1629571798923) (:by |B1y7Rc-Zz) (:text |remove-plugin) (:type :leaf)
                                              |r $ {} (:at 1629571800045) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                              |v $ {} (:at 1629571800722) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1629571801553) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                                  |b $ {} (:at 1629571815875) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                  |j $ {} (:at 1629571805620) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1629571805620) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                                      |j $ {} (:at 1629571805620) (:by |B1y7Rc-Zz) (:text |:mood/remove-one) (:type :leaf)
                                                      |r $ {} (:at 1629571805620) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1629571805620) (:by |B1y7Rc-Zz) (:text |:id) (:type :leaf)
                                                          |j $ {} (:at 1629571805620) (:by |B1y7Rc-Zz) (:text |mood) (:type :leaf)
                              |r $ {} (:at 1629571784551) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629571784551) (:by |B1y7Rc-Zz) (:text |comp-i) (:type :leaf)
                                  |j $ {} (:at 1629571784551) (:by |B1y7Rc-Zz) (:text |:x) (:type :leaf)
                                  |r $ {} (:at 1629571784551) (:by |B1y7Rc-Zz) (:text |14) (:type :leaf)
                                  |v $ {} (:at 1629571784551) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629571784551) (:by |B1y7Rc-Zz) (:text |hsl) (:type :leaf)
                                      |j $ {} (:at 1629571784551) (:by |B1y7Rc-Zz) (:text |0) (:type :leaf)
                                      |r $ {} (:at 1629571784551) (:by |B1y7Rc-Zz) (:text |0) (:type :leaf)
                                      |v $ {} (:at 1629571784551) (:by |B1y7Rc-Zz) (:text |80) (:type :leaf)
                      |v $ {} (:at 1547660253880) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1547660349522) (:by |B1y7Rc-Zz) (:text |div) (:type :leaf)
                          |T $ {} (:at 1547660260885) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1547660261444) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                              |T $ {} (:at 1540044481676) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1547660260487) (:by |B1y7Rc-Zz) (:text |:inner-text) (:type :leaf)
                                  |j $ {} (:at 1540044481676) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1540044481676) (:by |root) (:text |:text) (:type :leaf)
                                      |j $ {} (:at 1540044481676) (:by |root) (:text |mood) (:type :leaf)
                              |j $ {} (:at 1547660262137) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1547660263105) (:by |B1y7Rc-Zz) (:text |:style) (:type :leaf)
                                  |j $ {} (:at 1547660263332) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1547660267547) (:by |B1y7Rc-Zz) (:text |merge) (:type :leaf)
                                      |j $ {} (:at 1547660269975) (:by |B1y7Rc-Zz) (:text |ui/flex) (:type :leaf)
                                      |r $ {} (:at 1547660270577) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1547660270927) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1547660358540) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1547660361900) (:by |B1y7Rc-Zz) (:text |:word-break) (:type :leaf)
                                              |j $ {} (:at 1547660365113) (:by |B1y7Rc-Zz) (:text |:break-all) (:type :leaf)
        :ns $ {} (:at 1500541010211) (:by nil) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541010211) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1539796030071) (:by |root) (:text |app.comp.history) (:type :leaf)
            |v $ {} (:at 1500541010211) (:by nil) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541010211) (:by |root) (:text |:require) (:type :leaf)
                |j $ {} (:at 1500541010211) (:by nil) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1629571823011) (:by |B1y7Rc-Zz) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:text |hsl) (:type :leaf)
                |r $ {} (:at 1500541010211) (:by nil) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1516547394445) (:by |root) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by |root) (:text |ui) (:type :leaf)
                |w $ {} (:at 1523120376505) (:by |root) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1523120376949) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1523120379036) (:by |root) (:text |respo.comp.space) (:type :leaf)
                    |r $ {} (:at 1523120382218) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1523120382545) (:by |root) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1523120382719) (:by |root) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1523120383255) (:by |root) (:text |=<) (:type :leaf)
                |x $ {} (:at 1500541010211) (:by nil) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:text |defcomp) (:type :leaf)
                        |n $ {} (:at 1608702045562) (:by |B1y7Rc-Zz) (:text |>>) (:type :leaf)
                        |r $ {} (:at 1500541010211) (:by |root) (:text |<>) (:type :leaf)
                        |u $ {} (:at 1540043734966) (:by |root) (:text |list->) (:type :leaf)
                        |v $ {} (:at 1500541010211) (:by |root) (:text |span) (:type :leaf)
                        |x $ {} (:at 1500541010211) (:by |root) (:text |div) (:type :leaf)
                        |y $ {} (:at 1539795435021) (:by |root) (:text |a) (:type :leaf)
                |y $ {} (:at 1536470155450) (:by |root) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1536470155450) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1536470155450) (:by |root) (:text |app.config) (:type :leaf)
                    |r $ {} (:at 1536470161520) (:by |root) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1536470163188) (:by |root) (:text |config) (:type :leaf)
                |yT $ {} (:at 1540043480251) (:by |root) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1540043480251) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1540043480251) (:by |root) (:text |app.comp.kit) (:type :leaf)
                    |r $ {} (:at 1540043480251) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1540043480251) (:by |root) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1540043480251) (:by |root) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1540043480251) (:by |root) (:text |comp-title) (:type :leaf)
                |yr $ {} (:at 1540043727039) (:by |root) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1540043727039) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1540043727039) (:by |root) (:text |app.comp.emotions) (:type :leaf)
                    |r $ {} (:at 1540043727039) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1540043727039) (:by |root) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1540043727039) (:by |root) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1540043727039) (:by |root) (:text |comp-emotion) (:type :leaf)
                |yv $ {} (:at 1540043766633) (:by |root) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1540043766990) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1540043768453) (:by |root) (:text "|\"dayjs") (:type :leaf)
                    |r $ {} (:at 1629571761431) (:by |B1y7Rc-Zz) (:text |:default) (:type :leaf)
                    |v $ {} (:at 1540043771502) (:by |root) (:text |dayjs) (:type :leaf)
                |yx $ {} (:at 1540043949874) (:by |root) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1540043949874) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1540043949874) (:by |root) (:text |app.comp.kit) (:type :leaf)
                    |r $ {} (:at 1540043949874) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1540043949874) (:by |root) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1540043949874) (:by |root) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1540043949874) (:by |root) (:text |comp-hint) (:type :leaf)
                |yy $ {} (:at 1540056173991) (:by |root) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1540056174274) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1557335086604) (:by |B1y7Rc-Zz) (:text |feather.core) (:type :leaf)
                    |r $ {} (:at 1540056179840) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1540056180057) (:by |root) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1540056180283) (:by |root) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1540056182384) (:by |root) (:text |comp-icon) (:type :leaf)
                        |r $ {} (:at 1557335091212) (:by |B1y7Rc-Zz) (:text |comp-i) (:type :leaf)
                |yyT $ {} (:at 1540056323731) (:by |root) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1540056324070) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1608701510182) (:by |B1y7Rc-Zz) (:text |respo-alerts.core) (:type :leaf)
                    |r $ {} (:at 1540056332966) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1540056333160) (:by |root) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1540056334165) (:by |root) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1629571755875) (:by |B1y7Rc-Zz) (:text |use-confirm) (:type :leaf)
        :proc $ {} (:at 1500541010211) (:by nil) (:type :expr)
          :data $ {}
      |app.comp.kit $ {}
        :defs $ {}
          |comp-field $ {} (:at 1540055836797) (:by |root) (:type :expr)
            :data $ {}
              |T $ {} (:at 1540055840850) (:by |root) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1540055836797) (:by |root) (:text |comp-field) (:type :leaf)
              |r $ {} (:at 1540055836797) (:by |root) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1540055842860) (:by |root) (:text |label) (:type :leaf)
                  |j $ {} (:at 1540055845367) (:by |root) (:text |child) (:type :leaf)
              |v $ {} (:at 1540055845874) (:by |root) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1540055846338) (:by |root) (:text |div) (:type :leaf)
                  |j $ {} (:at 1540055846595) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1540055846920) (:by |root) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1540055849949) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1540055850643) (:by |root) (:text |:style) (:type :leaf)
                          |j $ {} (:at 1540056031652) (:by |root) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1540056032664) (:by |root) (:text |merge) (:type :leaf)
                              |T $ {} (:at 1547915796291) (:by |B1y7Rc-Zz) (:text |ui/row) (:type :leaf)
                              |j $ {} (:at 1540056033485) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1540056033893) (:by |root) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1540056034749) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1540056039195) (:by |root) (:text |:margin-bottom) (:type :leaf)
                                      |j $ {} (:at 1540056040466) (:by |root) (:text |16) (:type :leaf)
                  |r $ {} (:at 1540055856901) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1540055866495) (:by |root) (:text |div) (:type :leaf)
                      |j $ {} (:at 1540055869239) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1540055867796) (:by |root) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1540055961219) (:by |root) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1540055964430) (:by |root) (:text |:style) (:type :leaf)
                              |T $ {} (:at 1540055970053) (:by |root) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1540055970625) (:by |root) (:text |{}) (:type :leaf)
                                  |T $ {} (:at 1540055869761) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1540055873251) (:by |root) (:text |:width) (:type :leaf)
                                      |j $ {} (:at 1540055977851) (:by |root) (:text |64) (:type :leaf)
                      |r $ {} (:at 1540055882201) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1540055882569) (:by |root) (:text |<>) (:type :leaf)
                          |j $ {} (:at 1540055884070) (:by |root) (:text |label) (:type :leaf)
                  |v $ {} (:at 1540055879623) (:by |root) (:text |child) (:type :leaf)
          |comp-hint $ {} (:at 1540043900575) (:by |root) (:type :expr)
            :data $ {}
              |T $ {} (:at 1540043915730) (:by |root) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1540043900575) (:by |root) (:text |comp-hint) (:type :leaf)
              |r $ {} (:at 1540043900575) (:by |root) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1540043918299) (:by |root) (:text |text) (:type :leaf)
              |v $ {} (:at 1540043928147) (:by |root) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1540043928907) (:by |root) (:text |<>) (:type :leaf)
                  |j $ {} (:at 1540043930683) (:by |root) (:text |text) (:type :leaf)
                  |r $ {} (:at 1540043931182) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1540043931182) (:by |root) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1540043931182) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1540043931182) (:by |root) (:text |:color) (:type :leaf)
                          |j $ {} (:at 1540043931182) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1540043931182) (:by |root) (:text |hsl) (:type :leaf)
                              |j $ {} (:at 1540043931182) (:by |root) (:text |0) (:type :leaf)
                              |r $ {} (:at 1540043931182) (:by |root) (:text |0) (:type :leaf)
                              |v $ {} (:at 1540043931182) (:by |root) (:text |80) (:type :leaf)
          |comp-title $ {} (:at 1500541010211) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541010211) (:by |root) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1500541010211) (:by |root) (:text |comp-title) (:type :leaf)
              |r $ {} (:at 1500541010211) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1540043447838) (:by |root) (:text |text) (:type :leaf)
              |v $ {} (:at 1540043451521) (:by |root) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1540043452453) (:by |root) (:text |<>) (:type :leaf)
                  |j $ {} (:at 1540043454332) (:by |root) (:text |text) (:type :leaf)
                  |r $ {} (:at 1540043454565) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1540043454905) (:by |root) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1540043455151) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1540043459882) (:by |root) (:text |:font-family) (:type :leaf)
                          |j $ {} (:at 1540043465078) (:by |root) (:text |ui/font-fancy) (:type :leaf)
                      |r $ {} (:at 1540043465690) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1540043467233) (:by |root) (:text |:font-size) (:type :leaf)
                          |j $ {} (:at 1540043469433) (:by |root) (:text |24) (:type :leaf)
                      |v $ {} (:at 1540044100188) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1540044101609) (:by |root) (:text |:color) (:type :leaf)
                          |j $ {} (:at 1540044102399) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1540044102910) (:by |root) (:text |hsl) (:type :leaf)
                              |j $ {} (:at 1540044103589) (:by |root) (:text |0) (:type :leaf)
                              |r $ {} (:at 1540044103880) (:by |root) (:text |0) (:type :leaf)
                              |v $ {} (:at 1540044106987) (:by |root) (:text |60) (:type :leaf)
        :ns $ {} (:at 1500541010211) (:by nil) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541010211) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541010211) (:by |root) (:text |app.comp.kit) (:type :leaf)
            |v $ {} (:at 1500541010211) (:by nil) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541010211) (:by |root) (:text |:require) (:type :leaf)
                |j $ {} (:at 1500541010211) (:by nil) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1629571383125) (:by |B1y7Rc-Zz) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:text |hsl) (:type :leaf)
                |r $ {} (:at 1500541010211) (:by nil) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:text |app.schema) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by |root) (:text |schema) (:type :leaf)
                |v $ {} (:at 1500541010211) (:by nil) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1516547419785) (:by |root) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by |root) (:text |ui) (:type :leaf)
                |y $ {} (:at 1500541010211) (:by nil) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:text |defcomp) (:type :leaf)
                        |n $ {} (:at 1524070875244) (:by |root) (:text |list->) (:type :leaf)
                        |r $ {} (:at 1500541010211) (:by |root) (:text |<>) (:type :leaf)
                        |v $ {} (:at 1500541010211) (:by |root) (:text |span) (:type :leaf)
                        |x $ {} (:at 1500541010211) (:by |root) (:text |div) (:type :leaf)
                        |y $ {} (:at 1529343437918) (:by |root) (:text |button) (:type :leaf)
                |yT $ {} (:at 1500541010211) (:by nil) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:text |respo.comp.space) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:text |=<) (:type :leaf)
                |yj $ {} (:at 1527788936196) (:by |root) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1527788936499) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1527788937835) (:by |root) (:text |app.config) (:type :leaf)
                    |r $ {} (:at 1527788938747) (:by |root) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1527788939786) (:by |root) (:text |config) (:type :leaf)
        :proc $ {} (:at 1500541010211) (:by nil) (:type :expr)
          :data $ {}
      |app.comp.login $ {}
        :defs $ {}
          |comp-login $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |comp-login) (:type :leaf)
              |r $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |states) (:type :leaf)
              |v $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                  |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |cursor) (:type :leaf)
                          |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:cursor) (:type :leaf)
                              |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |states) (:type :leaf)
                      |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |state) (:type :leaf)
                          |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |or) (:type :leaf)
                              |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:data) (:type :leaf)
                                  |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |states) (:type :leaf)
                              |r $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |initial-state) (:type :leaf)
                  |r $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |div) (:type :leaf)
                      |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |merge) (:type :leaf)
                                  |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |ui/flex) (:type :leaf)
                                  |r $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |ui/center) (:type :leaf)
                      |r $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |div) (:type :leaf)
                          |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                          |r $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |div) (:type :leaf)
                              |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:style) (:type :leaf)
                                      |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                              |r $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |div) (:type :leaf)
                                  |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                  |r $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |input) (:type :leaf)
                                      |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:placeholder) (:type :leaf)
                                              |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text "|\"Username") (:type :leaf)
                                          |r $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:value) (:type :leaf)
                                              |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:username) (:type :leaf)
                                                  |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |state) (:type :leaf)
                                          |v $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:style) (:type :leaf)
                                              |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |ui/input) (:type :leaf)
                                          |x $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:on-input) (:type :leaf)
                                              |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                                  |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |e) (:type :leaf)
                                                      |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                                  |r $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                                      |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |cursor) (:type :leaf)
                                                      |r $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |assoc) (:type :leaf)
                                                          |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |state) (:type :leaf)
                                                          |r $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:username) (:type :leaf)
                                                          |v $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:value) (:type :leaf)
                                                              |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |e) (:type :leaf)
                              |v $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |=<) (:type :leaf)
                                  |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
                                  |r $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |8) (:type :leaf)
                              |x $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |div) (:type :leaf)
                                  |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                  |r $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |input) (:type :leaf)
                                      |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:placeholder) (:type :leaf)
                                              |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text "|\"Password") (:type :leaf)
                                          |r $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:value) (:type :leaf)
                                              |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:password) (:type :leaf)
                                                  |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |state) (:type :leaf)
                                          |v $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:style) (:type :leaf)
                                              |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |ui/input) (:type :leaf)
                                          |x $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:on-input) (:type :leaf)
                                              |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                                  |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |e) (:type :leaf)
                                                      |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                                  |r $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                                      |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |cursor) (:type :leaf)
                                                      |r $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |assoc) (:type :leaf)
                                                          |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |state) (:type :leaf)
                                                          |r $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:password) (:type :leaf)
                                                          |v $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:value) (:type :leaf)
                                                              |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |e) (:type :leaf)
                          |v $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |=<) (:type :leaf)
                              |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
                              |r $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |8) (:type :leaf)
                          |x $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |div) (:type :leaf)
                              |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:style) (:type :leaf)
                                      |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:text-align) (:type :leaf)
                                              |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:right) (:type :leaf)
                              |r $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |span) (:type :leaf)
                                  |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:inner-text) (:type :leaf)
                                          |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text "|\"Sign up") (:type :leaf)
                                      |r $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:style) (:type :leaf)
                                          |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |merge) (:type :leaf)
                                              |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |ui/link) (:type :leaf)
                                      |v $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:on-click) (:type :leaf)
                                          |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |on-submit) (:type :leaf)
                                              |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:username) (:type :leaf)
                                                  |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |state) (:type :leaf)
                                              |r $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:password) (:type :leaf)
                                                  |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |state) (:type :leaf)
                                              |v $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |true) (:type :leaf)
                              |v $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |=<) (:type :leaf)
                                  |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |8) (:type :leaf)
                                  |r $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
                              |x $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |span) (:type :leaf)
                                  |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:inner-text) (:type :leaf)
                                          |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text "|\"Log in") (:type :leaf)
                                      |r $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:style) (:type :leaf)
                                          |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |merge) (:type :leaf)
                                              |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |ui/link) (:type :leaf)
                                      |v $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:on-click) (:type :leaf)
                                          |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |on-submit) (:type :leaf)
                                              |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:username) (:type :leaf)
                                                  |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |state) (:type :leaf)
                                              |r $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:password) (:type :leaf)
                                                  |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |state) (:type :leaf)
                                              |v $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |false) (:type :leaf)
          |initial-state $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |def) (:type :leaf)
              |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |initial-state) (:type :leaf)
              |r $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:username) (:type :leaf)
                      |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text "|\"") (:type :leaf)
                  |r $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:password) (:type :leaf)
                      |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text "|\"") (:type :leaf)
          |on-submit $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |on-submit) (:type :leaf)
              |r $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
                  |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |password) (:type :leaf)
                  |r $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |signup?) (:type :leaf)
              |v $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                  |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |e) (:type :leaf)
                      |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |dispatch!) (:type :leaf)
                  |r $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |dispatch!) (:type :leaf)
                      |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                          |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |signup?) (:type :leaf)
                          |r $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:user/sign-up) (:type :leaf)
                          |v $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:user/log-in) (:type :leaf)
                      |r $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                          |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
                          |r $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |password) (:type :leaf)
                  |v $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |.setItem) (:type :leaf)
                      |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |js/localStorage) (:type :leaf)
                      |r $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:storage-key) (:type :leaf)
                          |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |config/site) (:type :leaf)
                      |v $ {} (:at 1629573089244) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1629573092023) (:by |B1y7Rc-Zz) (:text |format-cirru-edn) (:type :leaf)
                          |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                              |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
                              |r $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |password) (:type :leaf)
        :ns $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
          :data $ {}
            |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |ns) (:type :leaf)
            |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |app.comp.login) (:type :leaf)
            |r $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
              :data $ {}
                |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:require) (:type :leaf)
                |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |defcomp) (:type :leaf)
                        |r $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |<>) (:type :leaf)
                        |v $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |div) (:type :leaf)
                        |x $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |input) (:type :leaf)
                        |y $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |button) (:type :leaf)
                        |yT $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |span) (:type :leaf)
                |r $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |respo.comp.space) (:type :leaf)
                    |r $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |=<) (:type :leaf)
                |v $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |respo.comp.inspect) (:type :leaf)
                    |r $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |comp-inspect) (:type :leaf)
                |x $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |ui) (:type :leaf)
                |y $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |app.schema) (:type :leaf)
                    |r $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |schema) (:type :leaf)
                |yT $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |app.config) (:type :leaf)
                    |r $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |config) (:type :leaf)
        :proc $ {} (:at 1608702183983) (:by |B1y7Rc-Zz) (:type :expr)
          :data $ {}
      |app.comp.navigation $ {}
        :defs $ {}
          |comp-navigation $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |comp-navigation) (:type :leaf)
              |r $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |logged-in?) (:type :leaf)
                  |j $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |count-members) (:type :leaf)
              |v $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |div) (:type :leaf)
                  |j $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |:style) (:type :leaf)
                          |j $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |merge) (:type :leaf)
                              |j $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |ui/row-center) (:type :leaf)
                              |r $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |:height) (:type :leaf)
                                      |j $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |48) (:type :leaf)
                                  |r $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |:justify-content) (:type :leaf)
                                      |j $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |:space-between) (:type :leaf)
                                  |v $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |:padding) (:type :leaf)
                                      |j $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text "|\"0 16px") (:type :leaf)
                                  |x $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |:font-size) (:type :leaf)
                                      |j $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |16) (:type :leaf)
                                  |y $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |:border-bottom) (:type :leaf)
                                      |j $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                                          |j $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text "|\"1px solid ") (:type :leaf)
                                          |r $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |hsl) (:type :leaf)
                                              |j $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |0) (:type :leaf)
                                              |r $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |0) (:type :leaf)
                                              |v $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |0) (:type :leaf)
                                              |x $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |0.1) (:type :leaf)
                                  |yT $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |:font-family) (:type :leaf)
                                      |j $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |ui/font-fancy) (:type :leaf)
                  |r $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |div) (:type :leaf)
                      |j $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |:on-click) (:type :leaf)
                              |j $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                  |j $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |e) (:type :leaf)
                                      |j $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                  |r $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                      |j $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |:router/change) (:type :leaf)
                                      |r $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |:name) (:type :leaf)
                                              |j $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |:home) (:type :leaf)
                          |r $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |:cursor) (:type :leaf)
                                      |j $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |:pointer) (:type :leaf)
                      |r $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |<>) (:type :leaf)
                          |j $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |:title) (:type :leaf)
                              |j $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |config/site) (:type :leaf)
                          |r $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
                  |v $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |div) (:type :leaf)
                      |j $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |:cursor) (:type :leaf)
                                      |j $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text "|\"pointer") (:type :leaf)
                          |r $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |:on-click) (:type :leaf)
                              |j $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                  |j $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |e) (:type :leaf)
                                      |j $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                  |r $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                      |j $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |:router/change) (:type :leaf)
                                      |r $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |:name) (:type :leaf)
                                              |j $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |:profile) (:type :leaf)
                      |r $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |<>) (:type :leaf)
                          |j $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                              |j $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |logged-in?) (:type :leaf)
                              |r $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text "|\"Me") (:type :leaf)
                              |v $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text "|\"Guest") (:type :leaf)
                      |v $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |=<) (:type :leaf)
                          |j $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |8) (:type :leaf)
                          |r $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
                      |x $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |<>) (:type :leaf)
                          |j $ {} (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |count-members) (:type :leaf)
        :ns $ {} (:at 1500541010211) (:by nil) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541010211) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541010211) (:by |root) (:text |app.comp.navigation) (:type :leaf)
            |v $ {} (:at 1500541010211) (:by nil) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541010211) (:by |root) (:text |:require) (:type :leaf)
                |j $ {} (:at 1500541010211) (:by nil) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1629573037570) (:by |B1y7Rc-Zz) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:text |hsl) (:type :leaf)
                |r $ {} (:at 1500541010211) (:by nil) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1516547394445) (:by |root) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by |root) (:text |ui) (:type :leaf)
                |w $ {} (:at 1523120376505) (:by |root) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1523120376949) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1523120379036) (:by |root) (:text |respo.comp.space) (:type :leaf)
                    |r $ {} (:at 1523120382218) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1523120382545) (:by |root) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1523120382719) (:by |root) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1523120383255) (:by |root) (:text |=<) (:type :leaf)
                |x $ {} (:at 1500541010211) (:by nil) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:text |defcomp) (:type :leaf)
                        |r $ {} (:at 1500541010211) (:by |root) (:text |<>) (:type :leaf)
                        |v $ {} (:at 1500541010211) (:by |root) (:text |span) (:type :leaf)
                        |x $ {} (:at 1500541010211) (:by |root) (:text |div) (:type :leaf)
                |y $ {} (:at 1536470155450) (:by |root) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1536470155450) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1536470155450) (:by |root) (:text |app.config) (:type :leaf)
                    |r $ {} (:at 1536470161520) (:by |root) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1536470163188) (:by |root) (:text |config) (:type :leaf)
        :proc $ {} (:at 1500541010211) (:by nil) (:type :expr)
          :data $ {}
      |app.comp.profile $ {}
        :defs $ {}
          |comp-profile $ {} (:at 1500541010211) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541010211) (:by |root) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1500541010211) (:by |root) (:text |comp-profile) (:type :leaf)
              |r $ {} (:at 1500541010211) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:text |user) (:type :leaf)
                  |j $ {} (:at 1524070827396) (:by |root) (:text |members) (:type :leaf)
              |v $ {} (:at 1500541010211) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:text |div) (:type :leaf)
                  |j $ {} (:at 1500541010211) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:text |:style) (:type :leaf)
                          |j $ {} (:at 1519314673230) (:by |root) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1519314674218) (:by |root) (:text |merge) (:type :leaf)
                              |T $ {} (:at 1500541010211) (:by |root) (:text |ui/flex) (:type :leaf)
                              |j $ {} (:at 1519314674864) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1519314675207) (:by |root) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1519314675496) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1519314677667) (:by |root) (:text |:padding) (:type :leaf)
                                      |j $ {} (:at 1519314678341) (:by |root) (:text |16) (:type :leaf)
                  |r $ {} (:at 1524070753023) (:by |root) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1524070753742) (:by |root) (:text |div) (:type :leaf)
                      |L $ {} (:at 1524070753977) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1524070754337) (:by |root) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1524070764197) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1524070764960) (:by |root) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1524070765167) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1524070765499) (:by |root) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1524070765707) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1524070768913) (:by |root) (:text |:font-family) (:type :leaf)
                                      |j $ {} (:at 1524070771373) (:by |root) (:text |ui/font-fancy) (:type :leaf)
                                  |r $ {} (:at 1524070772863) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1524070774437) (:by |root) (:text |:font-size) (:type :leaf)
                                      |j $ {} (:at 1524070786249) (:by |root) (:text |32) (:type :leaf)
                                  |v $ {} (:at 1524070778614) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1524070781489) (:by |root) (:text |:font-weight) (:type :leaf)
                                      |j $ {} (:at 1524070782585) (:by |root) (:text |100) (:type :leaf)
                      |T $ {} (:at 1500541010211) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:text |<>) (:type :leaf)
                          |r $ {} (:at 1500541010211) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:text |str) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by |root) (:text "||Hello! ") (:type :leaf)
                              |r $ {} (:at 1500541010211) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:text |:name) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by |root) (:text |user) (:type :leaf)
                  |t $ {} (:at 1524070801446) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1524070803450) (:by |root) (:text |=<) (:type :leaf)
                      |j $ {} (:at 1524070804372) (:by |root) (:text |nil) (:type :leaf)
                      |r $ {} (:at 1524070805591) (:by |root) (:text |16) (:type :leaf)
                  |u $ {} (:at 1524070806586) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1524070807601) (:by |root) (:text |div) (:type :leaf)
                      |j $ {} (:at 1524070807801) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1524070808172) (:by |root) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1524070882494) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1524070886268) (:by |root) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1524070890021) (:by |root) (:text |ui/row) (:type :leaf)
                      |r $ {} (:at 1524070808914) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1524070810352) (:by |root) (:text |<>) (:type :leaf)
                          |j $ {} (:at 1524070906296) (:by |root) (:text "|\"Members:") (:type :leaf)
                      |t $ {} (:at 1524070907095) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1524070907693) (:by |root) (:text |=<) (:type :leaf)
                          |j $ {} (:at 1524071002316) (:by |root) (:text |8) (:type :leaf)
                          |r $ {} (:at 1524070908955) (:by |root) (:text |nil) (:type :leaf)
                      |v $ {} (:at 1524070813822) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1524070815507) (:by |root) (:text |list->) (:type :leaf)
                          |j $ {} (:at 1524070815884) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1524070816388) (:by |root) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1524070882494) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1524070886268) (:by |root) (:text |:style) (:type :leaf)
                                  |j $ {} (:at 1524070890021) (:by |root) (:text |ui/row) (:type :leaf)
                          |r $ {} (:at 1524070817648) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629571860007) (:by |B1y7Rc-Zz) (:text |->) (:type :leaf)
                              |j $ {} (:at 1524070823331) (:by |root) (:text |members) (:type :leaf)
                              |n $ {} (:at 1629573507502) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629573572580) (:by |B1y7Rc-Zz) (:text |.to-list) (:type :leaf)
                              |r $ {} (:at 1524070849620) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629571862880) (:by |B1y7Rc-Zz) (:text |.map-pair) (:type :leaf)
                                  |j $ {} (:at 1524070854323) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1524070854836) (:by |root) (:text |fn) (:type :leaf)
                                      |j $ {} (:at 1524070855268) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1524070857242) (:by |root) (:text |k) (:type :leaf)
                                          |j $ {} (:at 1524070860935) (:by |root) (:text |username) (:type :leaf)
                                      |r $ {} (:at 1524070862172) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1524070862624) (:by |root) (:text |[]) (:type :leaf)
                                          |j $ {} (:at 1524070863576) (:by |root) (:text |k) (:type :leaf)
                                          |r $ {} (:at 1524070863870) (:by |root) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1524070935603) (:by |root) (:text |div) (:type :leaf)
                                              |b $ {} (:at 1524070935915) (:by |root) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1524070936321) (:by |root) (:text |{}) (:type :leaf)
                                                  |j $ {} (:at 1524070941378) (:by |root) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1524070945311) (:by |root) (:text |:style) (:type :leaf)
                                                      |j $ {} (:at 1524070945552) (:by |root) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1524070951279) (:by |root) (:text |{}) (:type :leaf)
                                                          |j $ {} (:at 1524070952343) (:by |root) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1524070953379) (:by |root) (:text |:padding) (:type :leaf)
                                                              |j $ {} (:at 1524070959440) (:by |root) (:text "|\"0 8px") (:type :leaf)
                                                          |r $ {} (:at 1524070965836) (:by |root) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1524070967712) (:by |root) (:text |:border) (:type :leaf)
                                                              |j $ {} (:at 1524070968157) (:by |root) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1524070968711) (:by |root) (:text |str) (:type :leaf)
                                                                  |j $ {} (:at 1524070971580) (:by |root) (:text "|\"1px solid ") (:type :leaf)
                                                                  |r $ {} (:at 1524070972774) (:by |root) (:type :expr)
                                                                    :data $ {}
                                                                      |T $ {} (:at 1524070973331) (:by |root) (:text |hsl) (:type :leaf)
                                                                      |j $ {} (:at 1524070973606) (:by |root) (:text |0) (:type :leaf)
                                                                      |r $ {} (:at 1524070973793) (:by |root) (:text |0) (:type :leaf)
                                                                      |v $ {} (:at 1524071006553) (:by |root) (:text |80) (:type :leaf)
                                                          |v $ {} (:at 1524070980253) (:by |root) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1524070984655) (:by |root) (:text |:border-radius) (:type :leaf)
                                                              |j $ {} (:at 1524070992141) (:by |root) (:text "|\"16px") (:type :leaf)
                                                          |x $ {} (:at 1524070994599) (:by |root) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1524070996433) (:by |root) (:text |:margin) (:type :leaf)
                                                              |j $ {} (:at 1524071016063) (:by |root) (:text "|\"0 4px") (:type :leaf)
                                              |j $ {} (:at 1524070937486) (:by |root) (:type :expr)
                                                :data $ {}
                                                  |D $ {} (:at 1524070939626) (:by |root) (:text |<>) (:type :leaf)
                                                  |T $ {} (:at 1524070866665) (:by |root) (:text |username) (:type :leaf)
                  |wT $ {} (:at 1537033605190) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1537033605685) (:by |root) (:text |=<) (:type :leaf)
                      |j $ {} (:at 1537033606942) (:by |root) (:text |nil) (:type :leaf)
                      |r $ {} (:at 1537033612302) (:by |root) (:text |48) (:type :leaf)
                  |x $ {} (:at 1524070749088) (:by |root) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1524070749878) (:by |root) (:text |div) (:type :leaf)
                      |L $ {} (:at 1524070750119) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1524070750478) (:by |root) (:text |{}) (:type :leaf)
                      |P $ {} (:at 1537465541202) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1537465541202) (:by |root) (:text |button) (:type :leaf)
                          |j $ {} (:at 1537465541202) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1537465541202) (:by |root) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1537465541202) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1537465541202) (:by |root) (:text |:style) (:type :leaf)
                                  |j $ {} (:at 1537465541202) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1537465541202) (:by |root) (:text |merge) (:type :leaf)
                                      |j $ {} (:at 1537465541202) (:by |root) (:text |ui/button) (:type :leaf)
                              |r $ {} (:at 1537465541202) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1537465541202) (:by |root) (:text |:on-click) (:type :leaf)
                                  |j $ {} (:at 1537465541202) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1537465541202) (:by |root) (:text |fn) (:type :leaf)
                                      |j $ {} (:at 1537465541202) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1537465541202) (:by |root) (:text |e) (:type :leaf)
                                          |j $ {} (:at 1537465551831) (:by |root) (:text |d!) (:type :leaf)
                                          |r $ {} (:at 1537465549339) (:by |root) (:text |m!) (:type :leaf)
                                      |r $ {} (:at 1537465553036) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1537465558372) (:by |root) (:text |.replace) (:type :leaf)
                                          |j $ {} (:at 1537465560194) (:by |root) (:text |js/location) (:type :leaf)
                                          |r $ {} (:at 1537465561937) (:by |root) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1537465565778) (:by |root) (:text |str) (:type :leaf)
                                              |j $ {} (:at 1537465655496) (:by |root) (:text |js/location.origin) (:type :leaf)
                                              |r $ {} (:at 1537465587485) (:by |root) (:text "|\"?time=") (:type :leaf)
                                              |v $ {} (:at 1537465588230) (:by |root) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1537465588917) (:by |root) (:text |.now) (:type :leaf)
                                                  |j $ {} (:at 1537465590598) (:by |root) (:text |js/Date) (:type :leaf)
                          |r $ {} (:at 1537465541202) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1537465541202) (:by |root) (:text |<>) (:type :leaf)
                              |j $ {} (:at 1537465598875) (:by |root) (:text "|\"Refresh") (:type :leaf)
                      |R $ {} (:at 1537465599989) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1537465600568) (:by |root) (:text |=<) (:type :leaf)
                          |j $ {} (:at 1537465601614) (:by |root) (:text |16) (:type :leaf)
                          |r $ {} (:at 1537465602193) (:by |root) (:text |nil) (:type :leaf)
                      |T $ {} (:at 1500541010211) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1529343433304) (:by |root) (:text |button) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:text |:style) (:type :leaf)
                                  |b $ {} (:at 1529343525553) (:by |root) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1529343526544) (:by |root) (:text |merge) (:type :leaf)
                                      |T $ {} (:at 1529343448522) (:by |root) (:text |ui/button) (:type :leaf)
                                      |j $ {} (:at 1529343455186) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1529343455629) (:by |root) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1529343457115) (:by |root) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1529343457898) (:by |root) (:text |:color) (:type :leaf)
                                              |j $ {} (:at 1529343458855) (:by |root) (:text |:red) (:type :leaf)
                                          |r $ {} (:at 1529343459158) (:by |root) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1529343463728) (:by |root) (:text |:border-color) (:type :leaf)
                                              |j $ {} (:at 1529343464475) (:by |root) (:text |:red) (:type :leaf)
                              |r $ {} (:at 1500541010211) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1514302350497) (:by |root) (:text |:on-click) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1521951456454) (:by |root) (:text |fn) (:type :leaf)
                                      |r $ {} (:at 1500541010211) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:text |e) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by |root) (:text |dispatch!) (:type :leaf)
                                          |r $ {} (:at 1521951461103) (:by |root) (:text |mutate!) (:type :leaf)
                                      |v $ {} (:at 1500541010211) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:text |dispatch!) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by |root) (:text |:user/log-out) (:type :leaf)
                                          |r $ {} (:at 1500541010211) (:by |root) (:text |nil) (:type :leaf)
                                      |x $ {} (:at 1537033547091) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1537033547091) (:by |root) (:text |.removeItem) (:type :leaf)
                                          |j $ {} (:at 1537033547091) (:by |root) (:text |js/localStorage) (:type :leaf)
                                          |r $ {} (:at 1537033547091) (:by |root) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1537033547091) (:by |root) (:text |:storage-key) (:type :leaf)
                                              |j $ {} (:at 1537033547091) (:by |root) (:text |config/site) (:type :leaf)
                          |r $ {} (:at 1500541010211) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:text |<>) (:type :leaf)
                              |r $ {} (:at 1500541010211) (:by |root) (:text "||Log out") (:type :leaf)
        :ns $ {} (:at 1500541010211) (:by nil) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541010211) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541010211) (:by |root) (:text |app.comp.profile) (:type :leaf)
            |v $ {} (:at 1500541010211) (:by nil) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541010211) (:by |root) (:text |:require) (:type :leaf)
                |j $ {} (:at 1500541010211) (:by nil) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1629571872856) (:by |B1y7Rc-Zz) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:text |hsl) (:type :leaf)
                |r $ {} (:at 1500541010211) (:by nil) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:text |app.schema) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by |root) (:text |schema) (:type :leaf)
                |v $ {} (:at 1500541010211) (:by nil) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1516547419785) (:by |root) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by |root) (:text |ui) (:type :leaf)
                |y $ {} (:at 1500541010211) (:by nil) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:text |defcomp) (:type :leaf)
                        |n $ {} (:at 1524070875244) (:by |root) (:text |list->) (:type :leaf)
                        |r $ {} (:at 1500541010211) (:by |root) (:text |<>) (:type :leaf)
                        |v $ {} (:at 1500541010211) (:by |root) (:text |span) (:type :leaf)
                        |x $ {} (:at 1500541010211) (:by |root) (:text |div) (:type :leaf)
                        |y $ {} (:at 1529343437918) (:by |root) (:text |button) (:type :leaf)
                |yT $ {} (:at 1500541010211) (:by nil) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541010211) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541010211) (:by |root) (:text |respo.comp.space) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541010211) (:by |root) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541010211) (:by |root) (:text |=<) (:type :leaf)
                |yj $ {} (:at 1527788936196) (:by |root) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1527788936499) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1527788937835) (:by |root) (:text |app.config) (:type :leaf)
                    |r $ {} (:at 1527788938747) (:by |root) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1527788939786) (:by |root) (:text |config) (:type :leaf)
        :proc $ {} (:at 1500541010211) (:by nil) (:type :expr)
          :data $ {}
      |app.config $ {}
        :defs $ {}
          |cdn? $ {} (:at 1547659890907) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1547659890907) (:by |B1y7Rc-Zz) (:text |def) (:type :leaf)
              |j $ {} (:at 1547659890907) (:by |B1y7Rc-Zz) (:text |cdn?) (:type :leaf)
              |r $ {} (:at 1547659890907) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1547659890907) (:by |B1y7Rc-Zz) (:text |cond) (:type :leaf)
                  |j $ {} (:at 1547659890907) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1547659890907) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1547659890907) (:by |B1y7Rc-Zz) (:text |exists?) (:type :leaf)
                          |j $ {} (:at 1547659890907) (:by |B1y7Rc-Zz) (:text |js/window) (:type :leaf)
                      |j $ {} (:at 1547659890907) (:by |B1y7Rc-Zz) (:text |false) (:type :leaf)
                  |r $ {} (:at 1547659890907) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1547659890907) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1547659890907) (:by |B1y7Rc-Zz) (:text |exists?) (:type :leaf)
                          |j $ {} (:at 1547659890907) (:by |B1y7Rc-Zz) (:text |js/process) (:type :leaf)
                      |j $ {} (:at 1547659890907) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1547659890907) (:by |B1y7Rc-Zz) (:text |=) (:type :leaf)
                          |j $ {} (:at 1547659890907) (:by |B1y7Rc-Zz) (:text "|\"true") (:type :leaf)
                          |r $ {} (:at 1547659890907) (:by |B1y7Rc-Zz) (:text |js/process.env.cdn) (:type :leaf)
                  |v $ {} (:at 1547659890907) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1547659890907) (:by |B1y7Rc-Zz) (:text |:else) (:type :leaf)
                      |j $ {} (:at 1547659890907) (:by |B1y7Rc-Zz) (:text |false) (:type :leaf)
          |dev? $ {} (:at 1629571996712) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629571996712) (:by |B1y7Rc-Zz) (:text |def) (:type :leaf)
              |j $ {} (:at 1629571996712) (:by |B1y7Rc-Zz) (:text |dev?) (:type :leaf)
              |r $ {} (:at 1629571996712) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629571996712) (:by |B1y7Rc-Zz) (:text |=) (:type :leaf)
                  |j $ {} (:at 1629571996712) (:by |B1y7Rc-Zz) (:text "|\"dev") (:type :leaf)
                  |r $ {} (:at 1629571996712) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629571996712) (:by |B1y7Rc-Zz) (:text |get-env) (:type :leaf)
                      |j $ {} (:at 1629571996712) (:by |B1y7Rc-Zz) (:text "|\"mode") (:type :leaf)
                      |n $ {} (:at 1658773719648) (:by |B1y7Rc-Zz) (:text "|\"release") (:type :leaf)
          |site $ {} (:at 1500541255553) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:text |def) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:text |site) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:text |{}) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:text |:port) (:type :leaf)
                      |j $ {} (:at 1536468046844) (:by |root) (:text |11011) (:type :leaf)
                  |t $ {} (:at 1527867502467) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1527867504737) (:by |root) (:text |:title) (:type :leaf)
                      |j $ {} (:at 1536561520342) (:by |B1y7Rc-Zz) (:text "|\"Pumila") (:type :leaf)
                  |u $ {} (:at 1527867511986) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1527867512819) (:by |root) (:text |:icon) (:type :leaf)
                      |j $ {} (:at 1536506945817) (:by |root) (:text "|\"http://cdn.tiye.me/logo/pumila.png") (:type :leaf)
                  |yn $ {} (:at 1547659907549) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1547659907549) (:by |B1y7Rc-Zz) (:text |:storage-key) (:type :leaf)
                      |j $ {} (:at 1547659907549) (:by |B1y7Rc-Zz) (:text "|\"pumila") (:type :leaf)
                  |yp $ {} (:at 1547659912205) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1547659912205) (:by |B1y7Rc-Zz) (:text |:storage-file) (:type :leaf)
                      |j $ {} (:at 1637313679627) (:by |B1y7Rc-Zz) (:text "|\"storage.cirru") (:type :leaf)
                  |yr $ {} (:at 1540053971159) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1540053971159) (:by |root) (:text |:theme) (:type :leaf)
                      |j $ {} (:at 1540053989032) (:by |root) (:text "|\"#6EBAEE") (:type :leaf)
        :ns $ {} (:at 1527788708227) (:by |root) (:type :expr)
          :data $ {}
            |T $ {} (:at 1527788708227) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1527788708227) (:by |root) (:text |app.config) (:type :leaf)
        :proc $ {} (:at 1527788708227) (:by |root) (:type :expr)
          :data $ {}
      |app.schema $ {}
        :defs $ {}
          |database $ {} (:at 1500541255553) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:text |def) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:text |database) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:text |:sessions) (:type :leaf)
                      |j $ {} (:at 1539536856763) (:by |root) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1539536857335) (:by |root) (:text |do) (:type :leaf)
                          |L $ {} (:at 1539536859890) (:by |root) (:text |session) (:type :leaf)
                          |T $ {} (:at 1500541255553) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541255553) (:by |root) (:text |{}) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:text |:users) (:type :leaf)
                      |j $ {} (:at 1539536862047) (:by |root) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1539536862551) (:by |root) (:text |do) (:type :leaf)
                          |L $ {} (:at 1539536863165) (:by |root) (:text |user) (:type :leaf)
                          |T $ {} (:at 1500541255553) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541255553) (:by |root) (:text |{}) (:type :leaf)
          |emotion $ {} (:at 1539711259132) (:by |root) (:type :expr)
            :data $ {}
              |T $ {} (:at 1539711260221) (:by |root) (:text |def) (:type :leaf)
              |j $ {} (:at 1539711259132) (:by |root) (:text |emotion) (:type :leaf)
              |r $ {} (:at 1539711261105) (:by |root) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1539711261105) (:by |root) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1539711261105) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1539711261105) (:by |root) (:text |:id) (:type :leaf)
                      |j $ {} (:at 1539711261105) (:by |root) (:text |nil) (:type :leaf)
                  |r $ {} (:at 1539711261105) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1539711261105) (:by |root) (:text |:text) (:type :leaf)
                      |j $ {} (:at 1539711261105) (:by |root) (:text "|\"") (:type :leaf)
                  |v $ {} (:at 1539711261105) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1539711261105) (:by |root) (:text |:score) (:type :leaf)
                      |j $ {} (:at 1539711261105) (:by |root) (:text |0) (:type :leaf)
                  |x $ {} (:at 1539711267196) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1539711268133) (:by |root) (:text |:color) (:type :leaf)
                      |j $ {} (:at 1539711272654) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1539711273311) (:by |root) (:text |hsl) (:type :leaf)
                          |j $ {} (:at 1539711274231) (:by |root) (:text |0) (:type :leaf)
                          |r $ {} (:at 1539711274429) (:by |root) (:text |0) (:type :leaf)
                          |v $ {} (:at 1539711277971) (:by |root) (:text |90) (:type :leaf)
          |mood $ {} (:at 1539711151140) (:by |root) (:type :expr)
            :data $ {}
              |T $ {} (:at 1539711152113) (:by |root) (:text |def) (:type :leaf)
              |j $ {} (:at 1539711151140) (:by |root) (:text |mood) (:type :leaf)
              |r $ {} (:at 1539711151140) (:by |root) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1539711153129) (:by |root) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1539711153520) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1539711154189) (:by |root) (:text |:id) (:type :leaf)
                      |j $ {} (:at 1539711154990) (:by |root) (:text |nil) (:type :leaf)
                  |r $ {} (:at 1539711293691) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1539711298421) (:by |root) (:text |:emotion-id) (:type :leaf)
                      |j $ {} (:at 1539711300419) (:by |root) (:text |nil) (:type :leaf)
                  |t $ {} (:at 1539711622479) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1539711623998) (:by |root) (:text |:text) (:type :leaf)
                      |j $ {} (:at 1539711627865) (:by |root) (:text "|\"") (:type :leaf)
                  |v $ {} (:at 1539711301610) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1539711303146) (:by |root) (:text |:time) (:type :leaf)
                      |j $ {} (:at 1539711303554) (:by |root) (:text |nil) (:type :leaf)
          |notification $ {} (:at 1500541255553) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:text |def) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:text |notification) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:text |:id) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:text |nil) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:text |:kind) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:text |nil) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:text |:text) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:text |nil) (:type :leaf)
          |router $ {} (:at 1500541255553) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:text |def) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:text |router) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:text |:name) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:text |nil) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:text |:title) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:text |nil) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:text |:data) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541255553) (:by |root) (:text |{}) (:type :leaf)
                  |x $ {} (:at 1500541255553) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:text |:router) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:text |nil) (:type :leaf)
          |session $ {} (:at 1500541255553) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:text |def) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:text |session) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:text |:user-id) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:text |nil) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:text |:id) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:text |nil) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:text |:nickname) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:text |nil) (:type :leaf)
                  |x $ {} (:at 1500541255553) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:text |:router) (:type :leaf)
                      |j $ {} (:at 1539536845507) (:by |root) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1539536846243) (:by |root) (:text |do) (:type :leaf)
                          |L $ {} (:at 1539536848271) (:by |root) (:text |router) (:type :leaf)
                          |T $ {} (:at 1500541255553) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541255553) (:by |root) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1500541255553) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:text |:name) (:type :leaf)
                                  |j $ {} (:at 1500541255553) (:by |root) (:text |:home) (:type :leaf)
                              |r $ {} (:at 1500541255553) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:text |:data) (:type :leaf)
                                  |j $ {} (:at 1500541255553) (:by |root) (:text |nil) (:type :leaf)
                              |v $ {} (:at 1500541255553) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:text |:router) (:type :leaf)
                                  |j $ {} (:at 1500541255553) (:by |root) (:text |nil) (:type :leaf)
                  |y $ {} (:at 1537029440078) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1537029441764) (:by |root) (:text |:messages) (:type :leaf)
                      |j $ {} (:at 1537029442032) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1537029442379) (:by |root) (:text |{}) (:type :leaf)
          |user $ {} (:at 1500541255553) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:text |def) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:text |user) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:text |:name) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:text |nil) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:text |:id) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:text |nil) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:text |:nickname) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:text |nil) (:type :leaf)
                  |x $ {} (:at 1500541255553) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:text |:avatar) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:text |nil) (:type :leaf)
                  |y $ {} (:at 1500541255553) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:text |:password) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:text |nil) (:type :leaf)
                  |yT $ {} (:at 1539711144615) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1539711145936) (:by |root) (:text |:moods) (:type :leaf)
                      |j $ {} (:at 1539711146968) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1539711147244) (:by |root) (:text |do) (:type :leaf)
                          |j $ {} (:at 1539711148496) (:by |root) (:text |mood) (:type :leaf)
                          |r $ {} (:at 1539711149167) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1539711149499) (:by |root) (:text |{}) (:type :leaf)
                  |yj $ {} (:at 1539711243245) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1539711244739) (:by |root) (:text |:emotions) (:type :leaf)
                      |j $ {} (:at 1539711247333) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1539711248393) (:by |root) (:text |do) (:type :leaf)
                          |j $ {} (:at 1539711250132) (:by |root) (:text |emotion) (:type :leaf)
                          |r $ {} (:at 1539711256770) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1539711257087) (:by |root) (:text |{}) (:type :leaf)
        :ns $ {} (:at 1500541255553) (:by nil) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541255553) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541255553) (:by |root) (:text |app.schema) (:type :leaf)
            |r $ {} (:at 1539711279481) (:by |root) (:type :expr)
              :data $ {}
                |T $ {} (:at 1539711280129) (:by |root) (:text |:require) (:type :leaf)
                |j $ {} (:at 1539711280368) (:by |root) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1539711282812) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1636983027204) (:by |B1y7Rc-Zz) (:text |respo.util.format) (:type :leaf)
                    |r $ {} (:at 1539711284709) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1539711285043) (:by |root) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1539711285205) (:by |root) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1539711286499) (:by |root) (:text |hsl) (:type :leaf)
        :proc $ {} (:at 1500541255553) (:by nil) (:type :expr)
          :data $ {}
      |app.server $ {}
        :defs $ {}
          |*client-caches $ {} (:at 1629572510684) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629572510684) (:by |B1y7Rc-Zz) (:text |defatom) (:type :leaf)
              |j $ {} (:at 1629572510684) (:by |B1y7Rc-Zz) (:text |*client-caches) (:type :leaf)
              |r $ {} (:at 1629572510684) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629572510684) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
          |*initial-db $ {} (:at 1636982707389) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1636982707389) (:by |B1y7Rc-Zz) (:text |defatom) (:type :leaf)
              |j $ {} (:at 1636982707389) (:by |B1y7Rc-Zz) (:text |*initial-db) (:type :leaf)
              |r $ {} (:at 1636982707389) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636982707389) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                  |j $ {} (:at 1636982707389) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636982707389) (:by |B1y7Rc-Zz) (:text |path-exists?) (:type :leaf)
                      |j $ {} (:at 1636982707389) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636982707389) (:by |B1y7Rc-Zz) (:text |w-log) (:type :leaf)
                          |j $ {} (:at 1636982707389) (:by |B1y7Rc-Zz) (:text |storage-file) (:type :leaf)
                  |r $ {} (:at 1636982707389) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636982707389) (:by |B1y7Rc-Zz) (:text |do) (:type :leaf)
                      |j $ {} (:at 1636982707389) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636982707389) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                          |j $ {} (:at 1636982707389) (:by |B1y7Rc-Zz) (:text "|\"Found local EDN data") (:type :leaf)
                      |r $ {} (:at 1636982707389) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636982707389) (:by |B1y7Rc-Zz) (:text |merge) (:type :leaf)
                          |j $ {} (:at 1636982707389) (:by |B1y7Rc-Zz) (:text |schema/database) (:type :leaf)
                          |r $ {} (:at 1636982707389) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1636982707389) (:by |B1y7Rc-Zz) (:text |parse-cirru-edn) (:type :leaf)
                              |j $ {} (:at 1636982707389) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1636982707389) (:by |B1y7Rc-Zz) (:text |read-file) (:type :leaf)
                                  |j $ {} (:at 1636982707389) (:by |B1y7Rc-Zz) (:text |storage-file) (:type :leaf)
                  |v $ {} (:at 1636982707389) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636982707389) (:by |B1y7Rc-Zz) (:text |do) (:type :leaf)
                      |j $ {} (:at 1636982707389) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636982707389) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                          |j $ {} (:at 1636982707389) (:by |B1y7Rc-Zz) (:text "|\"Found no data") (:type :leaf)
                      |r $ {} (:at 1636982707389) (:by |B1y7Rc-Zz) (:text |schema/database) (:type :leaf)
          |*reader-reel $ {} (:at 1629572501825) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629572501825) (:by |B1y7Rc-Zz) (:text |defatom) (:type :leaf)
              |j $ {} (:at 1629572501825) (:by |B1y7Rc-Zz) (:text |*reader-reel) (:type :leaf)
              |r $ {} (:at 1629572501825) (:by |B1y7Rc-Zz) (:text |@*reel) (:type :leaf)
          |*reel $ {} (:at 1629572448612) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629572448612) (:by |B1y7Rc-Zz) (:text |defatom) (:type :leaf)
              |j $ {} (:at 1629572448612) (:by |B1y7Rc-Zz) (:text |*reel) (:type :leaf)
              |r $ {} (:at 1629572448612) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629572448612) (:by |B1y7Rc-Zz) (:text |merge) (:type :leaf)
                  |j $ {} (:at 1629572448612) (:by |B1y7Rc-Zz) (:text |reel-schema) (:type :leaf)
                  |r $ {} (:at 1629572448612) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629572448612) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1629572448612) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629572448612) (:by |B1y7Rc-Zz) (:text |:base) (:type :leaf)
                          |j $ {} (:at 1629572448612) (:by |B1y7Rc-Zz) (:text |@*initial-db) (:type :leaf)
                      |r $ {} (:at 1629572448612) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629572448612) (:by |B1y7Rc-Zz) (:text |:db) (:type :leaf)
                          |j $ {} (:at 1629572448612) (:by |B1y7Rc-Zz) (:text |@*initial-db) (:type :leaf)
          |dispatch! $ {} (:at 1636982730596) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |dispatch!) (:type :leaf)
              |r $ {} (:at 1636982730596) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |op) (:type :leaf)
                  |j $ {} (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
              |v $ {} (:at 1636982730596) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                  |j $ {} (:at 1636982730596) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636982730596) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                          |j $ {} (:at 1636982730596) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |generate-id!) (:type :leaf)
                      |j $ {} (:at 1636982730596) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |op-time) (:type :leaf)
                          |j $ {} (:at 1636982730596) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |->) (:type :leaf)
                              |j $ {} (:at 1636982730596) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |get-time!) (:type :leaf)
                              |r $ {} (:at 1636982730596) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |.timestamp) (:type :leaf)
                  |r $ {} (:at 1636982730596) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                      |j $ {} (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |config/dev?) (:type :leaf)
                      |r $ {} (:at 1636982730596) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                          |j $ {} (:at 1636982730596) (:by |B1y7Rc-Zz) (:text "|\"Dispatch!") (:type :leaf)
                          |r $ {} (:at 1636982730596) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                              |j $ {} (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |op) (:type :leaf)
                          |v $ {} (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
                          |x $ {} (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1636982730596) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                      |j $ {} (:at 1636982730596) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |=) (:type :leaf)
                          |j $ {} (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |op) (:type :leaf)
                          |r $ {} (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |:effect/persist) (:type :leaf)
                      |r $ {} (:at 1636982730596) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |persist-db!) (:type :leaf)
                      |v $ {} (:at 1636982730596) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |reset!) (:type :leaf)
                          |j $ {} (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |*reel) (:type :leaf)
                          |r $ {} (:at 1636982730596) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |reel-reducer) (:type :leaf)
                              |j $ {} (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |@*reel) (:type :leaf)
                              |r $ {} (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |updater) (:type :leaf)
                              |v $ {} (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |op) (:type :leaf)
                              |x $ {} (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
                              |y $ {} (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                              |yT $ {} (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                              |yj $ {} (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |op-time) (:type :leaf)
                              |yr $ {} (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |config/dev?) (:type :leaf)
          |get-backup-path! $ {} (:at 1636983050857) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1636983050857) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1636983050857) (:by |B1y7Rc-Zz) (:text |get-backup-path!) (:type :leaf)
              |r $ {} (:at 1636983050857) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
              |v $ {} (:at 1636983050857) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636983050857) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                  |j $ {} (:at 1636983050857) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636983050857) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636983050857) (:by |B1y7Rc-Zz) (:text |now) (:type :leaf)
                          |j $ {} (:at 1636983050857) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1636983050857) (:by |B1y7Rc-Zz) (:text |.extract) (:type :leaf)
                              |j $ {} (:at 1636983050857) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1636983050857) (:by |B1y7Rc-Zz) (:text |get-time!) (:type :leaf)
                  |r $ {} (:at 1636983050857) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636983050857) (:by |B1y7Rc-Zz) (:text |join-path) (:type :leaf)
                      |j $ {} (:at 1636983050857) (:by |B1y7Rc-Zz) (:text |calcit-dirname) (:type :leaf)
                      |r $ {} (:at 1636983050857) (:by |B1y7Rc-Zz) (:text "|\"backups") (:type :leaf)
                      |v $ {} (:at 1636983050857) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636983050857) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                          |j $ {} (:at 1636983050857) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1636983050857) (:by |B1y7Rc-Zz) (:text |:month) (:type :leaf)
                              |j $ {} (:at 1636983050857) (:by |B1y7Rc-Zz) (:text |now) (:type :leaf)
                      |x $ {} (:at 1636983050857) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636983050857) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                          |j $ {} (:at 1636983050857) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1636983050857) (:by |B1y7Rc-Zz) (:text |:day) (:type :leaf)
                              |j $ {} (:at 1636983050857) (:by |B1y7Rc-Zz) (:text |now) (:type :leaf)
                          |r $ {} (:at 1636983050857) (:by |B1y7Rc-Zz) (:text "|\"-snapshot.cirru") (:type :leaf)
          |main! $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |main!) (:type :leaf)
              |r $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
              |v $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                  |j $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:text "|\"Running mode:") (:type :leaf)
                  |r $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                      |j $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |config/dev?) (:type :leaf)
                      |r $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:text "|\"dev") (:type :leaf)
                      |v $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:text "|\"release") (:type :leaf)
              |x $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                  |j $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |p?) (:type :leaf)
                          |j $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |get-env) (:type :leaf)
                              |j $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:text "|\"port") (:type :leaf)
                      |j $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |port) (:type :leaf)
                          |j $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                              |j $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |some?) (:type :leaf)
                                  |j $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |p?) (:type :leaf)
                              |r $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |parse-float) (:type :leaf)
                                  |j $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |p?) (:type :leaf)
                              |v $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |:port) (:type :leaf)
                                  |j $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |config/site) (:type :leaf)
                  |r $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |run-server!) (:type :leaf)
                      |j $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |port) (:type :leaf)
                  |v $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                      |j $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                          |j $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:text "|\"Server started on port:") (:type :leaf)
                          |r $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |port) (:type :leaf)
              |y $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |do) (:type :leaf)
                  |j $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |;) (:type :leaf)
                      |j $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:text "|\"init it before doing multi-threading") (:type :leaf)
                  |r $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |identity) (:type :leaf)
                      |j $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |@*reader-reel) (:type :leaf)
              |yT $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |set-interval) (:type :leaf)
                  |j $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |200) (:type :leaf)
                  |r $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                      |j $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                      |r $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |render-loop!) (:type :leaf)
              |yj $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |set-interval) (:type :leaf)
                  |j $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |600000) (:type :leaf)
                  |r $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                      |j $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                      |r $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |persist-db!) (:type :leaf)
              |yr $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |on-control-c) (:type :leaf)
                  |j $ {} (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |on-exit!) (:type :leaf)
          |on-exit! $ {} (:at 1636982764905) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1636982764905) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1636982764905) (:by |B1y7Rc-Zz) (:text |on-exit!) (:type :leaf)
              |r $ {} (:at 1636982764905) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
              |v $ {} (:at 1636982764905) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636982764905) (:by |B1y7Rc-Zz) (:text |persist-db!) (:type :leaf)
              |x $ {} (:at 1636982764905) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636982764905) (:by |B1y7Rc-Zz) (:text |;) (:type :leaf)
                  |j $ {} (:at 1636982764905) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                  |r $ {} (:at 1636982764905) (:by |B1y7Rc-Zz) (:text "|\"exit code is...") (:type :leaf)
              |y $ {} (:at 1636982764905) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636982764905) (:by |B1y7Rc-Zz) (:text |quit!) (:type :leaf)
                  |j $ {} (:at 1636982764905) (:by |B1y7Rc-Zz) (:text |0) (:type :leaf)
          |persist-db! $ {} (:at 1636982775596) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1636982775596) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1636982775596) (:by |B1y7Rc-Zz) (:text |persist-db!) (:type :leaf)
              |r $ {} (:at 1636982775596) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
              |v $ {} (:at 1636982775596) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636982775596) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                  |j $ {} (:at 1636982775596) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636982775596) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636982775596) (:by |B1y7Rc-Zz) (:text |file-content) (:type :leaf)
                          |j $ {} (:at 1636982775596) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1636982775596) (:by |B1y7Rc-Zz) (:text |format-cirru-edn) (:type :leaf)
                              |j $ {} (:at 1636982775596) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1636982775596) (:by |B1y7Rc-Zz) (:text |assoc) (:type :leaf)
                                  |j $ {} (:at 1636982775596) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1636982775596) (:by |B1y7Rc-Zz) (:text |:db) (:type :leaf)
                                      |j $ {} (:at 1636982775596) (:by |B1y7Rc-Zz) (:text |@*reel) (:type :leaf)
                                  |r $ {} (:at 1636982775596) (:by |B1y7Rc-Zz) (:text |:sessions) (:type :leaf)
                                  |v $ {} (:at 1636982775596) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1636982775596) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1636982775596) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636982775596) (:by |B1y7Rc-Zz) (:text |storage-path) (:type :leaf)
                          |j $ {} (:at 1636982775596) (:by |B1y7Rc-Zz) (:text |storage-file) (:type :leaf)
                      |r $ {} (:at 1636982775596) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636982775596) (:by |B1y7Rc-Zz) (:text |backup-path) (:type :leaf)
                          |j $ {} (:at 1636982775596) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1636982775596) (:by |B1y7Rc-Zz) (:text |get-backup-path!) (:type :leaf)
                  |r $ {} (:at 1636982775596) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636982775596) (:by |B1y7Rc-Zz) (:text |check-write-file!) (:type :leaf)
                      |j $ {} (:at 1636982775596) (:by |B1y7Rc-Zz) (:text |storage-path) (:type :leaf)
                      |r $ {} (:at 1636982775596) (:by |B1y7Rc-Zz) (:text |file-content) (:type :leaf)
                  |v $ {} (:at 1636982775596) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636982775596) (:by |B1y7Rc-Zz) (:text |check-write-file!) (:type :leaf)
                      |j $ {} (:at 1636982775596) (:by |B1y7Rc-Zz) (:text |backup-path) (:type :leaf)
                      |r $ {} (:at 1636982775596) (:by |B1y7Rc-Zz) (:text |file-content) (:type :leaf)
          |reload! $ {} (:at 1636982787740) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1636982787740) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1636982787740) (:by |B1y7Rc-Zz) (:text |reload!) (:type :leaf)
              |r $ {} (:at 1636982787740) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
              |v $ {} (:at 1636982787740) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636982787740) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                  |j $ {} (:at 1636982787740) (:by |B1y7Rc-Zz) (:text "|\"Code updated..") (:type :leaf)
              |x $ {} (:at 1636982787740) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636982787740) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                  |j $ {} (:at 1636982787740) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636982787740) (:by |B1y7Rc-Zz) (:text |not) (:type :leaf)
                      |j $ {} (:at 1636982787740) (:by |B1y7Rc-Zz) (:text |config/dev?) (:type :leaf)
                  |r $ {} (:at 1636982787740) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636982787740) (:by |B1y7Rc-Zz) (:text |raise) (:type :leaf)
                      |j $ {} (:at 1636982787740) (:by |B1y7Rc-Zz) (:text "|\"reloading only happens in dev mode") (:type :leaf)
              |y $ {} (:at 1636982787740) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636982787740) (:by |B1y7Rc-Zz) (:text |clear-twig-caches!) (:type :leaf)
              |yT $ {} (:at 1636982787740) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636982787740) (:by |B1y7Rc-Zz) (:text |reset!) (:type :leaf)
                  |j $ {} (:at 1636982787740) (:by |B1y7Rc-Zz) (:text |*reel) (:type :leaf)
                  |r $ {} (:at 1636982787740) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636982787740) (:by |B1y7Rc-Zz) (:text |refresh-reel) (:type :leaf)
                      |j $ {} (:at 1636982787740) (:by |B1y7Rc-Zz) (:text |@*reel) (:type :leaf)
                      |r $ {} (:at 1636982787740) (:by |B1y7Rc-Zz) (:text |@*initial-db) (:type :leaf)
                      |v $ {} (:at 1636982787740) (:by |B1y7Rc-Zz) (:text |updater) (:type :leaf)
              |yj $ {} (:at 1636982787740) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636982787740) (:by |B1y7Rc-Zz) (:text |sync-clients!) (:type :leaf)
                  |j $ {} (:at 1636982787740) (:by |B1y7Rc-Zz) (:text |@*reader-reel) (:type :leaf)
          |render-loop! $ {} (:at 1629572869924) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629572869924) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1629572869924) (:by |B1y7Rc-Zz) (:text |render-loop!) (:type :leaf)
              |r $ {} (:at 1629572869924) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
              |v $ {} (:at 1629572869924) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629572869924) (:by |B1y7Rc-Zz) (:text |when) (:type :leaf)
                  |j $ {} (:at 1629572869924) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629572869924) (:by |B1y7Rc-Zz) (:text |not) (:type :leaf)
                      |j $ {} (:at 1629572869924) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629572869924) (:by |B1y7Rc-Zz) (:text |identical?) (:type :leaf)
                          |j $ {} (:at 1629572869924) (:by |B1y7Rc-Zz) (:text |@*reader-reel) (:type :leaf)
                          |r $ {} (:at 1629572869924) (:by |B1y7Rc-Zz) (:text |@*reel) (:type :leaf)
                  |r $ {} (:at 1629572869924) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629572869924) (:by |B1y7Rc-Zz) (:text |reset!) (:type :leaf)
                      |j $ {} (:at 1629572869924) (:by |B1y7Rc-Zz) (:text |*reader-reel) (:type :leaf)
                      |r $ {} (:at 1629572869924) (:by |B1y7Rc-Zz) (:text |@*reel) (:type :leaf)
                  |v $ {} (:at 1629572869924) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629572869924) (:by |B1y7Rc-Zz) (:text |sync-clients!) (:type :leaf)
                      |j $ {} (:at 1629572869924) (:by |B1y7Rc-Zz) (:text |@*reader-reel) (:type :leaf)
          |run-server! $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |run-server!) (:type :leaf)
              |r $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |port) (:type :leaf)
              |v $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |wss-serve!) (:type :leaf)
                  |j $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |&{}) (:type :leaf)
                      |j $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |:port) (:type :leaf)
                      |r $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |port) (:type :leaf)
                  |r $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                      |j $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |data) (:type :leaf)
                      |r $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |key-match) (:type :leaf)
                          |j $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |data) (:type :leaf)
                          |r $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |:connect) (:type :leaf)
                                  |j $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                              |j $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |do) (:type :leaf)
                                  |j $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |dispatch!) (:type :leaf)
                                      |j $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |:session/connect) (:type :leaf)
                                      |r $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
                                      |v $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                                  |r $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                                      |j $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:text "|\"New client.") (:type :leaf)
                          |v $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |:message) (:type :leaf)
                                  |j $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                                  |r $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |msg) (:type :leaf)
                              |j $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                                  |j $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |action) (:type :leaf)
                                          |j $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |parse-cirru-edn) (:type :leaf)
                                              |j $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |msg) (:type :leaf)
                                  |r $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |case-default) (:type :leaf)
                                      |j $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |:kind) (:type :leaf)
                                          |j $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |action) (:type :leaf)
                                      |r $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                                          |j $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:text "|\"unknown action:") (:type :leaf)
                                          |r $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |action) (:type :leaf)
                                      |v $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |:op) (:type :leaf)
                                          |j $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |dispatch!) (:type :leaf)
                                              |j $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |:op) (:type :leaf)
                                                  |j $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |action) (:type :leaf)
                                              |r $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |:data) (:type :leaf)
                                                  |j $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |action) (:type :leaf)
                                              |v $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                          |x $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |:disconnect) (:type :leaf)
                                  |j $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                              |j $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |do) (:type :leaf)
                                  |j $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                                      |j $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:text "|\"Client closed!") (:type :leaf)
                                  |r $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |dispatch!) (:type :leaf)
                                      |j $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |:session/disconnect) (:type :leaf)
                                      |r $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
                                      |v $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                          |y $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |_) (:type :leaf)
                              |j $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                                  |j $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:text "|\"unknown data:") (:type :leaf)
                                  |r $ {} (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |data) (:type :leaf)
          |storage-file $ {} (:at 1636982827887) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1636982827887) (:by |B1y7Rc-Zz) (:text |def) (:type :leaf)
              |j $ {} (:at 1636982827887) (:by |B1y7Rc-Zz) (:text |storage-file) (:type :leaf)
              |r $ {} (:at 1636982827887) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636982827887) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                  |j $ {} (:at 1636982827887) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636982827887) (:by |B1y7Rc-Zz) (:text |empty?) (:type :leaf)
                      |j $ {} (:at 1636982827887) (:by |B1y7Rc-Zz) (:text |calcit-dirname) (:type :leaf)
                  |r $ {} (:at 1636982827887) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636982827887) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                      |j $ {} (:at 1636982827887) (:by |B1y7Rc-Zz) (:text |calcit-dirname) (:type :leaf)
                      |r $ {} (:at 1636982827887) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636982827887) (:by |B1y7Rc-Zz) (:text |:storage-file) (:type :leaf)
                          |j $ {} (:at 1636982827887) (:by |B1y7Rc-Zz) (:text |config/site) (:type :leaf)
                  |v $ {} (:at 1636982827887) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636982827887) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                      |j $ {} (:at 1636982827887) (:by |B1y7Rc-Zz) (:text |calcit-dirname) (:type :leaf)
                      |r $ {} (:at 1636982827887) (:by |B1y7Rc-Zz) (:text "|\"/") (:type :leaf)
                      |v $ {} (:at 1636982827887) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636982827887) (:by |B1y7Rc-Zz) (:text |:storage-file) (:type :leaf)
                          |j $ {} (:at 1636982827887) (:by |B1y7Rc-Zz) (:text |config/site) (:type :leaf)
          |sync-clients! $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |sync-clients!) (:type :leaf)
              |r $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |reel) (:type :leaf)
              |v $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |wss-each!) (:type :leaf)
                  |j $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                      |j $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                      |r $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                          |j $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                                  |j $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |:db) (:type :leaf)
                                      |j $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |reel) (:type :leaf)
                              |j $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |records) (:type :leaf)
                                  |j $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |:records) (:type :leaf)
                                      |j $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |reel) (:type :leaf)
                              |r $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |session) (:type :leaf)
                                  |j $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |get-in) (:type :leaf)
                                      |j $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                                      |r $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                                          |j $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |:sessions) (:type :leaf)
                                          |r $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                              |v $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |old-store) (:type :leaf)
                                  |j $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |or) (:type :leaf)
                                      |j $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |get) (:type :leaf)
                                          |j $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |@*client-caches) (:type :leaf)
                                          |r $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                                      |r $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
                              |x $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |new-store) (:type :leaf)
                                  |j $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |twig-container) (:type :leaf)
                                      |j $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                                      |r $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |session) (:type :leaf)
                                      |v $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |records) (:type :leaf)
                              |y $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |changes) (:type :leaf)
                                  |j $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |diff-twig) (:type :leaf)
                                      |j $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |old-store) (:type :leaf)
                                      |r $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |new-store) (:type :leaf)
                                      |v $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |:key) (:type :leaf)
                                              |j $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |:id) (:type :leaf)
                          |r $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |;) (:type :leaf)
                              |j $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |when) (:type :leaf)
                              |r $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |config/dev?) (:type :leaf)
                              |v $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                                  |j $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text "|\"Changes for") (:type :leaf)
                                  |r $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                                  |v $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text "|\":") (:type :leaf)
                                  |x $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |changes) (:type :leaf)
                                  |y $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |count) (:type :leaf)
                                      |j $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |records) (:type :leaf)
                          |v $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                              |j $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |not=) (:type :leaf)
                                  |j $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |changes) (:type :leaf)
                                  |r $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                              |r $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |do) (:type :leaf)
                                  |j $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |wss-send!) (:type :leaf)
                                      |j $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                                      |r $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |format-cirru-edn) (:type :leaf)
                                          |j $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                              |j $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |:kind) (:type :leaf)
                                                  |j $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |:patch) (:type :leaf)
                                              |r $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |:data) (:type :leaf)
                                                  |j $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |changes) (:type :leaf)
                                  |r $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |swap!) (:type :leaf)
                                      |j $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |*client-caches) (:type :leaf)
                                      |r $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |assoc) (:type :leaf)
                                      |v $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                                      |x $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |new-store) (:type :leaf)
              |x $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |new-twig-loop!) (:type :leaf)
        :ns $ {} (:at 1608701436551) (:by |B1y7Rc-Zz) (:type :expr)
          :data $ {}
            |T $ {} (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |ns) (:type :leaf)
            |j $ {} (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |app.server) (:type :leaf)
            |r $ {} (:at 1608701436551) (:by |B1y7Rc-Zz) (:type :expr)
              :data $ {}
                |T $ {} (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |:require) (:type :leaf)
                |j $ {} (:at 1608701436551) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |app.schema) (:type :leaf)
                    |r $ {} (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |schema) (:type :leaf)
                |r $ {} (:at 1608701436551) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |app.updater) (:type :leaf)
                    |r $ {} (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1608701436551) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |updater) (:type :leaf)
                |x $ {} (:at 1608701436551) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |cumulo-reel.core) (:type :leaf)
                    |r $ {} (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1608701436551) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |reel-reducer) (:type :leaf)
                        |r $ {} (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |refresh-reel) (:type :leaf)
                        |v $ {} (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |reel-schema) (:type :leaf)
                |yj $ {} (:at 1608701436551) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |app.config) (:type :leaf)
                    |r $ {} (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |config) (:type :leaf)
                |yx $ {} (:at 1608701436551) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |app.twig.container) (:type :leaf)
                    |r $ {} (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1608701436551) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |twig-container) (:type :leaf)
                |yy $ {} (:at 1608701436551) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |recollect.diff) (:type :leaf)
                    |r $ {} (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1608701436551) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |diff-twig) (:type :leaf)
                |yyT $ {} (:at 1636982878217) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1636982878217) (:by |B1y7Rc-Zz) (:text |wss.core) (:type :leaf)
                    |j $ {} (:at 1636982878217) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1636982878217) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1636982878217) (:by |B1y7Rc-Zz) (:text |wss-serve!) (:type :leaf)
                        |j $ {} (:at 1636982878217) (:by |B1y7Rc-Zz) (:text |wss-send!) (:type :leaf)
                        |r $ {} (:at 1636982878217) (:by |B1y7Rc-Zz) (:text |wss-each!) (:type :leaf)
                |yyr $ {} (:at 1608701436551) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |recollect.twig) (:type :leaf)
                    |r $ {} (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1608701436551) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |new-twig-loop!) (:type :leaf)
                        |r $ {} (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |clear-twig-caches!) (:type :leaf)
                |yyv $ {} (:at 1636982862642) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1636982862642) (:by |B1y7Rc-Zz) (:text |app.$meta) (:type :leaf)
                    |j $ {} (:at 1636982862642) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1636982862642) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1636982862642) (:by |B1y7Rc-Zz) (:text |calcit-dirname) (:type :leaf)
                |yyx $ {} (:at 1636982867033) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1636982867033) (:by |B1y7Rc-Zz) (:text |calcit.std.fs) (:type :leaf)
                    |j $ {} (:at 1636982867033) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1636982867033) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1636982867033) (:by |B1y7Rc-Zz) (:text |path-exists?) (:type :leaf)
                        |j $ {} (:at 1636982867033) (:by |B1y7Rc-Zz) (:text |check-write-file!) (:type :leaf)
                |yyy $ {} (:at 1636982867033) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1636982867033) (:by |B1y7Rc-Zz) (:text |calcit.std.time) (:type :leaf)
                    |j $ {} (:at 1636982867033) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1636982867033) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1636982867033) (:by |B1y7Rc-Zz) (:text |set-interval) (:type :leaf)
                |yyyT $ {} (:at 1636982867033) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1636982867033) (:by |B1y7Rc-Zz) (:text |calcit.std.date) (:type :leaf)
                    |j $ {} (:at 1636982867033) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1636982867033) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1636982867033) (:by |B1y7Rc-Zz) (:text |Date) (:type :leaf)
                        |j $ {} (:at 1636982867033) (:by |B1y7Rc-Zz) (:text |get-time!) (:type :leaf)
                |yyyj $ {} (:at 1636982867033) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1636982867033) (:by |B1y7Rc-Zz) (:text |calcit.std.path) (:type :leaf)
                    |j $ {} (:at 1636982867033) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1636982867033) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1636982867033) (:by |B1y7Rc-Zz) (:text |join-path) (:type :leaf)
        :proc $ {} (:at 1608701436551) (:by |B1y7Rc-Zz) (:type :expr)
          :data $ {}
      |app.style $ {}
        :defs $ {}
          |link $ {} (:at 1519367966237) (:by |root) (:type :expr)
            :data $ {}
              |T $ {} (:at 1519367970413) (:by |root) (:text |def) (:type :leaf)
              |j $ {} (:at 1519367966237) (:by |root) (:text |link) (:type :leaf)
              |r $ {} (:at 1519367966237) (:by |root) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1519367974187) (:by |root) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1519367974501) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1519367980887) (:by |root) (:text |:text-decoration) (:type :leaf)
                      |j $ {} (:at 1519367984967) (:by |root) (:text |:underline) (:type :leaf)
                  |r $ {} (:at 1519367985371) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1519367998049) (:by |root) (:text |:cursor) (:type :leaf)
                      |j $ {} (:at 1519367996458) (:by |root) (:text |:pointer) (:type :leaf)
                  |v $ {} (:at 1519368028360) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1519368029579) (:by |root) (:text |:color) (:type :leaf)
                      |j $ {} (:at 1519368031142) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1519368031562) (:by |root) (:text |hsl) (:type :leaf)
                          |j $ {} (:at 1519368032307) (:by |root) (:text |240) (:type :leaf)
                          |r $ {} (:at 1519368032737) (:by |root) (:text |80) (:type :leaf)
                          |v $ {} (:at 1519368033240) (:by |root) (:text |80) (:type :leaf)
                  |x $ {} (:at 1519368217607) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1519368219848) (:by |root) (:text |:font-family) (:type :leaf)
                      |j $ {} (:at 1519368227853) (:by |root) (:text |ui/font-fancy) (:type :leaf)
        :ns $ {} (:at 1519367963533) (:by |root) (:type :expr)
          :data $ {}
            |T $ {} (:at 1519367963533) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1519367963533) (:by |root) (:text |app.style) (:type :leaf)
            |r $ {} (:at 1519368036923) (:by |root) (:type :expr)
              :data $ {}
                |T $ {} (:at 1519368038192) (:by |root) (:text |:require) (:type :leaf)
                |j $ {} (:at 1519368038575) (:by |root) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1519368038764) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1519368040947) (:by |root) (:text |hsl.core) (:type :leaf)
                    |r $ {} (:at 1519368041713) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1519368041918) (:by |root) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1519368042785) (:by |root) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1519368043289) (:by |root) (:text |hsl) (:type :leaf)
                |r $ {} (:at 1519368236509) (:by |root) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1519368236979) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1519368258261) (:by |root) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1519368241627) (:by |root) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1519368242073) (:by |root) (:text |ui) (:type :leaf)
        :proc $ {} (:at 1519367963533) (:by |root) (:type :expr)
          :data $ {}
      |app.twig.container $ {}
        :defs $ {}
          |twig-container $ {} (:at 1500541255553) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629572343927) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:text |twig-container) (:type :leaf)
              |n $ {} (:at 1500541255553) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:text |db) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:text |session) (:type :leaf)
                  |r $ {} (:at 1507828952210) (:by |root) (:text |records) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:text |let) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541255553) (:by |root) (:text |logged-in?) (:type :leaf)
                          |j $ {} (:at 1500541255553) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541255553) (:by |root) (:text |some?) (:type :leaf)
                              |j $ {} (:at 1500541255553) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:text |:user-id) (:type :leaf)
                                  |j $ {} (:at 1500541255553) (:by |root) (:text |session) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541255553) (:by |root) (:text |router) (:type :leaf)
                          |j $ {} (:at 1500541255553) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541255553) (:by |root) (:text |:router) (:type :leaf)
                              |j $ {} (:at 1500541255553) (:by |root) (:text |session) (:type :leaf)
                      |r $ {} (:at 1507830626848) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1507830630278) (:by |root) (:text |base-data) (:type :leaf)
                          |j $ {} (:at 1507830631302) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1507830631896) (:by |root) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1507830632113) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1507830641027) (:by |root) (:text |:logged-in?) (:type :leaf)
                                  |j $ {} (:at 1507830639219) (:by |root) (:text |logged-in?) (:type :leaf)
                              |n $ {} (:at 1507830674443) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1507830677551) (:by |root) (:text |:session) (:type :leaf)
                                  |j $ {} (:at 1507830679311) (:by |root) (:text |session) (:type :leaf)
                              |v $ {} (:at 1507830649968) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1507830655148) (:by |root) (:text |:reel-length) (:type :leaf)
                                  |j $ {} (:at 1507830655987) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1507830657551) (:by |root) (:text |count) (:type :leaf)
                                      |j $ {} (:at 1507830658789) (:by |root) (:text |records) (:type :leaf)
                  |r $ {} (:at 1507830661017) (:by |root) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1507830661999) (:by |root) (:text |merge) (:type :leaf)
                      |L $ {} (:at 1507830664014) (:by |root) (:text |base-data) (:type :leaf)
                      |T $ {} (:at 1500541255553) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541255553) (:by |root) (:text |if) (:type :leaf)
                          |j $ {} (:at 1500541255553) (:by |root) (:text |logged-in?) (:type :leaf)
                          |r $ {} (:at 1537033468190) (:by |root) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1537033469785) (:by |root) (:text |let) (:type :leaf)
                              |L $ {} (:at 1537033470122) (:by |root) (:type :expr)
                                :data $ {}
                                  |j $ {} (:at 1537033759553) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1537033760009) (:by |root) (:text |user) (:type :leaf)
                                      |j $ {} (:at 1537033763481) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1537033763481) (:by |root) (:text |get-in) (:type :leaf)
                                          |j $ {} (:at 1537033763481) (:by |root) (:text |db) (:type :leaf)
                                          |r $ {} (:at 1537033763481) (:by |root) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1537033763481) (:by |root) (:text |[]) (:type :leaf)
                                              |j $ {} (:at 1537033763481) (:by |root) (:text |:users) (:type :leaf)
                                              |r $ {} (:at 1537033763481) (:by |root) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1537033763481) (:by |root) (:text |:user-id) (:type :leaf)
                                                  |j $ {} (:at 1537033763481) (:by |root) (:text |session) (:type :leaf)
                              |T $ {} (:at 1500541255553) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:text |{}) (:type :leaf)
                                  |v $ {} (:at 1500541255553) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541255553) (:by |root) (:text |:user) (:type :leaf)
                                      |j $ {} (:at 1500541255553) (:by nil) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541255553) (:by |root) (:text |twig-user) (:type :leaf)
                                          |j $ {} (:at 1537033765433) (:by |root) (:text |user) (:type :leaf)
                                  |x $ {} (:at 1500541255553) (:by nil) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541255553) (:by |root) (:text |:router) (:type :leaf)
                                      |j $ {} (:at 1524070628251) (:by |root) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1524070634499) (:by |root) (:text |assoc) (:type :leaf)
                                          |T $ {} (:at 1500541255553) (:by |root) (:text |router) (:type :leaf)
                                          |j $ {} (:at 1524070635855) (:by |root) (:text |:data) (:type :leaf)
                                          |r $ {} (:at 1524070636122) (:by |root) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629572373307) (:by |B1y7Rc-Zz) (:text |case-default) (:type :leaf)
                                              |j $ {} (:at 1524070641804) (:by |root) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1524070642493) (:by |root) (:text |:name) (:type :leaf)
                                                  |j $ {} (:at 1524070643351) (:by |root) (:text |router) (:type :leaf)
                                              |l $ {} (:at 1629572374351) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1629572374762) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                              |n $ {} (:at 1525108994160) (:by |root) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1525108995413) (:by |root) (:text |:home) (:type :leaf)
                                                  |j $ {} (:at 1575989715262) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |D $ {} (:at 1575989716569) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                                      |T $ {} (:at 1575989717045) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |D $ {} (:at 1575989719688) (:by |B1y7Rc-Zz) (:text |:emotions) (:type :leaf)
                                                          |T $ {} (:at 1539796128384) (:by |root) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1539796128384) (:by |root) (:text |:emotions) (:type :leaf)
                                                              |j $ {} (:at 1539796128384) (:by |root) (:text |user) (:type :leaf)
                                                      |j $ {} (:at 1575989993307) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1575989995944) (:by |B1y7Rc-Zz) (:text |:moods) (:type :leaf)
                                                          |j $ {} (:at 1575990063192) (:by |B1y7Rc-Zz) (:type :expr)
                                                            :data $ {}
                                                              |D $ {} (:at 1629572377389) (:by |B1y7Rc-Zz) (:text |->) (:type :leaf)
                                                              |T $ {} (:at 1575989996344) (:by |B1y7Rc-Zz) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1575989998757) (:by |B1y7Rc-Zz) (:text |:moods) (:type :leaf)
                                                                  |j $ {} (:at 1575990015046) (:by |B1y7Rc-Zz) (:text |user) (:type :leaf)
                                                              |b $ {} (:at 1629572392659) (:by |B1y7Rc-Zz) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1629572394055) (:by |B1y7Rc-Zz) (:text |.to-list) (:type :leaf)
                                                              |j $ {} (:at 1575990066573) (:by |B1y7Rc-Zz) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1629572378492) (:by |B1y7Rc-Zz) (:text |.sort-by) (:type :leaf)
                                                                  |j $ {} (:at 1575990077795) (:by |B1y7Rc-Zz) (:type :expr)
                                                                    :data $ {}
                                                                      |T $ {} (:at 1575990078141) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                                                      |j $ {} (:at 1575990078791) (:by |B1y7Rc-Zz) (:type :expr)
                                                                        :data $ {}
                                                                          |T $ {} (:at 1629572405698) (:by |B1y7Rc-Zz) (:text |pair) (:type :leaf)
                                                                      |r $ {} (:at 1575990290061) (:by |B1y7Rc-Zz) (:type :expr)
                                                                        :data $ {}
                                                                          |D $ {} (:at 1629572398407) (:by |B1y7Rc-Zz) (:text |negate) (:type :leaf)
                                                                          |T $ {} (:at 1575990084815) (:by |B1y7Rc-Zz) (:type :expr)
                                                                            :data $ {}
                                                                              |T $ {} (:at 1575990086059) (:by |B1y7Rc-Zz) (:text |:time) (:type :leaf)
                                                                              |j $ {} (:at 1629572400980) (:by |B1y7Rc-Zz) (:type :expr)
                                                                                :data $ {}
                                                                                  |D $ {} (:at 1629572401859) (:by |B1y7Rc-Zz) (:text |last) (:type :leaf)
                                                                                  |T $ {} (:at 1629572403034) (:by |B1y7Rc-Zz) (:text |pair) (:type :leaf)
                                                              |r $ {} (:at 1575990161924) (:by |B1y7Rc-Zz) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1575990163106) (:by |B1y7Rc-Zz) (:text |take) (:type :leaf)
                                                                  |j $ {} (:at 1575990893785) (:by |B1y7Rc-Zz) (:text |8) (:type :leaf)
                                                              |v $ {} (:at 1629572387874) (:by |B1y7Rc-Zz) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1629572390159) (:by |B1y7Rc-Zz) (:text |.pairs-map) (:type :leaf)
                                              |o $ {} (:at 1525108994160) (:by |root) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1539796109906) (:by |root) (:text |:history) (:type :leaf)
                                                  |j $ {} (:at 1539796116292) (:by |root) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1539796116292) (:by |root) (:text |{}) (:type :leaf)
                                                      |j $ {} (:at 1539796116292) (:by |root) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1539796116292) (:by |root) (:text |:emotions) (:type :leaf)
                                                          |j $ {} (:at 1539796116292) (:by |root) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1539796116292) (:by |root) (:text |:emotions) (:type :leaf)
                                                              |j $ {} (:at 1539796116292) (:by |root) (:text |user) (:type :leaf)
                                                      |r $ {} (:at 1539796116292) (:by |root) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1539796116292) (:by |root) (:text |:moods) (:type :leaf)
                                                          |j $ {} (:at 1539796116292) (:by |root) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1539796116292) (:by |root) (:text |:moods) (:type :leaf)
                                                              |j $ {} (:at 1539796116292) (:by |root) (:text |user) (:type :leaf)
                                              |p $ {} (:at 1537119549954) (:by |root) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1539795850115) (:by |root) (:text |:emotions) (:type :leaf)
                                                  |j $ {} (:at 1539795851489) (:by |root) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1539795856455) (:by |root) (:text |:emotions) (:type :leaf)
                                                      |j $ {} (:at 1539795858017) (:by |root) (:text |user) (:type :leaf)
                                              |q $ {} (:at 1539883019129) (:by |root) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1539883023023) (:by |root) (:text |:edit-emotion) (:type :leaf)
                                                  |j $ {} (:at 1539883023790) (:by |root) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1539883027778) (:by |root) (:text |if) (:type :leaf)
                                                      |j $ {} (:at 1539883036375) (:by |root) (:type :expr)
                                                        :data $ {}
                                                          |D $ {} (:at 1539883037611) (:by |root) (:text |nil?) (:type :leaf)
                                                          |T $ {} (:at 1539883030524) (:by |root) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1539883034764) (:by |root) (:text |:data) (:type :leaf)
                                                              |j $ {} (:at 1539883036058) (:by |root) (:text |router) (:type :leaf)
                                                      |r $ {} (:at 1539883247158) (:by |root) (:text |nil) (:type :leaf)
                                                      |v $ {} (:at 1539883041463) (:by |root) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1539883047076) (:by |root) (:text |get-in) (:type :leaf)
                                                          |j $ {} (:at 1539883073585) (:by |root) (:text |user) (:type :leaf)
                                                          |r $ {} (:at 1539883048010) (:by |root) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1539883048281) (:by |root) (:text |[]) (:type :leaf)
                                                              |j $ {} (:at 1539883063014) (:by |root) (:text |:emotions) (:type :leaf)
                                                              |r $ {} (:at 1539883059008) (:by |root) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1539883059901) (:by |root) (:text |:data) (:type :leaf)
                                                                  |j $ {} (:at 1539883060802) (:by |root) (:text |router) (:type :leaf)
                                              |r $ {} (:at 1524070643948) (:by |root) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1524070646898) (:by |root) (:text |:profile) (:type :leaf)
                                                  |j $ {} (:at 1524070654495) (:by |root) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1524070662619) (:by |root) (:text |twig-members) (:type :leaf)
                                                      |j $ {} (:at 1524070665615) (:by |root) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1524070670477) (:by |root) (:text |:sessions) (:type :leaf)
                                                          |j $ {} (:at 1524070672563) (:by |root) (:text |db) (:type :leaf)
                                                      |r $ {} (:at 1524070673171) (:by |root) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1524070674094) (:by |root) (:text |:users) (:type :leaf)
                                                          |j $ {} (:at 1524070675166) (:by |root) (:text |db) (:type :leaf)
                                  |y $ {} (:at 1523120222572) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1523120223864) (:by |root) (:text |:count) (:type :leaf)
                                      |j $ {} (:at 1523120229051) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1523120230136) (:by |root) (:text |count) (:type :leaf)
                                          |j $ {} (:at 1523120230346) (:by |root) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1523120232122) (:by |root) (:text |:sessions) (:type :leaf)
                                              |j $ {} (:at 1523120232500) (:by |root) (:text |db) (:type :leaf)
                                  |yT $ {} (:at 1524279105545) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1533834715393) (:by |B1y7Rc-Zz) (:text |:color) (:type :leaf)
                                      |j $ {} (:at 1524279111422) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1636982901276) (:by |B1y7Rc-Zz) (:text |rand-hex-color!) (:type :leaf)
                          |v $ {} (:at 1636982892406) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1636982892891) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
          |twig-members $ {} (:at 1524070676419) (:by |root) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629572414071) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1524070676419) (:by |root) (:text |twig-members) (:type :leaf)
              |r $ {} (:at 1524070676419) (:by |root) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1524070680419) (:by |root) (:text |sessions) (:type :leaf)
                  |j $ {} (:at 1524070708862) (:by |root) (:text |users) (:type :leaf)
              |v $ {} (:at 1524070683188) (:by |root) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629572416325) (:by |B1y7Rc-Zz) (:text |->) (:type :leaf)
                  |j $ {} (:at 1524070692906) (:by |root) (:text |sessions) (:type :leaf)
                  |r $ {} (:at 1524070693234) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629572424690) (:by |B1y7Rc-Zz) (:text |map-kv) (:type :leaf)
                      |j $ {} (:at 1524070696021) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1524070696334) (:by |root) (:text |fn) (:type :leaf)
                          |j $ {} (:at 1524070696681) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1524070697507) (:by |root) (:text |k) (:type :leaf)
                              |j $ {} (:at 1524070699358) (:by |root) (:text |session) (:type :leaf)
                          |r $ {} (:at 1524070700350) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1524070701520) (:by |root) (:text |[]) (:type :leaf)
                              |j $ {} (:at 1524070702142) (:by |root) (:text |k) (:type :leaf)
                              |r $ {} (:at 1524070702968) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1524070705127) (:by |root) (:text |get-in) (:type :leaf)
                                  |j $ {} (:at 1524070714762) (:by |root) (:text |users) (:type :leaf)
                                  |r $ {} (:at 1524070715457) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1524070716715) (:by |root) (:text |[]) (:type :leaf)
                                      |j $ {} (:at 1524070717257) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1524070720176) (:by |root) (:text |:user-id) (:type :leaf)
                                          |j $ {} (:at 1524070722292) (:by |root) (:text |session) (:type :leaf)
                                      |r $ {} (:at 1524070725752) (:by |root) (:text |:name) (:type :leaf)
        :ns $ {} (:at 1500541255553) (:by nil) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541255553) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541255553) (:by |root) (:text |app.twig.container) (:type :leaf)
            |r $ {} (:at 1500541255553) (:by nil) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541255553) (:by |root) (:text |:require) (:type :leaf)
                |r $ {} (:at 1500541255553) (:by nil) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541255553) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541255553) (:by |root) (:text |app.twig.user) (:type :leaf)
                    |r $ {} (:at 1500541255553) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541255553) (:by nil) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541255553) (:by |root) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541255553) (:by |root) (:text |twig-user) (:type :leaf)
                |v $ {} (:at 1636982908083) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1636982908083) (:by |B1y7Rc-Zz) (:text |calcit.std.rand) (:type :leaf)
                    |j $ {} (:at 1636982908083) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1636982908083) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1636982908083) (:by |B1y7Rc-Zz) (:text |rand-hex-color!) (:type :leaf)
        :proc $ {} (:at 1500541255553) (:by nil) (:type :expr)
          :data $ {}
      |app.twig.user $ {}
        :defs $ {}
          |twig-user $ {} (:at 1500541255553) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629572356219) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:text |twig-user) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:text |user) (:type :leaf)
              |v $ {} (:at 1537378003804) (:by |root) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1537378004895) (:by |root) (:text |->) (:type :leaf)
                  |L $ {} (:at 1537378015860) (:by |root) (:text |user) (:type :leaf)
                  |T $ {} (:at 1500541255553) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:text |dissoc) (:type :leaf)
                      |r $ {} (:at 1500541255553) (:by |root) (:text |:password) (:type :leaf)
                  |j $ {} (:at 1537378018143) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1537378019996) (:by |root) (:text |dissoc) (:type :leaf)
                      |j $ {} (:at 1537378021600) (:by |root) (:text |:moods) (:type :leaf)
                  |r $ {} (:at 1537378022599) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1537378024309) (:by |root) (:text |dissoc) (:type :leaf)
                      |j $ {} (:at 1537378036122) (:by |root) (:text |:archived-moods) (:type :leaf)
        :ns $ {} (:at 1500541255553) (:by nil) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541255553) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541255553) (:by |root) (:text |app.twig.user) (:type :leaf)
            |r $ {} (:at 1500541255553) (:by nil) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541255553) (:by |root) (:text |:require) (:type :leaf)
                |j $ {} (:at 1500541255553) (:by nil) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541255553) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1511004268753) (:by |root) (:text |recollect.twig) (:type :leaf)
                    |r $ {} (:at 1500541255553) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541255553) (:by nil) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541255553) (:by |root) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1511004273474) (:by |root) (:text |deftwig) (:type :leaf)
        :proc $ {} (:at 1500541255553) (:by nil) (:type :expr)
          :data $ {}
      |app.updater $ {}
        :defs $ {}
          |updater $ {} (:at 1500541255553) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:text |updater) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:text |db) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:text |op) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by |root) (:text |op-data) (:type :leaf)
                  |v $ {} (:at 1517930722619) (:by |root) (:text |sid) (:type :leaf)
                  |x $ {} (:at 1500541255553) (:by |root) (:text |op-id) (:type :leaf)
                  |y $ {} (:at 1500541255553) (:by |root) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1517930695338) (:by |root) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1517930698044) (:by |root) (:text |let) (:type :leaf)
                  |T $ {} (:at 1517930701054) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1517930698683) (:by |root) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1517930699996) (:by |root) (:text |f) (:type :leaf)
                          |T $ {} (:at 1500541255553) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629572318024) (:by |B1y7Rc-Zz) (:text |case-default) (:type :leaf)
                              |j $ {} (:at 1500541255553) (:by |root) (:text |op) (:type :leaf)
                              |n $ {} (:at 1629572319082) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629572319082) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                  |j $ {} (:at 1629572319082) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629572319082) (:by |B1y7Rc-Zz) (:text |&) (:type :leaf)
                                      |j $ {} (:at 1629572319082) (:by |B1y7Rc-Zz) (:text |args) (:type :leaf)
                                  |r $ {} (:at 1629572319082) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629572319082) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                                      |j $ {} (:at 1629572319082) (:by |B1y7Rc-Zz) (:text "|\"Unknown op:") (:type :leaf)
                                      |r $ {} (:at 1629572319082) (:by |B1y7Rc-Zz) (:text |op) (:type :leaf)
                                  |v $ {} (:at 1629572319082) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                              |r $ {} (:at 1500541255553) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:text |:session/connect) (:type :leaf)
                                  |j $ {} (:at 1517930788022) (:by |root) (:text |session/connect) (:type :leaf)
                              |v $ {} (:at 1500541255553) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:text |:session/disconnect) (:type :leaf)
                                  |j $ {} (:at 1517930783929) (:by |root) (:text |session/disconnect) (:type :leaf)
                              |w $ {} (:at 1529231445104) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1529231483623) (:by |root) (:text |:session/remove-message) (:type :leaf)
                                  |j $ {} (:at 1529231491015) (:by |root) (:text |session/remove-message) (:type :leaf)
                              |x $ {} (:at 1500541255553) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:text |:user/log-in) (:type :leaf)
                                  |j $ {} (:at 1517930780888) (:by |root) (:text |user/log-in) (:type :leaf)
                              |y $ {} (:at 1500541255553) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:text |:user/sign-up) (:type :leaf)
                                  |j $ {} (:at 1517930777757) (:by |root) (:text |user/sign-up) (:type :leaf)
                              |yT $ {} (:at 1500541255553) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:text |:user/log-out) (:type :leaf)
                                  |j $ {} (:at 1500541255553) (:by |root) (:text |user/log-out) (:type :leaf)
                              |yr $ {} (:at 1500541255553) (:by nil) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:text |:router/change) (:type :leaf)
                                  |j $ {} (:at 1500541255553) (:by |root) (:text |router/change) (:type :leaf)
                              |yt $ {} (:at 1539884966757) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1539884969808) (:by |root) (:text |:emotion/create-one) (:type :leaf)
                                  |j $ {} (:at 1539884973320) (:by |root) (:text |emotion/create-one) (:type :leaf)
                              |yu $ {} (:at 1539884966757) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1540037229828) (:by |root) (:text |:emotion/remove-one) (:type :leaf)
                                  |j $ {} (:at 1540037232415) (:by |root) (:text |emotion/remove-one) (:type :leaf)
                              |yuT $ {} (:at 1539884966757) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1540043018066) (:by |root) (:text |:mood/create-one) (:type :leaf)
                                  |j $ {} (:at 1540043022750) (:by |root) (:text |mood/create-one) (:type :leaf)
                              |yuj $ {} (:at 1539884966757) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1540056395459) (:by |root) (:text |:mood/remove-one) (:type :leaf)
                                  |j $ {} (:at 1540056397948) (:by |root) (:text |mood/remove-one) (:type :leaf)
                  |j $ {} (:at 1517930704255) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1517930704937) (:by |root) (:text |f) (:type :leaf)
                      |j $ {} (:at 1517930706635) (:by |root) (:text |db) (:type :leaf)
                      |r $ {} (:at 1517930709018) (:by |root) (:text |op-data) (:type :leaf)
                      |v $ {} (:at 1517930725426) (:by |root) (:text |sid) (:type :leaf)
                      |x $ {} (:at 1517930717948) (:by |root) (:text |op-id) (:type :leaf)
                      |y $ {} (:at 1517930719120) (:by |root) (:text |op-time) (:type :leaf)
        :ns $ {} (:at 1500541255553) (:by nil) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541255553) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541255553) (:by |root) (:text |app.updater) (:type :leaf)
            |r $ {} (:at 1500541255553) (:by nil) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541255553) (:by |root) (:text |:require) (:type :leaf)
                |j $ {} (:at 1500541255553) (:by nil) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541255553) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541255553) (:by |root) (:text |app.updater.session) (:type :leaf)
                    |r $ {} (:at 1500541255553) (:by |root) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541255553) (:by |root) (:text |session) (:type :leaf)
                |r $ {} (:at 1500541255553) (:by nil) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541255553) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541255553) (:by |root) (:text |app.updater.user) (:type :leaf)
                    |r $ {} (:at 1500541255553) (:by |root) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541255553) (:by |root) (:text |user) (:type :leaf)
                |v $ {} (:at 1500541255553) (:by nil) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541255553) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541255553) (:by |root) (:text |app.updater.router) (:type :leaf)
                    |r $ {} (:at 1500541255553) (:by |root) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541255553) (:by |root) (:text |router) (:type :leaf)
                |y $ {} (:at 1529231005993) (:by |root) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1529231006285) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1529231007723) (:by |root) (:text |app.schema) (:type :leaf)
                    |r $ {} (:at 1529231008972) (:by |root) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1529231009860) (:by |root) (:text |schema) (:type :leaf)
                |yT $ {} (:at 1529231108810) (:by |root) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1529231110305) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1529231113905) (:by |root) (:text |respo-message.updater) (:type :leaf)
                    |r $ {} (:at 1529231114617) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1529231114849) (:by |root) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1529231116379) (:by |root) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1529231118760) (:by |root) (:text |update-messages) (:type :leaf)
                |yj $ {} (:at 1539884975163) (:by |root) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1539884975458) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1539884978797) (:by |root) (:text |app.updater.emotion) (:type :leaf)
                    |r $ {} (:at 1539884979377) (:by |root) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1539884981727) (:by |root) (:text |emotion) (:type :leaf)
                |yr $ {} (:at 1539884975163) (:by |root) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1539884975458) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1540043029535) (:by |root) (:text |app.updater.mood) (:type :leaf)
                    |r $ {} (:at 1539884979377) (:by |root) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1540043031240) (:by |root) (:text |mood) (:type :leaf)
        :proc $ {} (:at 1500541255553) (:by nil) (:type :expr)
          :data $ {}
      |app.updater.emotion $ {}
        :defs $ {}
          |create-one $ {} (:at 1539884946588) (:by |root) (:type :expr)
            :data $ {}
              |T $ {} (:at 1539884946588) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1539884946588) (:by |root) (:text |create-one) (:type :leaf)
              |r $ {} (:at 1539884960145) (:by |root) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1539884960145) (:by |root) (:text |db) (:type :leaf)
                  |j $ {} (:at 1539884960145) (:by |root) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1539884960145) (:by |root) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1539884960145) (:by |root) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1539884960145) (:by |root) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1539884984946) (:by |root) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1539884985463) (:by |root) (:text |let) (:type :leaf)
                  |j $ {} (:at 1539884985695) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1539884986027) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1539884996130) (:by |root) (:text |user-id) (:type :leaf)
                          |j $ {} (:at 1539885000457) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1539885001457) (:by |root) (:text |get-in) (:type :leaf)
                              |j $ {} (:at 1539885003178) (:by |root) (:text |db) (:type :leaf)
                              |r $ {} (:at 1539885003517) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1539885003911) (:by |root) (:text |[]) (:type :leaf)
                                  |j $ {} (:at 1539885005386) (:by |root) (:text |:sessions) (:type :leaf)
                                  |r $ {} (:at 1539885007214) (:by |root) (:text |sid) (:type :leaf)
                                  |v $ {} (:at 1539885009645) (:by |root) (:text |:user-id) (:type :leaf)
                  |r $ {} (:at 1540036876009) (:by |root) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1540036878628) (:by |root) (:text |update-in) (:type :leaf)
                      |L $ {} (:at 1540036879809) (:by |root) (:text |db) (:type :leaf)
                      |P $ {} (:at 1540036880100) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1540036881574) (:by |root) (:text |[]) (:type :leaf)
                          |j $ {} (:at 1540036882361) (:by |root) (:text |:users) (:type :leaf)
                          |r $ {} (:at 1540036884274) (:by |root) (:text |user-id) (:type :leaf)
                          |v $ {} (:at 1540036886496) (:by |root) (:text |:emotions) (:type :leaf)
                      |T $ {} (:at 1540036890882) (:by |root) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1540036891648) (:by |root) (:text |fn) (:type :leaf)
                          |L $ {} (:at 1540036891945) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1540036894108) (:by |root) (:text |emotions) (:type :leaf)
                          |T $ {} (:at 1540036857521) (:by |root) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1540036858069) (:by |root) (:text |if) (:type :leaf)
                              |L $ {} (:at 1540036858327) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1540036859351) (:by |root) (:text |some?) (:type :leaf)
                                  |j $ {} (:at 1540036861354) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1540036862170) (:by |root) (:text |:id) (:type :leaf)
                                      |j $ {} (:at 1540036864318) (:by |root) (:text |op-data) (:type :leaf)
                              |P $ {} (:at 1540036866672) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1540036913455) (:by |root) (:text |update) (:type :leaf)
                                  |j $ {} (:at 1540036901169) (:by |root) (:text |emotions) (:type :leaf)
                                  |r $ {} (:at 1540036903281) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1540036903732) (:by |root) (:text |:id) (:type :leaf)
                                      |j $ {} (:at 1540036905513) (:by |root) (:text |op-data) (:type :leaf)
                                  |v $ {} (:at 1540036915456) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1540036915775) (:by |root) (:text |fn) (:type :leaf)
                                      |j $ {} (:at 1540036916031) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1540036918863) (:by |root) (:text |x) (:type :leaf)
                                      |r $ {} (:at 1540036919290) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1540036920010) (:by |root) (:text |merge) (:type :leaf)
                                          |j $ {} (:at 1540036920375) (:by |root) (:text |x) (:type :leaf)
                                          |r $ {} (:at 1540036923183) (:by |root) (:text |op-data) (:type :leaf)
                              |T $ {} (:at 1539885011353) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1540036931878) (:by |root) (:text |assoc) (:type :leaf)
                                  |h $ {} (:at 1540036936904) (:by |root) (:text |emotions) (:type :leaf)
                                  |o $ {} (:at 1540036935388) (:by |root) (:text |op-id) (:type :leaf)
                                  |v $ {} (:at 1539885092625) (:by |root) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1539885092625) (:by |root) (:text |merge) (:type :leaf)
                                      |j $ {} (:at 1539885092625) (:by |root) (:text |schema/emotion) (:type :leaf)
                                      |r $ {} (:at 1539885092625) (:by |root) (:text |op-data) (:type :leaf)
                                      |v $ {} (:at 1539885092625) (:by |root) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1539885092625) (:by |root) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1539885092625) (:by |root) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1539885092625) (:by |root) (:text |:id) (:type :leaf)
                                              |j $ {} (:at 1539885092625) (:by |root) (:text |op-id) (:type :leaf)
          |remove-one $ {} (:at 1540037232770) (:by |root) (:type :expr)
            :data $ {}
              |T $ {} (:at 1540037232770) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1540037232770) (:by |root) (:text |remove-one) (:type :leaf)
              |r $ {} (:at 1540037234164) (:by |root) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1540037234164) (:by |root) (:text |db) (:type :leaf)
                  |j $ {} (:at 1540037234164) (:by |root) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1540037234164) (:by |root) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1540037234164) (:by |root) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1540037234164) (:by |root) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1540037234164) (:by |root) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1540037234164) (:by |root) (:text |let) (:type :leaf)
                  |j $ {} (:at 1540037234164) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1540037234164) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1540037234164) (:by |root) (:text |user-id) (:type :leaf)
                          |j $ {} (:at 1540037234164) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1540037234164) (:by |root) (:text |get-in) (:type :leaf)
                              |j $ {} (:at 1540037234164) (:by |root) (:text |db) (:type :leaf)
                              |r $ {} (:at 1540037234164) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1540037234164) (:by |root) (:text |[]) (:type :leaf)
                                  |j $ {} (:at 1540037234164) (:by |root) (:text |:sessions) (:type :leaf)
                                  |r $ {} (:at 1540037234164) (:by |root) (:text |sid) (:type :leaf)
                                  |v $ {} (:at 1540037234164) (:by |root) (:text |:user-id) (:type :leaf)
                  |r $ {} (:at 1540037234164) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1540037234164) (:by |root) (:text |update-in) (:type :leaf)
                      |j $ {} (:at 1540037234164) (:by |root) (:text |db) (:type :leaf)
                      |r $ {} (:at 1540037234164) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1540037234164) (:by |root) (:text |[]) (:type :leaf)
                          |j $ {} (:at 1540037234164) (:by |root) (:text |:users) (:type :leaf)
                          |r $ {} (:at 1540037234164) (:by |root) (:text |user-id) (:type :leaf)
                          |v $ {} (:at 1540037234164) (:by |root) (:text |:emotions) (:type :leaf)
                      |v $ {} (:at 1540037234164) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1540037234164) (:by |root) (:text |fn) (:type :leaf)
                          |j $ {} (:at 1540037234164) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1540037234164) (:by |root) (:text |emotions) (:type :leaf)
                          |r $ {} (:at 1540037248274) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1540037249984) (:by |root) (:text |dissoc) (:type :leaf)
                              |j $ {} (:at 1540037251013) (:by |root) (:text |emotions) (:type :leaf)
                              |r $ {} (:at 1540037330356) (:by |root) (:text |op-data) (:type :leaf)
        :ns $ {} (:at 1539884941688) (:by |root) (:type :expr)
          :data $ {}
            |T $ {} (:at 1539884941688) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1539884941688) (:by |root) (:text |app.updater.emotion) (:type :leaf)
            |r $ {} (:at 1539885039317) (:by |root) (:type :expr)
              :data $ {}
                |T $ {} (:at 1539885040111) (:by |root) (:text |:require) (:type :leaf)
                |j $ {} (:at 1539885040306) (:by |root) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1539885040507) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1539885043169) (:by |root) (:text |app.schema) (:type :leaf)
                    |r $ {} (:at 1539885043741) (:by |root) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1539885046770) (:by |root) (:text |schema) (:type :leaf)
        :proc $ {} (:at 1539884941688) (:by |root) (:type :expr)
          :data $ {}
      |app.updater.mood $ {}
        :defs $ {}
          |create-one $ {} (:at 1540042843238) (:by |root) (:type :expr)
            :data $ {}
              |T $ {} (:at 1540042843238) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1540042843238) (:by |root) (:text |create-one) (:type :leaf)
              |r $ {} (:at 1540042845253) (:by |root) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1540042845253) (:by |root) (:text |db) (:type :leaf)
                  |j $ {} (:at 1540042845253) (:by |root) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1540042845253) (:by |root) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1540042845253) (:by |root) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1540042845253) (:by |root) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1540042845253) (:by |root) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1540042845253) (:by |root) (:text |let) (:type :leaf)
                  |j $ {} (:at 1540042845253) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1540042845253) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1540042845253) (:by |root) (:text |user-id) (:type :leaf)
                          |j $ {} (:at 1540042845253) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1540042845253) (:by |root) (:text |get-in) (:type :leaf)
                              |j $ {} (:at 1540042845253) (:by |root) (:text |db) (:type :leaf)
                              |r $ {} (:at 1540042845253) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1540042845253) (:by |root) (:text |[]) (:type :leaf)
                                  |j $ {} (:at 1540042845253) (:by |root) (:text |:sessions) (:type :leaf)
                                  |r $ {} (:at 1540042845253) (:by |root) (:text |sid) (:type :leaf)
                                  |v $ {} (:at 1540042845253) (:by |root) (:text |:user-id) (:type :leaf)
                  |r $ {} (:at 1540042845253) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1540042963482) (:by |root) (:text |assoc-in) (:type :leaf)
                      |j $ {} (:at 1540042845253) (:by |root) (:text |db) (:type :leaf)
                      |r $ {} (:at 1540042845253) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1540042845253) (:by |root) (:text |[]) (:type :leaf)
                          |j $ {} (:at 1540042845253) (:by |root) (:text |:users) (:type :leaf)
                          |r $ {} (:at 1540042845253) (:by |root) (:text |user-id) (:type :leaf)
                          |v $ {} (:at 1540042953031) (:by |root) (:text |:moods) (:type :leaf)
                          |x $ {} (:at 1540042967654) (:by |root) (:text |op-id) (:type :leaf)
                      |x $ {} (:at 1540043369246) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1540043370048) (:by |root) (:text |merge) (:type :leaf)
                          |j $ {} (:at 1540043372893) (:by |root) (:text |schema/mood) (:type :leaf)
                          |n $ {} (:at 1540043401783) (:by |root) (:text |op-data) (:type :leaf)
                          |r $ {} (:at 1540043373144) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1540043373478) (:by |root) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1540043373717) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1540043374088) (:by |root) (:text |:id) (:type :leaf)
                                  |j $ {} (:at 1540043375407) (:by |root) (:text |op-id) (:type :leaf)
                              |r $ {} (:at 1540043375743) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1540043376374) (:by |root) (:text |:time) (:type :leaf)
                                  |j $ {} (:at 1540043378178) (:by |root) (:text |op-time) (:type :leaf)
          |remove-one $ {} (:at 1540056402314) (:by |root) (:type :expr)
            :data $ {}
              |T $ {} (:at 1540056402314) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1540056402314) (:by |root) (:text |remove-one) (:type :leaf)
              |r $ {} (:at 1540056403811) (:by |root) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1540056403811) (:by |root) (:text |db) (:type :leaf)
                  |j $ {} (:at 1540056403811) (:by |root) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1540056403811) (:by |root) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1540056403811) (:by |root) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1540056403811) (:by |root) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1540056403811) (:by |root) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1540056403811) (:by |root) (:text |let) (:type :leaf)
                  |j $ {} (:at 1540056403811) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1540056403811) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1540056403811) (:by |root) (:text |user-id) (:type :leaf)
                          |j $ {} (:at 1540056403811) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1540056403811) (:by |root) (:text |get-in) (:type :leaf)
                              |j $ {} (:at 1540056403811) (:by |root) (:text |db) (:type :leaf)
                              |r $ {} (:at 1540056403811) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1540056403811) (:by |root) (:text |[]) (:type :leaf)
                                  |j $ {} (:at 1540056403811) (:by |root) (:text |:sessions) (:type :leaf)
                                  |r $ {} (:at 1540056403811) (:by |root) (:text |sid) (:type :leaf)
                                  |v $ {} (:at 1540056403811) (:by |root) (:text |:user-id) (:type :leaf)
                  |r $ {} (:at 1540056403811) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1540056410532) (:by |root) (:text |update-in) (:type :leaf)
                      |j $ {} (:at 1540056403811) (:by |root) (:text |db) (:type :leaf)
                      |r $ {} (:at 1540056403811) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1540056403811) (:by |root) (:text |[]) (:type :leaf)
                          |j $ {} (:at 1540056403811) (:by |root) (:text |:users) (:type :leaf)
                          |r $ {} (:at 1540056403811) (:by |root) (:text |user-id) (:type :leaf)
                          |v $ {} (:at 1540056403811) (:by |root) (:text |:moods) (:type :leaf)
                      |t $ {} (:at 1540056413376) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1540056413735) (:by |root) (:text |fn) (:type :leaf)
                          |j $ {} (:at 1540056414224) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1540056414978) (:by |root) (:text |moods) (:type :leaf)
                          |r $ {} (:at 1540056415537) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1540056416426) (:by |root) (:text |dissoc) (:type :leaf)
                              |j $ {} (:at 1540056417306) (:by |root) (:text |moods) (:type :leaf)
                              |r $ {} (:at 1540056422256) (:by |root) (:text |op-data) (:type :leaf)
        :ns $ {} (:at 1540042828728) (:by |root) (:type :expr)
          :data $ {}
            |T $ {} (:at 1540042828728) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1540042828728) (:by |root) (:text |app.updater.mood) (:type :leaf)
            |r $ {} (:at 1540042986045) (:by |root) (:type :expr)
              :data $ {}
                |T $ {} (:at 1540042986793) (:by |root) (:text |:require) (:type :leaf)
                |j $ {} (:at 1540042986928) (:by |root) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1540042987148) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1540042992474) (:by |root) (:text |app.schema) (:type :leaf)
                    |r $ {} (:at 1540042992891) (:by |root) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1540042993614) (:by |root) (:text |schema) (:type :leaf)
        :proc $ {} (:at 1540042828728) (:by |root) (:type :expr)
          :data $ {}
      |app.updater.router $ {}
        :defs $ {}
          |change $ {} (:at 1500541255553) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:text |change) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:text |db) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by |root) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by |root) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1500541255553) (:by |root) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1500541255553) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:text |assoc-in) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:text |db) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:text |[]) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:text |:sessions) (:type :leaf)
                      |r $ {} (:at 1500541255553) (:by |root) (:text |sid) (:type :leaf)
                      |v $ {} (:at 1500541255553) (:by |root) (:text |:router) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by |root) (:text |op-data) (:type :leaf)
        :ns $ {} (:at 1500541255553) (:by nil) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541255553) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541255553) (:by |root) (:text |app.updater.router) (:type :leaf)
        :proc $ {} (:at 1500541255553) (:by nil) (:type :expr)
          :data $ {}
      |app.updater.session $ {}
        :defs $ {}
          |connect $ {} (:at 1500541255553) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:text |connect) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:text |db) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by |root) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by |root) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1500541255553) (:by |root) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1500541255553) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:text |assoc-in) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:text |db) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:text |[]) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:text |:sessions) (:type :leaf)
                      |r $ {} (:at 1500541255553) (:by |root) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:text |merge) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:text |schema/session) (:type :leaf)
                      |r $ {} (:at 1500541255553) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541255553) (:by |root) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1500541255553) (:by nil) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541255553) (:by |root) (:text |:id) (:type :leaf)
                              |j $ {} (:at 1500541255553) (:by |root) (:text |sid) (:type :leaf)
          |disconnect $ {} (:at 1500541255553) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:text |disconnect) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:text |db) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by |root) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by |root) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1500541255553) (:by |root) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1500541255553) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:text |update) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:text |db) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by |root) (:text |:sessions) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:text |fn) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541255553) (:by |root) (:text |session) (:type :leaf)
                      |r $ {} (:at 1500541255553) (:by nil) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541255553) (:by |root) (:text |dissoc) (:type :leaf)
                          |j $ {} (:at 1500541255553) (:by |root) (:text |session) (:type :leaf)
                          |r $ {} (:at 1500541255553) (:by |root) (:text |sid) (:type :leaf)
          |remove-message $ {} (:at 1529231499908) (:by |root) (:type :expr)
            :data $ {}
              |T $ {} (:at 1529231499908) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1529231499908) (:by |root) (:text |remove-message) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:text |db) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by |root) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by |root) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1500541255553) (:by |root) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1529231506714) (:by |root) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1529231507936) (:by |root) (:text |update-in) (:type :leaf)
                  |j $ {} (:at 1529231509725) (:by |root) (:text |db) (:type :leaf)
                  |r $ {} (:at 1529231509958) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1529231510376) (:by |root) (:text |[]) (:type :leaf)
                      |j $ {} (:at 1529231511756) (:by |root) (:text |:sessions) (:type :leaf)
                      |r $ {} (:at 1529231512509) (:by |root) (:text |sid) (:type :leaf)
                      |v $ {} (:at 1529231515700) (:by |root) (:text |:messages) (:type :leaf)
                  |v $ {} (:at 1529231534326) (:by |root) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1529231534991) (:by |root) (:text |fn) (:type :leaf)
                      |L $ {} (:at 1529231535248) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1529231536189) (:by |root) (:text |messages) (:type :leaf)
                      |T $ {} (:at 1529231516827) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1529231517957) (:by |root) (:text |dissoc) (:type :leaf)
                          |j $ {} (:at 1529231519342) (:by |root) (:text |messages) (:type :leaf)
                          |r $ {} (:at 1529231521395) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1529231522521) (:by |root) (:text |:id) (:type :leaf)
                              |j $ {} (:at 1529231524125) (:by |root) (:text |op-data) (:type :leaf)
        :ns $ {} (:at 1500541255553) (:by nil) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541255553) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541255553) (:by |root) (:text |app.updater.session) (:type :leaf)
            |r $ {} (:at 1500541255553) (:by nil) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541255553) (:by |root) (:text |:require) (:type :leaf)
                |j $ {} (:at 1500541255553) (:by nil) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541255553) (:by |root) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541255553) (:by |root) (:text |app.schema) (:type :leaf)
                    |r $ {} (:at 1500541255553) (:by |root) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541255553) (:by |root) (:text |schema) (:type :leaf)
        :proc $ {} (:at 1500541255553) (:by nil) (:type :expr)
          :data $ {}
      |app.updater.user $ {}
        :defs $ {}
          |log-in $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |log-in) (:type :leaf)
              |r $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                  |j $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |let-sugar) (:type :leaf)
                  |j $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                              |j $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
                              |r $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |password) (:type :leaf)
                          |j $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
                      |j $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |maybe-user) (:type :leaf)
                          |j $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |->) (:type :leaf)
                              |j $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |:users) (:type :leaf)
                                  |j $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                              |r $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |vals) (:type :leaf)
                              |v $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |.to-list) (:type :leaf)
                              |x $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |find) (:type :leaf)
                                  |j $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                      |j $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |user) (:type :leaf)
                                      |r $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |and) (:type :leaf)
                                          |j $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |=) (:type :leaf)
                                              |j $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
                                              |r $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |:name) (:type :leaf)
                                                  |j $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |user) (:type :leaf)
                  |r $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |update-in) (:type :leaf)
                      |j $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                      |r $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                          |j $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |:sessions) (:type :leaf)
                          |r $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                      |v $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                          |j $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |session) (:type :leaf)
                          |r $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                              |j $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |some?) (:type :leaf)
                                  |j $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |maybe-user) (:type :leaf)
                              |r $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                                  |j $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |=) (:type :leaf)
                                      |j $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |md5) (:type :leaf)
                                          |j $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |password) (:type :leaf)
                                      |r $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |:password) (:type :leaf)
                                          |j $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |maybe-user) (:type :leaf)
                                  |r $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |assoc) (:type :leaf)
                                      |j $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |session) (:type :leaf)
                                      |r $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |:user-id) (:type :leaf)
                                      |v $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |:id) (:type :leaf)
                                          |j $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |maybe-user) (:type :leaf)
                                  |v $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |update) (:type :leaf)
                                      |j $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |session) (:type :leaf)
                                      |r $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |:messages) (:type :leaf)
                                      |v $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                          |j $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |messages) (:type :leaf)
                                          |r $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |assoc) (:type :leaf)
                                              |j $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |messages) (:type :leaf)
                                              |r $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                                              |v $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                                  |j $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |:id) (:type :leaf)
                                                      |j $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                                                  |r $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |:text) (:type :leaf)
                                                      |j $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                                                          |j $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text "|\"Wrong password for ") (:type :leaf)
                                                          |r $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
                              |v $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |update) (:type :leaf)
                                  |j $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |session) (:type :leaf)
                                  |r $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |:messages) (:type :leaf)
                                  |v $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                      |j $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |messages) (:type :leaf)
                                      |r $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |assoc) (:type :leaf)
                                          |j $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |messages) (:type :leaf)
                                          |r $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                                          |v $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                              |j $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |:id) (:type :leaf)
                                                  |j $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                                              |r $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |:text) (:type :leaf)
                                                  |j $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                                                      |j $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text "|\"No user named: ") (:type :leaf)
                                                      |r $ {} (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
          |log-out $ {} (:at 1500541255553) (:by nil) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:text |log-out) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:text |db) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by |root) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by |root) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1500541255553) (:by |root) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1500541255553) (:by nil) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:text |assoc-in) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:text |db) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by nil) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:text |[]) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:text |:sessions) (:type :leaf)
                      |r $ {} (:at 1500541255553) (:by |root) (:text |sid) (:type :leaf)
                      |v $ {} (:at 1500541255553) (:by |root) (:text |:user-id) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by |root) (:text |nil) (:type :leaf)
          |reset-mark $ {} (:at 1537033571304) (:by |root) (:type :expr)
            :data $ {}
              |T $ {} (:at 1537033571304) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1537033571304) (:by |root) (:text |reset-mark) (:type :leaf)
              |r $ {} (:at 1537033579618) (:by |root) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1537033579618) (:by |root) (:text |db) (:type :leaf)
                  |j $ {} (:at 1537033579618) (:by |root) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1537033579618) (:by |root) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1537033579618) (:by |root) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1537033579618) (:by |root) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1537033698440) (:by |root) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1537033699058) (:by |root) (:text |let) (:type :leaf)
                  |L $ {} (:at 1537033699252) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1537033699435) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1537033703384) (:by |root) (:text |user-id) (:type :leaf)
                          |j $ {} (:at 1537033703641) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1537033704553) (:by |root) (:text |get-in) (:type :leaf)
                              |j $ {} (:at 1537033705738) (:by |root) (:text |db) (:type :leaf)
                              |r $ {} (:at 1537033706982) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1537033707157) (:by |root) (:text |[]) (:type :leaf)
                                  |j $ {} (:at 1537033709874) (:by |root) (:text |:sessions) (:type :leaf)
                                  |r $ {} (:at 1537033711024) (:by |root) (:text |sid) (:type :leaf)
                                  |v $ {} (:at 1537033712828) (:by |root) (:text |:user-id) (:type :leaf)
                  |T $ {} (:at 1537033584736) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1537033592665) (:by |root) (:text |assoc-in) (:type :leaf)
                      |j $ {} (:at 1537033584736) (:by |root) (:text |db) (:type :leaf)
                      |r $ {} (:at 1537033584736) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1537033584736) (:by |root) (:text |[]) (:type :leaf)
                          |j $ {} (:at 1537033715873) (:by |root) (:text |:users) (:type :leaf)
                          |r $ {} (:at 1537033717907) (:by |root) (:text |user-id) (:type :leaf)
                          |v $ {} (:at 1537033596321) (:by |root) (:text |:history-mark) (:type :leaf)
                      |v $ {} (:at 1537033599487) (:by |root) (:text |op-time) (:type :leaf)
          |sign-up $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |sign-up) (:type :leaf)
              |r $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                  |j $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |let-sugar) (:type :leaf)
                  |j $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                              |j $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
                              |r $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |password) (:type :leaf)
                          |j $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
                      |j $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |maybe-user) (:type :leaf)
                          |j $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |find) (:type :leaf)
                              |j $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |vals) (:type :leaf)
                                  |j $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |:users) (:type :leaf)
                                      |j $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                              |r $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                  |j $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |user) (:type :leaf)
                                  |r $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |=) (:type :leaf)
                                      |j $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
                                      |r $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |:name) (:type :leaf)
                                          |j $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |user) (:type :leaf)
                  |r $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                      |j $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |some?) (:type :leaf)
                          |j $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |maybe-user) (:type :leaf)
                      |r $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |update-in) (:type :leaf)
                          |j $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                          |r $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                              |j $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |:sessions) (:type :leaf)
                              |r $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                              |v $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |:messages) (:type :leaf)
                          |v $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                              |j $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |messages) (:type :leaf)
                              |r $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |assoc) (:type :leaf)
                                  |j $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |messages) (:type :leaf)
                                  |r $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                                  |v $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |:id) (:type :leaf)
                                          |j $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                                      |r $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |:text) (:type :leaf)
                                          |j $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                                              |j $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text "|\"Name is taken: ") (:type :leaf)
                                              |r $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
                      |v $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |->) (:type :leaf)
                          |j $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                          |r $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |assoc-in) (:type :leaf)
                              |j $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                                  |j $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |:sessions) (:type :leaf)
                                  |r $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                                  |v $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |:user-id) (:type :leaf)
                              |r $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                          |v $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |assoc-in) (:type :leaf)
                              |j $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                                  |j $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |:users) (:type :leaf)
                                  |r $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                              |r $ {} (:at 1629573440015) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1629573440995) (:by |B1y7Rc-Zz) (:text |merge) (:type :leaf)
                                  |L $ {} (:at 1629573446121) (:by |B1y7Rc-Zz) (:text |schema/user) (:type :leaf)
                                  |T $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |:id) (:type :leaf)
                                          |j $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                                      |r $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |:name) (:type :leaf)
                                          |j $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
                                      |v $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |:nickname) (:type :leaf)
                                          |j $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
                                      |x $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |:password) (:type :leaf)
                                          |j $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |md5) (:type :leaf)
                                              |j $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |password) (:type :leaf)
                                      |y $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |:avatar) (:type :leaf)
                                          |j $ {} (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
        :ns $ {} (:at 1500541255553) (:by nil) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541255553) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541255553) (:by |root) (:text |app.updater.user) (:type :leaf)
            |r $ {} (:at 1500541255553) (:by nil) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541255553) (:by |root) (:text |:require) (:type :leaf)
                |r $ {} (:at 1636982923137) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1636982923137) (:by |B1y7Rc-Zz) (:text |calcit.std.hash) (:type :leaf)
                    |j $ {} (:at 1636982923137) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1636982923137) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1636982923137) (:by |B1y7Rc-Zz) (:text |md5) (:type :leaf)
                |v $ {} (:at 1629573449043) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1629573450866) (:by |B1y7Rc-Zz) (:text |app.schema) (:type :leaf)
                    |j $ {} (:at 1629573452444) (:by |B1y7Rc-Zz) (:text |:as) (:type :leaf)
                    |r $ {} (:at 1629573455019) (:by |B1y7Rc-Zz) (:text |schema) (:type :leaf)
        :proc $ {} (:at 1500541255553) (:by nil) (:type :expr)
          :data $ {}
      |app.util.dom $ {}
        :defs $ {}
        :ns $ {} (:at 1537032760294) (:by |root) (:type :expr)
          :data $ {}
            |T $ {} (:at 1537032760294) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1537032760294) (:by |root) (:text |app.util.dom) (:type :leaf)
        :proc $ {} (:at 1537032760294) (:by |root) (:type :expr)
          :data $ {}
    :root $ {} (:def |main!) (:ns |main)
  :users $ {}
    |B1y7Rc-Zz $ {} (:avatar nil) (:id |B1y7Rc-Zz) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
    |root $ {} (:avatar nil) (:id |root) (:name |root) (:nickname |root) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
