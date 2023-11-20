
{} (:package |app)
  :configs $ {} (:init-fn |app.client/main!) (:port 6001) (:reload-fn |app.client/reload!) (:storage-key |calcit.cirru)
    :modules $ [] |respo.calcit/ |lilac/ |recollect/ |memof/ |respo-ui.calcit/ |ws-edn.calcit/ |cumulo-util.calcit/ |respo-message.calcit/ |cumulo-reel.calcit/ |respo-feather.calcit/ |alerts.calcit/
  :entries $ {}
    :server $ {} (:init-fn |app.server/main!) (:port 6001) (:reload-fn |app.server/reload!) (:storage-key |calcit.cirru)
      :modules $ [] |lilac/ |recollect/ |memof/ |cumulo-util.calcit/ |cumulo-reel.calcit/ |calcit.std/ |calcit-wss/ |respo.calcit/
  :files $ {}
    |app.client $ %{} :FileEntry
      :defs $ {}
        |*states $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629572118675) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629572118675) (:by |B1y7Rc-Zz) (:text |defatom)
              |j $ %{} :Leaf (:at 1629572118675) (:by |B1y7Rc-Zz) (:text |*states)
              |r $ %{} :Expr (:at 1629572118675) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629572118675) (:by |B1y7Rc-Zz) (:text |{})
                  |j $ %{} :Expr (:at 1629572118675) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629572118675) (:by |B1y7Rc-Zz) (:text |:states)
                      |j $ %{} :Expr (:at 1629572118675) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629572118675) (:by |B1y7Rc-Zz) (:text |{})
                          |j $ %{} :Expr (:at 1629572118675) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629572118675) (:by |B1y7Rc-Zz) (:text |:cursor)
                              |j $ %{} :Expr (:at 1629572118675) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629572118675) (:by |B1y7Rc-Zz) (:text |[])
        |*store $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629572128051) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629572128051) (:by |B1y7Rc-Zz) (:text |defatom)
              |j $ %{} :Leaf (:at 1629572128051) (:by |B1y7Rc-Zz) (:text |*store)
              |r $ %{} :Leaf (:at 1629572128051) (:by |B1y7Rc-Zz) (:text |nil)
        |connect! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629571922552) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |connect!)
              |r $ %{} :Expr (:at 1629571922552) (:by |B1y7Rc-Zz)
                :data $ {}
              |v $ %{} :Expr (:at 1629571922552) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |let)
                  |j $ %{} :Expr (:at 1629571922552) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1629571922552) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |url-obj)
                          |j $ %{} :Expr (:at 1629571922552) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |url-parse)
                              |j $ %{} :Leaf (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |js/location.href)
                              |r $ %{} :Leaf (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |true)
                      |j $ %{} :Expr (:at 1629571922552) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |host)
                          |j $ %{} :Expr (:at 1629571922552) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |either)
                              |j $ %{} :Expr (:at 1629571922552) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |->)
                                  |j $ %{} :Leaf (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |url-obj)
                                  |r $ %{} :Leaf (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |.-query)
                                  |v $ %{} :Leaf (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |.-host)
                              |r $ %{} :Leaf (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |js/location.hostname)
                      |r $ %{} :Expr (:at 1629571922552) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |port)
                          |j $ %{} :Expr (:at 1629571922552) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |either)
                              |j $ %{} :Expr (:at 1629571922552) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |->)
                                  |j $ %{} :Leaf (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |url-obj)
                                  |r $ %{} :Leaf (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |.-query)
                                  |v $ %{} :Leaf (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |.-port)
                              |r $ %{} :Expr (:at 1629571922552) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |:port)
                                  |j $ %{} :Leaf (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |config/site)
                  |r $ %{} :Expr (:at 1629571922552) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |ws-connect!)
                      |j $ %{} :Expr (:at 1629571922552) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |str)
                          |j $ %{} :Leaf (:at 1629571922552) (:by |B1y7Rc-Zz) (:text "|\"ws://")
                          |r $ %{} :Leaf (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |host)
                          |v $ %{} :Leaf (:at 1629571922552) (:by |B1y7Rc-Zz) (:text "|\":")
                          |x $ %{} :Leaf (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |port)
                      |r $ %{} :Expr (:at 1629571922552) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |{})
                          |j $ %{} :Expr (:at 1629571922552) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |:on-open)
                              |j $ %{} :Expr (:at 1629571922552) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |fn)
                                  |j $ %{} :Expr (:at 1629571922552) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |event)
                                  |r $ %{} :Expr (:at 1629571922552) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |simulate-login!)
                          |r $ %{} :Expr (:at 1629571922552) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |:on-close)
                              |j $ %{} :Expr (:at 1629571922552) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |fn)
                                  |j $ %{} :Expr (:at 1629571922552) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |event)
                                  |r $ %{} :Expr (:at 1629571922552) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |reset!)
                                      |j $ %{} :Leaf (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |*store)
                                      |r $ %{} :Leaf (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |nil)
                                  |v $ %{} :Expr (:at 1629571922552) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |js/console.error)
                                      |j $ %{} :Leaf (:at 1629571922552) (:by |B1y7Rc-Zz) (:text "|\"Lost connection!")
                          |v $ %{} :Expr (:at 1629571922552) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |:on-data)
                              |j $ %{} :Leaf (:at 1629571922552) (:by |B1y7Rc-Zz) (:text |on-server-data)
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629573061901) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629573061901) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1629573061901) (:by |B1y7Rc-Zz) (:text |dispatch!)
              |r $ %{} :Expr (:at 1629573061901) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629573061901) (:by |B1y7Rc-Zz) (:text |op)
              |v $ %{} :Expr (:at 1629573061901) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629573061901) (:by |B1y7Rc-Zz) (:text |when)
                  |j $ %{} :Expr (:at 1629573061901) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629573061901) (:by |B1y7Rc-Zz) (:text |and)
                      |j $ %{} :Leaf (:at 1629573061901) (:by |B1y7Rc-Zz) (:text |config/dev?)
                      |r $ %{} :Expr (:at 1629573061901) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629573061901) (:by |B1y7Rc-Zz) (:text |not=)
                          |j $ %{} :Expr (:at 1700500838731) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1700500839517) (:by |B1y7Rc-Zz) (:text |nth)
                              |T $ %{} :Leaf (:at 1629573061901) (:by |B1y7Rc-Zz) (:text |op)
                              |b $ %{} :Leaf (:at 1700500840220) (:by |B1y7Rc-Zz) (:text |0)
                          |r $ %{} :Leaf (:at 1629573061901) (:by |B1y7Rc-Zz) (:text |:states)
                  |r $ %{} :Expr (:at 1629573061901) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1700500846087) (:by |B1y7Rc-Zz) (:text |js/console.log)
                      |j $ %{} :Leaf (:at 1629573061901) (:by |B1y7Rc-Zz) (:text "|\"Dispatch")
                      |r $ %{} :Leaf (:at 1629573061901) (:by |B1y7Rc-Zz) (:text |op)
              |x $ %{} :Expr (:at 1629573061901) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1700500848550) (:by |B1y7Rc-Zz) (:text |tag-match)
                  |j $ %{} :Leaf (:at 1629573061901) (:by |B1y7Rc-Zz) (:text |op)
                  |v $ %{} :Expr (:at 1629573061901) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1700500857683) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629573061901) (:by |B1y7Rc-Zz) (:text |:states)
                          |b $ %{} :Leaf (:at 1700500858696) (:by |B1y7Rc-Zz) (:text |cursor)
                          |h $ %{} :Leaf (:at 1700500859622) (:by |B1y7Rc-Zz) (:text |state)
                      |j $ %{} :Expr (:at 1629573061901) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629573061901) (:by |B1y7Rc-Zz) (:text |reset!)
                          |j $ %{} :Leaf (:at 1629573061901) (:by |B1y7Rc-Zz) (:text |*states)
                          |r $ %{} :Expr (:at 1629573061901) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629573061901) (:by |B1y7Rc-Zz) (:text |update-states)
                              |j $ %{} :Leaf (:at 1629573061901) (:by |B1y7Rc-Zz) (:text |@*states)
                              |r $ %{} :Leaf (:at 1700500862702) (:by |B1y7Rc-Zz) (:text |cursor)
                              |t $ %{} :Leaf (:at 1700500863331) (:by |B1y7Rc-Zz) (:text |state)
                  |x $ %{} :Expr (:at 1629573061901) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1700500856842) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629573061901) (:by |B1y7Rc-Zz) (:text |:effect/connect)
                      |j $ %{} :Expr (:at 1629573061901) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629573061901) (:by |B1y7Rc-Zz) (:text |connect!)
                  |y $ %{} :Expr (:at 1700500870476) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1700500871578) (:by |B1y7Rc-Zz) (:text |_)
                      |T $ %{} :Expr (:at 1700500850970) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700500850970) (:by |B1y7Rc-Zz) (:text |ws-send!)
                          |b $ %{} :Leaf (:at 1700500854869) (:by |B1y7Rc-Zz) (:text |op)
        |main! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629572138414) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629572138414) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1629572138414) (:by |B1y7Rc-Zz) (:text |main!)
              |r $ %{} :Expr (:at 1629572138414) (:by |B1y7Rc-Zz)
                :data $ {}
              |v $ %{} :Expr (:at 1629572138414) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629572138414) (:by |B1y7Rc-Zz) (:text |println)
                  |j $ %{} :Leaf (:at 1629572138414) (:by |B1y7Rc-Zz) (:text "|\"Running mode:")
                  |r $ %{} :Expr (:at 1629572138414) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629572138414) (:by |B1y7Rc-Zz) (:text |if)
                      |j $ %{} :Leaf (:at 1629572138414) (:by |B1y7Rc-Zz) (:text |config/dev?)
                      |r $ %{} :Leaf (:at 1629572138414) (:by |B1y7Rc-Zz) (:text "|\"dev")
                      |v $ %{} :Leaf (:at 1629572138414) (:by |B1y7Rc-Zz) (:text "|\"release")
              |x $ %{} :Expr (:at 1629572138414) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629572138414) (:by |B1y7Rc-Zz) (:text |render-app!)
              |y $ %{} :Expr (:at 1629572138414) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629572138414) (:by |B1y7Rc-Zz) (:text |connect!)
              |yT $ %{} :Expr (:at 1629572138414) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629572138414) (:by |B1y7Rc-Zz) (:text |add-watch)
                  |j $ %{} :Leaf (:at 1629572138414) (:by |B1y7Rc-Zz) (:text |*store)
                  |r $ %{} :Leaf (:at 1629572138414) (:by |B1y7Rc-Zz) (:text |:changes)
                  |v $ %{} :Expr (:at 1629572138414) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629572138414) (:by |B1y7Rc-Zz) (:text |fn)
                      |j $ %{} :Expr (:at 1629572138414) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629572138414) (:by |B1y7Rc-Zz) (:text |store)
                          |j $ %{} :Leaf (:at 1629572138414) (:by |B1y7Rc-Zz) (:text |prev)
                      |r $ %{} :Expr (:at 1629572138414) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629572138414) (:by |B1y7Rc-Zz) (:text |render-app!)
              |yj $ %{} :Expr (:at 1629572138414) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629572138414) (:by |B1y7Rc-Zz) (:text |add-watch)
                  |j $ %{} :Leaf (:at 1629572138414) (:by |B1y7Rc-Zz) (:text |*states)
                  |r $ %{} :Leaf (:at 1629572138414) (:by |B1y7Rc-Zz) (:text |:changes)
                  |v $ %{} :Expr (:at 1629572138414) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629572138414) (:by |B1y7Rc-Zz) (:text |fn)
                      |j $ %{} :Expr (:at 1629572138414) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629572138414) (:by |B1y7Rc-Zz) (:text |states)
                          |j $ %{} :Leaf (:at 1629572138414) (:by |B1y7Rc-Zz) (:text |prev)
                      |r $ %{} :Expr (:at 1629572138414) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629572138414) (:by |B1y7Rc-Zz) (:text |render-app!)
              |yr $ %{} :Expr (:at 1629572138414) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629572138414) (:by |B1y7Rc-Zz) (:text |on-page-touch)
                  |j $ %{} :Expr (:at 1629572138414) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629572138414) (:by |B1y7Rc-Zz) (:text |fn)
                      |j $ %{} :Expr (:at 1629572138414) (:by |B1y7Rc-Zz)
                        :data $ {}
                      |r $ %{} :Expr (:at 1629572138414) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629572138414) (:by |B1y7Rc-Zz) (:text |if)
                          |j $ %{} :Expr (:at 1629572138414) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629572138414) (:by |B1y7Rc-Zz) (:text |nil?)
                              |j $ %{} :Leaf (:at 1629572138414) (:by |B1y7Rc-Zz) (:text |@*store)
                          |r $ %{} :Expr (:at 1629572138414) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629572138414) (:by |B1y7Rc-Zz) (:text |connect!)
              |yv $ %{} :Expr (:at 1629572138414) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629572138414) (:by |B1y7Rc-Zz) (:text |println)
                  |j $ %{} :Leaf (:at 1629572138414) (:by |B1y7Rc-Zz) (:text "|\"App started!")
        |mount-target $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1608701533644) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |def)
              |j $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |mount-target)
              |r $ %{} :Expr (:at 1608701533644) (:by |B1y7Rc-Zz)
                :data $ {}
                  |j $ %{} :Leaf (:at 1700501268572) (:by |B1y7Rc-Zz) (:text |js/document.querySelector)
                  |r $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text "|\".app")
        |on-server-data $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629571934306) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629571934306) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1629571934306) (:by |B1y7Rc-Zz) (:text |on-server-data)
              |r $ %{} :Expr (:at 1629571934306) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629571934306) (:by |B1y7Rc-Zz) (:text |data)
              |t $ %{} :Expr (:at 1700501613410) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1700501616764) (:by |B1y7Rc-Zz) (:text |tag-match)
                  |b $ %{} :Leaf (:at 1700501617706) (:by |B1y7Rc-Zz) (:text |data)
                  |h $ %{} :Expr (:at 1700501618060) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1700501619053) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700501620049) (:by |B1y7Rc-Zz) (:text |:patch)
                          |b $ %{} :Leaf (:at 1700501621645) (:by |B1y7Rc-Zz) (:text |changes)
                      |b $ %{} :Expr (:at 1700501627103) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700501628337) (:by |B1y7Rc-Zz) (:text |do)
                          |h $ %{} :Expr (:at 1700501627103) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700501627103) (:by |B1y7Rc-Zz) (:text |when)
                              |b $ %{} :Leaf (:at 1700501627103) (:by |B1y7Rc-Zz) (:text |config/dev?)
                              |h $ %{} :Expr (:at 1700501627103) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1700501627103) (:by |B1y7Rc-Zz) (:text |js/console.log)
                                  |b $ %{} :Leaf (:at 1700501627103) (:by |B1y7Rc-Zz) (:text "|\"Changes")
                                  |h $ %{} :Leaf (:at 1700501627103) (:by |B1y7Rc-Zz) (:text |changes)
                          |l $ %{} :Expr (:at 1700501627103) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700501627103) (:by |B1y7Rc-Zz) (:text |reset!)
                              |b $ %{} :Leaf (:at 1700501627103) (:by |B1y7Rc-Zz) (:text |*store)
                              |h $ %{} :Expr (:at 1700501627103) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1700501627103) (:by |B1y7Rc-Zz) (:text |patch-twig)
                                  |b $ %{} :Leaf (:at 1700501627103) (:by |B1y7Rc-Zz) (:text |@*store)
                                  |h $ %{} :Leaf (:at 1700501627103) (:by |B1y7Rc-Zz) (:text |changes)
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629572089433) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |reload!)
              |r $ %{} :Expr (:at 1629572089433) (:by |B1y7Rc-Zz)
                :data $ {}
              |v $ %{} :Expr (:at 1629572089433) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |if)
                  |j $ %{} :Expr (:at 1629572089433) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |or)
                      |j $ %{} :Expr (:at 1629572089433) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |some?)
                          |j $ %{} :Leaf (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |client-errors)
                      |r $ %{} :Expr (:at 1629572089433) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |some?)
                          |j $ %{} :Leaf (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |server-errors)
                  |r $ %{} :Expr (:at 1629572089433) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |hud!)
                      |j $ %{} :Leaf (:at 1629572089433) (:by |B1y7Rc-Zz) (:text "|\"error")
                      |r $ %{} :Expr (:at 1629572089433) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |str)
                          |j $ %{} :Leaf (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |client-errors)
                          |r $ %{} :Leaf (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |&newline)
                          |v $ %{} :Leaf (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |server-errors)
                  |v $ %{} :Expr (:at 1629572089433) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |do)
                      |j $ %{} :Expr (:at 1629572089433) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |hud!)
                          |j $ %{} :Leaf (:at 1629572089433) (:by |B1y7Rc-Zz) (:text "|\"inactive")
                          |r $ %{} :Leaf (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |nil)
                      |r $ %{} :Expr (:at 1629572089433) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |remove-watch)
                          |j $ %{} :Leaf (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |*store)
                          |r $ %{} :Leaf (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |:changes)
                      |v $ %{} :Expr (:at 1629572089433) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |remove-watch)
                          |j $ %{} :Leaf (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |*states)
                          |r $ %{} :Leaf (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |:changes)
                      |x $ %{} :Expr (:at 1629572089433) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |clear-cache!)
                      |y $ %{} :Expr (:at 1629572089433) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |render-app!)
                      |yT $ %{} :Expr (:at 1629572089433) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |add-watch)
                          |j $ %{} :Leaf (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |*store)
                          |r $ %{} :Leaf (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |:changes)
                          |v $ %{} :Expr (:at 1629572089433) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |fn)
                              |j $ %{} :Expr (:at 1629572089433) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |store)
                                  |j $ %{} :Leaf (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |prev)
                              |r $ %{} :Expr (:at 1629572089433) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |render-app!)
                      |yj $ %{} :Expr (:at 1629572089433) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |add-watch)
                          |j $ %{} :Leaf (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |*states)
                          |r $ %{} :Leaf (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |:changes)
                          |v $ %{} :Expr (:at 1629572089433) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |fn)
                              |j $ %{} :Expr (:at 1629572089433) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |states)
                                  |j $ %{} :Leaf (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |prev)
                              |r $ %{} :Expr (:at 1629572089433) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |render-app!)
                      |yr $ %{} :Expr (:at 1629572089433) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629572089433) (:by |B1y7Rc-Zz) (:text |println)
                          |j $ %{} :Leaf (:at 1629572089433) (:by |B1y7Rc-Zz) (:text "|\"Code updated.")
        |render-app! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629572144691) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629572144691) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1629572144691) (:by |B1y7Rc-Zz) (:text |render-app!)
              |r $ %{} :Expr (:at 1629572144691) (:by |B1y7Rc-Zz)
                :data $ {}
              |v $ %{} :Expr (:at 1629572144691) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629572144691) (:by |B1y7Rc-Zz) (:text |render!)
                  |j $ %{} :Leaf (:at 1629572144691) (:by |B1y7Rc-Zz) (:text |mount-target)
                  |r $ %{} :Expr (:at 1629572144691) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629572144691) (:by |B1y7Rc-Zz) (:text |comp-container)
                      |j $ %{} :Expr (:at 1629572144691) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629572144691) (:by |B1y7Rc-Zz) (:text |:states)
                          |j $ %{} :Leaf (:at 1629572144691) (:by |B1y7Rc-Zz) (:text |@*states)
                      |r $ %{} :Leaf (:at 1629572144691) (:by |B1y7Rc-Zz) (:text |@*store)
                  |v $ %{} :Leaf (:at 1629572144691) (:by |B1y7Rc-Zz) (:text |dispatch!)
        |simulate-login! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629571944846) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629571944846) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1629571944846) (:by |B1y7Rc-Zz) (:text |simulate-login!)
              |r $ %{} :Expr (:at 1629571944846) (:by |B1y7Rc-Zz)
                :data $ {}
              |v $ %{} :Expr (:at 1629571944846) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629571944846) (:by |B1y7Rc-Zz) (:text |let)
                  |j $ %{} :Expr (:at 1629571944846) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1629571944846) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629571944846) (:by |B1y7Rc-Zz) (:text |raw)
                          |j $ %{} :Expr (:at 1629571944846) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |j $ %{} :Leaf (:at 1700501279339) (:by |B1y7Rc-Zz) (:text |js/localStorage.getItem)
                              |r $ %{} :Expr (:at 1629571944846) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629571944846) (:by |B1y7Rc-Zz) (:text |:storage-key)
                                  |j $ %{} :Leaf (:at 1629571944846) (:by |B1y7Rc-Zz) (:text |config/site)
                  |r $ %{} :Expr (:at 1629571944846) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629571944846) (:by |B1y7Rc-Zz) (:text |if)
                      |j $ %{} :Expr (:at 1629571944846) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629571944846) (:by |B1y7Rc-Zz) (:text |some?)
                          |j $ %{} :Leaf (:at 1629571944846) (:by |B1y7Rc-Zz) (:text |raw)
                      |r $ %{} :Expr (:at 1629571944846) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629571944846) (:by |B1y7Rc-Zz) (:text |do)
                          |j $ %{} :Expr (:at 1629571944846) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629571944846) (:by |B1y7Rc-Zz) (:text |println)
                              |j $ %{} :Leaf (:at 1629571944846) (:by |B1y7Rc-Zz) (:text "|\"Found storage.")
                          |r $ %{} :Expr (:at 1629571944846) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629571944846) (:by |B1y7Rc-Zz) (:text |dispatch!)
                              |r $ %{} :Expr (:at 1700501286273) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1700501286856) (:by |B1y7Rc-Zz) (:text |::)
                                  |L $ %{} :Leaf (:at 1700501287204) (:by |B1y7Rc-Zz) (:text |:user/log-in)
                                  |T $ %{} :Expr (:at 1629571944846) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629571944846) (:by |B1y7Rc-Zz) (:text |parse-cirru-edn)
                                      |j $ %{} :Leaf (:at 1629571944846) (:by |B1y7Rc-Zz) (:text |raw)
                      |v $ %{} :Expr (:at 1629571944846) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629571944846) (:by |B1y7Rc-Zz) (:text |do)
                          |j $ %{} :Expr (:at 1629571944846) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629571944846) (:by |B1y7Rc-Zz) (:text |println)
                              |j $ %{} :Leaf (:at 1629571944846) (:by |B1y7Rc-Zz) (:text "|\"Found no storage.")
        |ssr? $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1608701533644) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |def)
              |j $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |ssr?)
              |r $ %{} :Expr (:at 1608701533644) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |some?)
                  |j $ %{} :Expr (:at 1608701533644) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |.querySelector)
                      |j $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |js/document)
                      |r $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text "|\"meta.respo-ssr")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1608701533644) (:by |B1y7Rc-Zz)
          :data $ {}
            |T $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |ns)
            |j $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |app.client)
            |r $ %{} :Expr (:at 1608701533644) (:by |B1y7Rc-Zz)
              :data $ {}
                |T $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |:require)
                |j $ %{} :Expr (:at 1608701533644) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |:refer)
                    |v $ %{} :Expr (:at 1608701533644) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |[])
                        |j $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |render!)
                        |r $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |clear-cache!)
                        |v $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |realize-ssr!)
                |r $ %{} :Expr (:at 1608701533644) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |respo.cursor)
                    |r $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |:refer)
                    |v $ %{} :Expr (:at 1608701533644) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |[])
                        |j $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |update-states)
                |v $ %{} :Expr (:at 1608701533644) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |app.comp.container)
                    |r $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |:refer)
                    |v $ %{} :Expr (:at 1608701533644) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |[])
                        |j $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |comp-container)
                |x $ %{} :Expr (:at 1608701533644) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |cljs.reader)
                    |r $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |:refer)
                    |v $ %{} :Expr (:at 1608701533644) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |[])
                        |j $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |read-string)
                |y $ %{} :Expr (:at 1608701533644) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |app.schema)
                    |r $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |:as)
                    |v $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |schema)
                |yT $ %{} :Expr (:at 1608701533644) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |app.config)
                    |r $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |:as)
                    |v $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |config)
                |yj $ %{} :Expr (:at 1608701533644) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |ws-edn.client)
                    |r $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |:refer)
                    |v $ %{} :Expr (:at 1608701533644) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |[])
                        |j $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |ws-connect!)
                        |r $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |ws-send!)
                |yr $ %{} :Expr (:at 1608701533644) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |recollect.patch)
                    |r $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |:refer)
                    |v $ %{} :Expr (:at 1608701533644) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |[])
                        |j $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |patch-twig)
                |yv $ %{} :Expr (:at 1608701533644) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |cumulo-util.core)
                    |r $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |:refer)
                    |v $ %{} :Expr (:at 1608701533644) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |[])
                        |j $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |on-page-touch)
                |yx $ %{} :Expr (:at 1608701533644) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text "|\"url-parse")
                    |r $ %{} :Leaf (:at 1629572152255) (:by |B1y7Rc-Zz) (:text |:default)
                    |v $ %{} :Leaf (:at 1608701533644) (:by |B1y7Rc-Zz) (:text |url-parse)
                |yy5 $ %{} :Expr (:at 1629572107471) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629572107471) (:by |B1y7Rc-Zz) (:text "|\"bottom-tip")
                    |j $ %{} :Leaf (:at 1629572107471) (:by |B1y7Rc-Zz) (:text |:default)
                    |r $ %{} :Leaf (:at 1629572107471) (:by |B1y7Rc-Zz) (:text |hud!)
                |yyD $ %{} :Expr (:at 1629572102235) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629572102235) (:by |B1y7Rc-Zz) (:text "|\"./calcit.build-errors")
                    |j $ %{} :Leaf (:at 1629572102235) (:by |B1y7Rc-Zz) (:text |:default)
                    |r $ %{} :Leaf (:at 1629572102235) (:by |B1y7Rc-Zz) (:text |client-errors)
                |yyT $ %{} :Expr (:at 1629572096941) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629572096941) (:by |B1y7Rc-Zz) (:text "|\"../js-out/calcit.build-errors")
                    |j $ %{} :Leaf (:at 1629572096941) (:by |B1y7Rc-Zz) (:text |:default)
                    |r $ %{} :Leaf (:at 1629572096941) (:by |B1y7Rc-Zz) (:text |server-errors)
    |app.comp.container $ %{} :FileEntry
      :defs $ {}
        |comp-container $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-container)
              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |states)
                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |store)
              |v $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |state)
                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:data)
                              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |states)
                      |j $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |session)
                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:session)
                              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |store)
                      |r $ %{} :Expr (:at 1525106928554) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1525106929232) (:by |root) (:text |router)
                          |j $ %{} :Expr (:at 1525106929915) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1525106930860) (:by |root) (:text |:router)
                              |j $ %{} :Leaf (:at 1525106931558) (:by |root) (:text |store)
                      |v $ %{} :Expr (:at 1525106933346) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1525106935393) (:by |root) (:text |router-data)
                          |j $ %{} :Expr (:at 1525106935675) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1525106936827) (:by |root) (:text |:data)
                              |j $ %{} :Leaf (:at 1525106937665) (:by |root) (:text |router)
                  |r $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |if)
                      |j $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |nil?)
                          |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |store)
                      |r $ %{} :Expr (:at 1521951403873) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1521951417580) (:by |root) (:text |comp-offline)
                      |v $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:style)
                                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |merge)
                                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ui/global)
                                      |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ui/fullscreen)
                                      |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ui/column)
                          |r $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1523120265747) (:by |root) (:text |comp-navigation)
                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:logged-in?)
                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |store)
                              |r $ %{} :Expr (:at 1523120353961) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1523120357277) (:by |root) (:text |:count)
                                  |j $ %{} :Leaf (:at 1523120358953) (:by |root) (:text |store)
                          |v $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |if)
                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:logged-in?)
                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |store)
                              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |case)
                                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:name)
                                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |router)
                                  |n $ %{} :Expr (:at 1525106918943) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1525106921967) (:by |root) (:text |:home)
                                      |j $ %{} :Expr (:at 1539536764262) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539711451309) (:by |root) (:text |comp-dashboard)
                                          |b $ %{} :Expr (:at 1608701739918) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1608701740576) (:by |B1y7Rc-Zz) (:text |>>)
                                              |T $ %{} :Leaf (:at 1540042240434) (:by |root) (:text |states)
                                              |j $ %{} :Leaf (:at 1608701741589) (:by |B1y7Rc-Zz) (:text |:dashboard)
                                          |n $ %{} :Leaf (:at 1540043187329) (:by |root) (:text |router-data)
                                  |p $ %{} :Expr (:at 1539711583563) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539711586345) (:by |root) (:text |:emotions)
                                      |j $ %{} :Expr (:at 1539711586541) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539711593599) (:by |root) (:text |comp-emotions-manager)
                                          |j $ %{} :Leaf (:at 1540043189409) (:by |root) (:text |router-data)
                                  |pT $ %{} :Expr (:at 1539883293562) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539883296255) (:by |root) (:text |:edit-emotion)
                                      |j $ %{} :Expr (:at 1539883296911) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539883302895) (:by |root) (:text |comp-emotion-form)
                                          |b $ %{} :Expr (:at 1608701747376) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1608701748560) (:by |B1y7Rc-Zz) (:text |>>)
                                              |T $ %{} :Leaf (:at 1539883632361) (:by |root) (:text |states)
                                              |j $ %{} :Leaf (:at 1608701749400) (:by |B1y7Rc-Zz) (:text |:form)
                                          |j $ %{} :Leaf (:at 1539883329378) (:by |root) (:text |router-data)
                                  |q $ %{} :Expr (:at 1539796073422) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539796076339) (:by |root) (:text |:history)
                                      |j $ %{} :Expr (:at 1539796076859) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539796093331) (:by |root) (:text |comp-history)
                                          |X $ %{} :Expr (:at 1608701940156) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1608701940895) (:by |B1y7Rc-Zz) (:text |>>)
                                              |T $ %{} :Leaf (:at 1540056369918) (:by |root) (:text |states)
                                              |j $ %{} :Leaf (:at 1608701941538) (:by |B1y7Rc-Zz) (:text |:history)
                                          |b $ %{} :Expr (:at 1540043174723) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1540043177364) (:by |root) (:text |:moods)
                                              |j $ %{} :Leaf (:at 1540043179483) (:by |root) (:text |router-data)
                                          |j $ %{} :Expr (:at 1540043160196) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1540043161497) (:by |root) (:text |:emotions)
                                              |j $ %{} :Leaf (:at 1540043172307) (:by |root) (:text |router-data)
                                  |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:profile)
                                      |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-profile)
                                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:user)
                                              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |store)
                                          |r $ %{} :Leaf (:at 1540043183496) (:by |root) (:text |router-data)
                                  |x $ %{} :Expr (:at 1525106913773) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1525106915016) (:by |root) (:text |<>)
                                      |j $ %{} :Leaf (:at 1525106916644) (:by |root) (:text |router)
                              |v $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-login)
                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |states)
                          |w $ %{} :Expr (:at 1524279203814) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1537032413916) (:by |root) (:text |;)
                              |T $ %{} :Leaf (:at 1524279211924) (:by |root) (:text |comp-status-color)
                              |j $ %{} :Expr (:at 1524279213788) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1524279214588) (:by |root) (:text |:color)
                                  |j $ %{} :Leaf (:at 1524279215366) (:by |root) (:text |store)
                          |x $ %{} :Expr (:at 1521911488967) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1521911509225) (:by |root) (:text |when)
                              |L $ %{} :Leaf (:at 1521911495407) (:by |root) (:text |dev?)
                              |T $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-inspect)
                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text ||Store)
                                  |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |store)
                                  |v $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:bottom)
                                          |j $ %{} :Leaf (:at 1539795925186) (:by |root) (:text |20)
                                      |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:left)
                                          |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |0)
                                      |v $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:max-width)
                                          |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text ||100%)
                          |y $ %{} :Expr (:at 1629573226162) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629573226162) (:by |B1y7Rc-Zz) (:text |comp-messages)
                              |j $ %{} :Expr (:at 1629573226162) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629573226162) (:by |B1y7Rc-Zz) (:text |get-in)
                                  |j $ %{} :Leaf (:at 1629573226162) (:by |B1y7Rc-Zz) (:text |store)
                                  |r $ %{} :Expr (:at 1629573226162) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629573226162) (:by |B1y7Rc-Zz) (:text |[])
                                      |j $ %{} :Leaf (:at 1629573226162) (:by |B1y7Rc-Zz) (:text |:session)
                                      |r $ %{} :Leaf (:at 1629573226162) (:by |B1y7Rc-Zz) (:text |:messages)
                              |r $ %{} :Expr (:at 1629573226162) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629573226162) (:by |B1y7Rc-Zz) (:text |{})
                              |v $ %{} :Expr (:at 1629573226162) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629573226162) (:by |B1y7Rc-Zz) (:text |fn)
                                  |j $ %{} :Expr (:at 1629573226162) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629573226162) (:by |B1y7Rc-Zz) (:text |info)
                                      |j $ %{} :Leaf (:at 1629573226162) (:by |B1y7Rc-Zz) (:text |d!)
                                  |r $ %{} :Expr (:at 1629573226162) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629573226162) (:by |B1y7Rc-Zz) (:text |d!)
                                      |j $ %{} :Leaf (:at 1629573226162) (:by |B1y7Rc-Zz) (:text |:session/remove-message)
                                      |r $ %{} :Leaf (:at 1629573226162) (:by |B1y7Rc-Zz) (:text |info)
                          |yT $ %{} :Expr (:at 1521911502552) (:by |root)
                            :data $ {}
                              |5 $ %{} :Leaf (:at 1537032421072) (:by |root) (:text |;)
                              |D $ %{} :Leaf (:at 1521911507241) (:by |root) (:text |when)
                              |L $ %{} :Leaf (:at 1521911504664) (:by |root) (:text |dev?)
                              |T $ %{} :Expr (:at 1507828710405) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507828712159) (:by |root) (:text |comp-reel)
                                  |j $ %{} :Expr (:at 1507829101137) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1507830262253) (:by |root) (:text |:reel-length)
                                      |j $ %{} :Leaf (:at 1507829104010) (:by |root) (:text |store)
                                  |r $ %{} :Expr (:at 1507828721052) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1507828722268) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1537030091670) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1537030093393) (:by |root) (:text |:bottom)
                                          |j $ %{} :Leaf (:at 1537030094481) (:by |root) (:text |100)
                                      |r $ %{} :Expr (:at 1537030106424) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1537030112903) (:by |root) (:text |:background-color)
                                          |j $ %{} :Leaf (:at 1537030114948) (:by |root) (:text |:white)
        |comp-offline $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1519314599832) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1521951399872) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |comp-offline)
              |n $ %{} :Expr (:at 1521951400852) (:by |root)
                :data $ {}
              |r $ %{} :Expr (:at 1519314599832) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1519314599832) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1519314599832) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |:style)
                          |j $ %{} :Expr (:at 1519314599832) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |merge)
                              |j $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |ui/global)
                              |r $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |ui/fullscreen)
                              |v $ %{} :Leaf (:at 1535564672966) (:by |B1y7Rc-Zz) (:text |ui/column-dispersive)
                              |x $ %{} :Expr (:at 1535565529682) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1535565530129) (:by |B1y7Rc-Zz) (:text |{})
                                  |j $ %{} :Expr (:at 1535565530397) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1535565536637) (:by |B1y7Rc-Zz) (:text |:background-color)
                                      |j $ %{} :Leaf (:at 1540053995256) (:by |root) (:text |:white)
                  |l $ %{} :Expr (:at 1535564983624) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1535565362594) (:by |B1y7Rc-Zz) (:text |div)
                      |j $ %{} :Expr (:at 1535564984947) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1535564985316) (:by |B1y7Rc-Zz) (:text |{})
                          |j $ %{} :Expr (:at 1535564985627) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1535564987644) (:by |B1y7Rc-Zz) (:text |:style)
                              |j $ %{} :Expr (:at 1535565371727) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1535565373172) (:by |B1y7Rc-Zz) (:text |{})
                                  |T $ %{} :Expr (:at 1535564988232) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1535564988883) (:by |B1y7Rc-Zz) (:text |:height)
                                      |j $ %{} :Leaf (:at 1535565472380) (:by |B1y7Rc-Zz) (:text |0)
                  |n $ %{} :Expr (:at 1535564675845) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1535564681122) (:by |B1y7Rc-Zz) (:text |div)
                      |j $ %{} :Expr (:at 1535564681371) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1535564681741) (:by |B1y7Rc-Zz) (:text |{})
                          |j $ %{} :Expr (:at 1535564681981) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1535564682940) (:by |B1y7Rc-Zz) (:text |:style)
                              |j $ %{} :Expr (:at 1535564683257) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1535564683549) (:by |B1y7Rc-Zz) (:text |{})
                                  |j $ %{} :Expr (:at 1535564683815) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1535564692026) (:by |B1y7Rc-Zz) (:text |:background-image)
                                      |j $ %{} :Expr (:at 1535564692507) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1535564693703) (:by |B1y7Rc-Zz) (:text |str)
                                          |j $ %{} :Leaf (:at 1535564698133) (:by |B1y7Rc-Zz) (:text "|\"url(")
                                          |n $ %{} :Expr (:at 1535564699933) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1535564708041) (:by |B1y7Rc-Zz) (:text |:icon)
                                              |j $ %{} :Leaf (:at 1535564775736) (:by |B1y7Rc-Zz) (:text |config/site)
                                          |r $ %{} :Leaf (:at 1535564696349) (:by |B1y7Rc-Zz) (:text "|\")")
                                  |r $ %{} :Expr (:at 1535564726919) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1535564728738) (:by |B1y7Rc-Zz) (:text |:width)
                                      |j $ %{} :Leaf (:at 1540092880075) (:by |root) (:text |86)
                                  |v $ %{} :Expr (:at 1535564733832) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1535564736588) (:by |B1y7Rc-Zz) (:text |:height)
                                      |j $ %{} :Leaf (:at 1540092882131) (:by |root) (:text |86)
                                  |x $ %{} :Expr (:at 1535564741439) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1535564745512) (:by |B1y7Rc-Zz) (:text |:background-size)
                                      |j $ %{} :Leaf (:at 1535564749164) (:by |B1y7Rc-Zz) (:text |:contain)
                  |r $ %{} :Expr (:at 1519314599832) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1535565436682) (:by |B1y7Rc-Zz) (:text |div)
                      |j $ %{} :Expr (:at 1519314599832) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1519314599832) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at 1519314599832) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1519314599832) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |:cursor)
                                      |j $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |:pointer)
                                  |r $ %{} :Expr (:at 1535565239666) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1535565243041) (:by |B1y7Rc-Zz) (:text |:line-height)
                                      |j $ %{} :Leaf (:at 1535565498969) (:by |B1y7Rc-Zz) (:text "|\"32px")
                          |r $ %{} :Expr (:at 1519314599832) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |:on-click)
                              |j $ %{} :Expr (:at 1608701959357) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1608701959946) (:by |B1y7Rc-Zz) (:text |fn)
                                  |L $ %{} :Expr (:at 1608701960468) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1608701960730) (:by |B1y7Rc-Zz) (:text |e)
                                      |j $ %{} :Leaf (:at 1608701961248) (:by |B1y7Rc-Zz) (:text |d!)
                                  |T $ %{} :Expr (:at 1519314599832) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1608701958892) (:by |B1y7Rc-Zz) (:text |d!)
                                      |j $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |:effect/connect)
                                      |r $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |nil)
                      |r $ %{} :Expr (:at 1519314599832) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |<>)
                          |j $ %{} :Leaf (:at 1535564856884) (:by |B1y7Rc-Zz) (:text "||No connection...")
                          |r $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:font-family)
                                  |j $ %{} :Leaf (:at 1535565688657) (:by |B1y7Rc-Zz) (:text |ui/font-fancy)
                              |v $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:font-size)
                                  |j $ %{} :Leaf (:at 1535565156897) (:by |B1y7Rc-Zz) (:text |24)
        |comp-status-color $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1524279216692) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1524279218316) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1524279216692) (:by |root) (:text |comp-status-color)
              |r $ %{} :Expr (:at 1524279216692) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1524279220380) (:by |root) (:text |color)
              |v $ %{} :Expr (:at 1524279221052) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1524279221503) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1524279221753) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1524279222145) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1524279222434) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1524279223333) (:by |root) (:text |:style)
                          |j $ %{} :Expr (:at 1533835122554) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1533835132715) (:by |B1y7Rc-Zz) (:text |let)
                              |L $ %{} :Expr (:at 1533835132973) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1533835133406) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1533835134066) (:by |B1y7Rc-Zz) (:text |size)
                                      |j $ %{} :Leaf (:at 1533835156000) (:by |B1y7Rc-Zz) (:text |24)
                              |T $ %{} :Expr (:at 1524279223555) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1524279223903) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1524279224175) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1524279228958) (:by |root) (:text |:width)
                                      |j $ %{} :Leaf (:at 1533835137743) (:by |B1y7Rc-Zz) (:text |size)
                                  |r $ %{} :Expr (:at 1524279231457) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1524279232432) (:by |root) (:text |:height)
                                      |j $ %{} :Leaf (:at 1533835138984) (:by |B1y7Rc-Zz) (:text |size)
                                  |v $ %{} :Expr (:at 1524279233724) (:by |root)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1524279242067) (:by |root) (:text |:position)
                                      |T $ %{} :Leaf (:at 1524279236076) (:by |root) (:text |:absolute)
                                  |x $ %{} :Expr (:at 1524279242693) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1533835259111) (:by |B1y7Rc-Zz) (:text |:bottom)
                                      |j $ %{} :Leaf (:at 1524279295251) (:by |root) (:text |60)
                                  |y $ %{} :Expr (:at 1524279244626) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1533835114388) (:by |B1y7Rc-Zz) (:text |:left)
                                      |j $ %{} :Leaf (:at 1524279252706) (:by |root) (:text |8)
                                  |yT $ %{} :Expr (:at 1524279259074) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1524279265891) (:by |root) (:text |:background-color)
                                      |j $ %{} :Leaf (:at 1524279319762) (:by |root) (:text |color)
                                  |yj $ %{} :Expr (:at 1524279300007) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1524279306393) (:by |root) (:text |:border-radius)
                                      |j $ %{} :Leaf (:at 1533835148624) (:by |B1y7Rc-Zz) (:text "|\"50%")
                                  |yr $ %{} :Expr (:at 1524279322054) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1524279323711) (:by |root) (:text |:opacity)
                                      |j $ %{} :Leaf (:at 1533835161153) (:by |B1y7Rc-Zz) (:text |0.6)
                                  |yv $ %{} :Expr (:at 1533835167955) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1533835177358) (:by |B1y7Rc-Zz) (:text |:pointer-events)
                                      |j $ %{} :Leaf (:at 1533835178211) (:by |B1y7Rc-Zz) (:text |:none)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541010211) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |app.comp.container)
            |v $ %{} :Expr (:at 1500541010211) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |hsl.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |hsl)
                |r $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1516547378489) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ui)
                |x $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
                        |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                        |t $ %{} :Leaf (:at 1608701735708) (:by |B1y7Rc-Zz) (:text |>>)
                        |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                        |x $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |span)
                        |y $ %{} :Leaf (:at 1507815955483) (:by |root) (:text |button)
                |y $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |respo.comp.inspect)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-inspect)
                |yD $ %{} :Expr (:at 1507816109319) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1507816109737) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1507816117447) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1507816112686) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507816113982) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507816114106) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1507816114704) (:by |root) (:text |=<)
                |yT $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1523120275079) (:by |root) (:text |app.comp.navigation)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1523120276563) (:by |root) (:text |comp-navigation)
                |yj $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |app.comp.profile)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-profile)
                |yr $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |app.comp.login)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-login)
                |yv $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1529230826824) (:by |root) (:text |respo-message.comp.messages)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1529230829559) (:by |root) (:text |comp-messages)
                |yx $ %{} :Expr (:at 1507828725931) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1507828726338) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1544118413871) (:by |B1y7Rc-Zz) (:text |cumulo-reel.comp.reel)
                    |r $ %{} :Leaf (:at 1507828731528) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507828731735) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507828731987) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1507828733743) (:by |root) (:text |comp-reel)
                |yy $ %{} :Expr (:at 1521911479054) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1521911480104) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1527789167264) (:by |root) (:text |app.config)
                    |r $ %{} :Leaf (:at 1521911483589) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1521911483778) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1521911483935) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1521911485489) (:by |root) (:text |dev?)
                |yyj $ %{} :Expr (:at 1529230793085) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1529230793389) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1529230796079) (:by |root) (:text |app.schema)
                    |r $ %{} :Leaf (:at 1529230796499) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1529230797248) (:by |root) (:text |schema)
                |yyr $ %{} :Expr (:at 1535564714854) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1535564716963) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1535564718729) (:by |B1y7Rc-Zz) (:text |app.config)
                    |r $ %{} :Leaf (:at 1535564719687) (:by |B1y7Rc-Zz) (:text |:as)
                    |v $ %{} :Leaf (:at 1535564721387) (:by |B1y7Rc-Zz) (:text |config)
                |yyv $ %{} :Expr (:at 1539711446574) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1539711446574) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1539711446574) (:by |root) (:text |app.comp.dashboard)
                    |r $ %{} :Leaf (:at 1539711446574) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1539711446574) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1539711446574) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1539711446574) (:by |root) (:text |comp-dashboard)
                |yyx $ %{} :Expr (:at 1539711590599) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1539711590599) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1539711590599) (:by |root) (:text |app.comp.emotions)
                    |r $ %{} :Leaf (:at 1539711590599) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1539711590599) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1539711590599) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1539711590599) (:by |root) (:text |comp-emotions-manager)
                |yyy $ %{} :Expr (:at 1539796088050) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1539796088050) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1539796088050) (:by |root) (:text |app.comp.history)
                    |r $ %{} :Leaf (:at 1539796088050) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1539796088050) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1539796088050) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1539796088050) (:by |root) (:text |comp-history)
                |yyyT $ %{} :Expr (:at 1539883321432) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1539883321432) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1539883321432) (:by |root) (:text |app.comp.emotion-form)
                    |r $ %{} :Leaf (:at 1539883321432) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1539883321432) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1539883321432) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1539883321432) (:by |root) (:text |comp-emotion-form)
    |app.comp.dashboard $ %{} :FileEntry
      :defs $ {}
        |comp-dashboard $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-dashboard)
              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |D $ %{} :Leaf (:at 1540042252495) (:by |root) (:text |states)
                  |T $ %{} :Leaf (:at 1575989893018) (:by |B1y7Rc-Zz) (:text |router-data)
              |v $ %{} :Expr (:at 1540042253395) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1540042254032) (:by |root) (:text |let)
                  |L $ %{} :Expr (:at 1540042254280) (:by |root)
                    :data $ {}
                      |D $ %{} :Expr (:at 1608701781745) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1608701784462) (:by |B1y7Rc-Zz) (:text |cursor)
                          |j $ %{} :Expr (:at 1608701784800) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1608701786016) (:by |B1y7Rc-Zz) (:text |:cursor)
                              |j $ %{} :Leaf (:at 1608701787552) (:by |B1y7Rc-Zz) (:text |states)
                      |T $ %{} :Expr (:at 1540042254445) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1540042262151) (:by |root) (:text |state)
                          |j $ %{} :Expr (:at 1540042263323) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1540042264501) (:by |root) (:text |or)
                              |j $ %{} :Expr (:at 1540042265103) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1540042266426) (:by |root) (:text |:data)
                                  |j $ %{} :Leaf (:at 1540042267398) (:by |root) (:text |states)
                              |r $ %{} :Expr (:at 1540042268405) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1540042271563) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1540042271879) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1540042280793) (:by |root) (:text |:show-editor?)
                                      |j $ %{} :Leaf (:at 1540042281492) (:by |root) (:text |false)
                                  |n $ %{} :Expr (:at 1540042306802) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1540042309100) (:by |root) (:text |:emotion-id)
                                      |j $ %{} :Leaf (:at 1540042313590) (:by |root) (:text |nil)
                                  |r $ %{} :Expr (:at 1540042283392) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1540042285245) (:by |root) (:text |:draft)
                                      |j $ %{} :Leaf (:at 1540042286284) (:by |root) (:text "|\"")
                      |j $ %{} :Expr (:at 1575989893861) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1575989895064) (:by |B1y7Rc-Zz) (:text |emotions)
                          |j $ %{} :Expr (:at 1575989895390) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1575989896458) (:by |B1y7Rc-Zz) (:text |:emotions)
                              |j $ %{} :Leaf (:at 1575989899350) (:by |B1y7Rc-Zz) (:text |router-data)
                      |r $ %{} :Expr (:at 1575990334077) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1575990336948) (:by |B1y7Rc-Zz) (:text |moods)
                          |j $ %{} :Expr (:at 1575990337608) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1575990339469) (:by |B1y7Rc-Zz) (:text |:moods)
                              |j $ %{} :Leaf (:at 1575990341352) (:by |B1y7Rc-Zz) (:text |router-data)
                  |T $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1539711418045) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539711418390) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1539795384916) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539795386614) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at 1539795386879) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539795389475) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1539795389866) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539795391725) (:by |root) (:text |:padding)
                                      |j $ %{} :Leaf (:at 1539795398976) (:by |root) (:text "|\"8px 16px")
                      |r $ %{} :Expr (:at 1539711419433) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1540044089552) (:by |root) (:text |comp-title)
                          |j $ %{} :Leaf (:at 1540044124469) (:by |root) (:text "|\"What do you feel now?")
                      |s $ %{} :Expr (:at 1540055366959) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1540055367562) (:by |root) (:text |=<)
                          |j $ %{} :Leaf (:at 1540055368228) (:by |root) (:text |nil)
                          |r $ %{} :Leaf (:at 1540055368797) (:by |root) (:text |16)
                      |t $ %{} :Expr (:at 1540039084513) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1540039088669) (:by |root) (:text |list->)
                          |j $ %{} :Leaf (:at 1540039089765) (:by |root) (:text |emotions)
                          |r $ %{} :Expr (:at 1540039090337) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629571389144) (:by |B1y7Rc-Zz) (:text |->)
                              |j $ %{} :Leaf (:at 1540039096633) (:by |root) (:text |emotions)
                              |l $ %{} :Expr (:at 1629573180788) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629573202436) (:by |B1y7Rc-Zz) (:text |.to-list)
                              |n $ %{} :Expr (:at 1540044164693) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629571390640) (:by |B1y7Rc-Zz) (:text |.sort-by)
                                  |j $ %{} :Expr (:at 1540044166637) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1540044166950) (:by |root) (:text |fn)
                                      |j $ %{} :Expr (:at 1540044168687) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629571416423) (:by |B1y7Rc-Zz) (:text |pair)
                                      |r $ %{} :Expr (:at 1540044172874) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629571408387) (:by |B1y7Rc-Zz) (:text |negate)
                                          |j $ %{} :Expr (:at 1540044182743) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1540044184145) (:by |root) (:text |:score)
                                              |j $ %{} :Expr (:at 1629571409663) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1636983136033) (:by |B1y7Rc-Zz) (:text |last)
                                                  |T $ %{} :Leaf (:at 1629571411970) (:by |B1y7Rc-Zz) (:text |pair)
                              |r $ %{} :Expr (:at 1540039096964) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629571399407) (:by |B1y7Rc-Zz) (:text |.map-pair)
                                  |j $ %{} :Expr (:at 1540039103848) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1540039103304) (:by |root) (:text |fn)
                                      |j $ %{} :Expr (:at 1540039106471) (:by |root)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1629571400994) (:by |B1y7Rc-Zz) (:text |k)
                                          |T $ %{} :Leaf (:at 1540039106190) (:by |root) (:text |emotion)
                                      |r $ %{} :Expr (:at 1629571402619) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1629571403117) (:by |B1y7Rc-Zz) (:text |[])
                                          |L $ %{} :Leaf (:at 1629571404231) (:by |B1y7Rc-Zz) (:text |k)
                                          |T $ %{} :Expr (:at 1540039112541) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1540039113891) (:by |root) (:text |comp-emotion)
                                              |j $ %{} :Leaf (:at 1540039115060) (:by |root) (:text |emotion)
                                              |n $ %{} :Leaf (:at 1575991054462) (:by |B1y7Rc-Zz) (:text |nil)
                                              |r $ %{} :Expr (:at 1540039115698) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1540039197792) (:by |root) (:text |fn)
                                                  |j $ %{} :Expr (:at 1540039117842) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1540039116515) (:by |root) (:text |e)
                                                      |j $ %{} :Leaf (:at 1540039119342) (:by |root) (:text |d!)
                                                  |r $ %{} :Expr (:at 1540042441990) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1608701855519) (:by |B1y7Rc-Zz) (:text |d!)
                                                      |b $ %{} :Leaf (:at 1608701856720) (:by |B1y7Rc-Zz) (:text |cursor)
                                                      |j $ %{} :Expr (:at 1540042447287) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1540042487818) (:by |root) (:text |merge)
                                                          |j $ %{} :Leaf (:at 1540042449371) (:by |root) (:text |state)
                                                          |r $ %{} :Expr (:at 1540042466728) (:by |root)
                                                            :data $ {}
                                                              |D $ %{} :Leaf (:at 1540042468144) (:by |root) (:text |{})
                                                              |T $ %{} :Expr (:at 1540042471698) (:by |root)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1540042451864) (:by |root) (:text |:show-editor?)
                                                                  |j $ %{} :Leaf (:at 1540042472275) (:by |root) (:text |true)
                                                              |j $ %{} :Expr (:at 1540042480060) (:by |root)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1540042661632) (:by |root) (:text |:emotion-id)
                                                                  |j $ %{} :Expr (:at 1540042483610) (:by |root)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1540042483610) (:by |root) (:text |:id)
                                                                      |j $ %{} :Leaf (:at 1540042483610) (:by |root) (:text |emotion)
                      |v $ %{} :Expr (:at 1539795404957) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539795406853) (:by |root) (:text |=<)
                          |j $ %{} :Leaf (:at 1539795408791) (:by |root) (:text |nil)
                          |r $ %{} :Leaf (:at 1540055295048) (:by |root) (:text |0)
                      |x $ %{} :Expr (:at 1539795410469) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539795411712) (:by |root) (:text |div)
                          |j $ %{} :Expr (:at 1539795411948) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539795412258) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1540055277726) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1540055279153) (:by |root) (:text |:style)
                                  |j $ %{} :Leaf (:at 1540055284790) (:by |root) (:text |ui/row-parted)
                          |n $ %{} :Expr (:at 1540055285715) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1540055286546) (:by |root) (:text |span)
                              |j $ %{} :Expr (:at 1540055286944) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1540055287263) (:by |root) (:text |{})
                          |r $ %{} :Expr (:at 1539795413211) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539795418242) (:by |root) (:text |a)
                              |j $ %{} :Expr (:at 1539795418563) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539795418890) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1539795419118) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539795419838) (:by |root) (:text |:style)
                                      |j $ %{} :Expr (:at 1540055310152) (:by |root)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1540055311224) (:by |root) (:text |merge)
                                          |T $ %{} :Leaf (:at 1539795421536) (:by |root) (:text |ui/link)
                                  |r $ %{} :Expr (:at 1539795438820) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539795444014) (:by |root) (:text |:on-click)
                                      |j $ %{} :Expr (:at 1608701767073) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1608701767656) (:by |B1y7Rc-Zz) (:text |fn)
                                          |L $ %{} :Expr (:at 1608701767990) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1608701768290) (:by |B1y7Rc-Zz) (:text |e)
                                              |j $ %{} :Leaf (:at 1608701769187) (:by |B1y7Rc-Zz) (:text |d!)
                                          |T $ %{} :Expr (:at 1539796198362) (:by |root)
                                            :data $ {}
                                              |L $ %{} :Leaf (:at 1608701766490) (:by |B1y7Rc-Zz) (:text |d!)
                                              |j $ %{} :Leaf (:at 1539796198362) (:by |root) (:text |:router/change)
                                              |r $ %{} :Expr (:at 1539796198362) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1539796198362) (:by |root) (:text |{})
                                                  |j $ %{} :Expr (:at 1539796198362) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1539796198362) (:by |root) (:text |:name)
                                                      |j $ %{} :Leaf (:at 1539796198362) (:by |root) (:text |:emotions)
                              |r $ %{} :Expr (:at 1539795423153) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1557335201149) (:by |B1y7Rc-Zz) (:text |comp-i)
                                  |j $ %{} :Leaf (:at 1557335183197) (:by |B1y7Rc-Zz) (:text |:settings)
                                  |r $ %{} :Leaf (:at 1557335205502) (:by |B1y7Rc-Zz) (:text |16)
                                  |v $ %{} :Expr (:at 1557335206106) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1557335207474) (:by |B1y7Rc-Zz) (:text |hsl)
                                      |j $ %{} :Leaf (:at 1557335209973) (:by |B1y7Rc-Zz) (:text |200)
                                      |r $ %{} :Leaf (:at 1557335210319) (:by |B1y7Rc-Zz) (:text |80)
                                      |v $ %{} :Leaf (:at 1557335211623) (:by |B1y7Rc-Zz) (:text |80)
                      |xT $ %{} :Expr (:at 1539796153228) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539796153228) (:by |root) (:text |=<)
                          |j $ %{} :Leaf (:at 1539796153228) (:by |root) (:text |nil)
                          |r $ %{} :Leaf (:at 1539796153228) (:by |root) (:text |16)
                      |y $ %{} :Expr (:at 1539795410469) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539795411712) (:by |root) (:text |div)
                          |j $ %{} :Expr (:at 1539795411948) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539795412258) (:by |root) (:text |{})
                          |r $ %{} :Expr (:at 1539795413211) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539795418242) (:by |root) (:text |a)
                              |j $ %{} :Expr (:at 1539795418563) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539795418890) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1539795419118) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539795419838) (:by |root) (:text |:style)
                                      |j $ %{} :Leaf (:at 1539795421536) (:by |root) (:text |ui/link)
                                  |r $ %{} :Expr (:at 1539795438820) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539795444014) (:by |root) (:text |:on-click)
                                      |j $ %{} :Expr (:at 1608701772546) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1608701773097) (:by |B1y7Rc-Zz) (:text |fn)
                                          |L $ %{} :Expr (:at 1608701773339) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1608701773549) (:by |B1y7Rc-Zz) (:text |e)
                                              |j $ %{} :Leaf (:at 1608701774065) (:by |B1y7Rc-Zz) (:text |d!)
                                          |T $ %{} :Expr (:at 1539796203819) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1608701771766) (:by |B1y7Rc-Zz) (:text |d!)
                                              |j $ %{} :Leaf (:at 1539796203819) (:by |root) (:text |:router/change)
                                              |r $ %{} :Expr (:at 1539796203819) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1539796203819) (:by |root) (:text |{})
                                                  |j $ %{} :Expr (:at 1539796203819) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1539796203819) (:by |root) (:text |:name)
                                                      |j $ %{} :Leaf (:at 1539796203819) (:by |root) (:text |:history)
                              |r $ %{} :Expr (:at 1539795423153) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539795423489) (:by |root) (:text |<>)
                                  |j $ %{} :Leaf (:at 1539796159253) (:by |root) (:text "|\"View history")
                      |y5 $ %{} :Expr (:at 1575990221174) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1575990221719) (:by |B1y7Rc-Zz) (:text |div)
                          |j $ %{} :Expr (:at 1575990221995) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1575990223038) (:by |B1y7Rc-Zz) (:text |{})
                          |r $ %{} :Expr (:at 1575990360429) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1575990364633) (:by |B1y7Rc-Zz) (:text |list->)
                              |b $ %{} :Expr (:at 1575990455132) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1575990455510) (:by |B1y7Rc-Zz) (:text |{})
                              |j $ %{} :Expr (:at 1575990456762) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1629571464863) (:by |B1y7Rc-Zz) (:text |->)
                                  |T $ %{} :Leaf (:at 1575990377536) (:by |B1y7Rc-Zz) (:text |moods)
                                  |X $ %{} :Expr (:at 1629573192030) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629573194092) (:by |B1y7Rc-Zz) (:text |.to-list)
                                  |b $ %{} :Expr (:at 1575990474696) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629571480019) (:by |B1y7Rc-Zz) (:text |.sort-by)
                                      |j $ %{} :Expr (:at 1575990483973) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1575990484297) (:by |B1y7Rc-Zz) (:text |fn)
                                          |j $ %{} :Expr (:at 1575990484769) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629571473531) (:by |B1y7Rc-Zz) (:text |pair)
                                          |r $ %{} :Expr (:at 1575990492842) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1629572202367) (:by |B1y7Rc-Zz) (:text |negate)
                                              |T $ %{} :Expr (:at 1575990487998) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1575990488902) (:by |B1y7Rc-Zz) (:text |:time)
                                                  |j $ %{} :Expr (:at 1629571475221) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1629571476462) (:by |B1y7Rc-Zz) (:text |last)
                                                      |j $ %{} :Leaf (:at 1629571477920) (:by |B1y7Rc-Zz) (:text |pair)
                                  |j $ %{} :Expr (:at 1575990461709) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629571490891) (:by |B1y7Rc-Zz) (:text |.map-pair)
                                      |j $ %{} :Expr (:at 1575990461709) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1575990461709) (:by |B1y7Rc-Zz) (:text |fn)
                                          |j $ %{} :Expr (:at 1575990461709) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1575990461709) (:by |B1y7Rc-Zz) (:text |k)
                                              |j $ %{} :Leaf (:at 1575990461709) (:by |B1y7Rc-Zz) (:text |mood)
                                          |r $ %{} :Expr (:at 1575990461709) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1575990461709) (:by |B1y7Rc-Zz) (:text |[])
                                              |j $ %{} :Leaf (:at 1575990461709) (:by |B1y7Rc-Zz) (:text |k)
                                              |r $ %{} :Expr (:at 1575990527641) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1575990528311) (:by |B1y7Rc-Zz) (:text |let)
                                                  |L $ %{} :Expr (:at 1575990528562) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Expr (:at 1575990528692) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1575990531556) (:by |B1y7Rc-Zz) (:text |emotion-id)
                                                          |j $ %{} :Expr (:at 1575990532044) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1575990536046) (:by |B1y7Rc-Zz) (:text |:emotion-id)
                                                              |j $ %{} :Leaf (:at 1575990537328) (:by |B1y7Rc-Zz) (:text |mood)
                                                  |T $ %{} :Expr (:at 1575990461709) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1575990461709) (:by |B1y7Rc-Zz) (:text |div)
                                                      |j $ %{} :Expr (:at 1575990461709) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1575990461709) (:by |B1y7Rc-Zz) (:text |{})
                                                          |j $ %{} :Expr (:at 1575991929746) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1575991930585) (:by |B1y7Rc-Zz) (:text |:style)
                                                              |j $ %{} :Leaf (:at 1575991935145) (:by |B1y7Rc-Zz) (:text |ui/row)
                                                      |n $ %{} :Expr (:at 1575990604707) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |D $ %{} :Leaf (:at 1575990605472) (:by |B1y7Rc-Zz) (:text |comp-emotion)
                                                          |T $ %{} :Expr (:at 1575990566030) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1575990569215) (:by |B1y7Rc-Zz) (:text |get)
                                                              |j $ %{} :Leaf (:at 1575990573906) (:by |B1y7Rc-Zz) (:text |emotions)
                                                              |r $ %{} :Leaf (:at 1575990575770) (:by |B1y7Rc-Zz) (:text |emotion-id)
                                                          |b $ %{} :Leaf (:at 1575991025457) (:by |B1y7Rc-Zz) (:text |nil)
                                                          |j $ %{} :Expr (:at 1575990610755) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1575990612057) (:by |B1y7Rc-Zz) (:text |fn)
                                                              |j $ %{} :Expr (:at 1575990617111) (:by |B1y7Rc-Zz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1575990617845) (:by |B1y7Rc-Zz) (:text |e)
                                                                  |j $ %{} :Leaf (:at 1575990618394) (:by |B1y7Rc-Zz) (:text |d!)
                                                      |r $ %{} :Expr (:at 1575991944904) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |D $ %{} :Leaf (:at 1575991947699) (:by |B1y7Rc-Zz) (:text |div)
                                                          |L $ %{} :Expr (:at 1575991947937) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1575991948263) (:by |B1y7Rc-Zz) (:text |{})
                                                              |j $ %{} :Expr (:at 1575991948516) (:by |B1y7Rc-Zz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1575991950249) (:by |B1y7Rc-Zz) (:text |:style)
                                                                  |j $ %{} :Expr (:at 1575991953743) (:by |B1y7Rc-Zz)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1575991958170) (:by |B1y7Rc-Zz) (:text |merge)
                                                                      |j $ %{} :Leaf (:at 1575991960334) (:by |B1y7Rc-Zz) (:text |ui/expand)
                                                                      |r $ %{} :Expr (:at 1575991965422) (:by |B1y7Rc-Zz)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1575991966180) (:by |B1y7Rc-Zz) (:text |{})
                                                                          |j $ %{} :Expr (:at 1575991967036) (:by |B1y7Rc-Zz)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1575991992324) (:by |B1y7Rc-Zz) (:text |:white-space)
                                                                              |j $ %{} :Leaf (:at 1575991974236) (:by |B1y7Rc-Zz) (:text |:nowrap)
                                                                          |r $ %{} :Expr (:at 1575991996920) (:by |B1y7Rc-Zz)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1575992001966) (:by |B1y7Rc-Zz) (:text |:text-overflow)
                                                                              |j $ %{} :Leaf (:at 1575992008331) (:by |B1y7Rc-Zz) (:text |:ellipsis)
                                                                          |v $ %{} :Expr (:at 1575992009932) (:by |B1y7Rc-Zz)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1575992011898) (:by |B1y7Rc-Zz) (:text |:overflow)
                                                                              |j $ %{} :Leaf (:at 1575992013062) (:by |B1y7Rc-Zz) (:text |:hidden)
                                                          |T $ %{} :Expr (:at 1575990461709) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1575990461709) (:by |B1y7Rc-Zz) (:text |<>)
                                                              |j $ %{} :Expr (:at 1575990461709) (:by |B1y7Rc-Zz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1575990461709) (:by |B1y7Rc-Zz) (:text |:text)
                                                                  |j $ %{} :Leaf (:at 1575990461709) (:by |B1y7Rc-Zz) (:text |mood)
                      |yD $ %{} :Expr (:at 1575909412145) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1575909418385) (:by |B1y7Rc-Zz) (:text |comp-modal)
                          |r $ %{} :Expr (:at 1575909428790) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1575909430021) (:by |B1y7Rc-Zz) (:text |{})
                              |f $ %{} :Expr (:at 1608702474398) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1608702474398) (:by |B1y7Rc-Zz) (:text |:style)
                                  |j $ %{} :Expr (:at 1608702474398) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1608702474398) (:by |B1y7Rc-Zz) (:text |{})
                                      |j $ %{} :Expr (:at 1608702474398) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1608702474398) (:by |B1y7Rc-Zz) (:text |:width)
                                          |j $ %{} :Leaf (:at 1608702474398) (:by |B1y7Rc-Zz) (:text |400)
                                      |r $ %{} :Expr (:at 1608702474398) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1608702474398) (:by |B1y7Rc-Zz) (:text |:max-width)
                                          |j $ %{} :Leaf (:at 1608702474398) (:by |B1y7Rc-Zz) (:text "|\"86%")
                              |r $ %{} :Expr (:at 1608702093481) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1608702095623) (:by |B1y7Rc-Zz) (:text |:render)
                                  |j $ %{} :Expr (:at 1608702097059) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |fn)
                                      |j $ %{} :Expr (:at 1608702097059) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1608702109457) (:by |B1y7Rc-Zz) (:text |on-close)
                                      |r $ %{} :Expr (:at 1608702097059) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |div)
                                          |j $ %{} :Expr (:at 1608702097059) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |{})
                                              |j $ %{} :Expr (:at 1608702097059) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |:style)
                                                  |j $ %{} :Expr (:at 1608702097059) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |{})
                                                      |j $ %{} :Expr (:at 1608702097059) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |:min-width)
                                                          |j $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |240)
                                                      |r $ %{} :Expr (:at 1608702097059) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |:padding)
                                                          |j $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |20)
                                          |r $ %{} :Expr (:at 1608702097059) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |div)
                                              |j $ %{} :Expr (:at 1608702097059) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |{})
                                                  |j $ %{} :Expr (:at 1608702097059) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |:style)
                                                      |j $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |ui/row-middle)
                                              |r $ %{} :Expr (:at 1608702097059) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |<>)
                                                  |j $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text "|\"In mood")
                                              |v $ %{} :Expr (:at 1608702097059) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |=<)
                                                  |j $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |8)
                                                  |r $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |nil)
                                              |x $ %{} :Expr (:at 1608702097059) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |comp-emotion)
                                                  |j $ %{} :Expr (:at 1608702097059) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |get)
                                                      |j $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |emotions)
                                                      |r $ %{} :Expr (:at 1608702097059) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |:emotion-id)
                                                          |j $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |state)
                                                  |r $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |nil)
                                                  |v $ %{} :Expr (:at 1608702097059) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |fn)
                                                      |j $ %{} :Expr (:at 1608702097059) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                          |v $ %{} :Expr (:at 1608702097059) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |div)
                                              |j $ %{} :Expr (:at 1608702097059) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |{})
                                              |r $ %{} :Expr (:at 1608702097059) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |textarea)
                                                  |j $ %{} :Expr (:at 1608702097059) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |{})
                                                      |j $ %{} :Expr (:at 1608702097059) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |:style)
                                                          |j $ %{} :Expr (:at 1608702097059) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |merge)
                                                              |j $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |ui/textarea)
                                                              |r $ %{} :Expr (:at 1608702097059) (:by |B1y7Rc-Zz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |{})
                                                                  |j $ %{} :Expr (:at 1608702097059) (:by |B1y7Rc-Zz)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |:width)
                                                                      |j $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text "|\"100%")
                                                                  |r $ %{} :Expr (:at 1608702097059) (:by |B1y7Rc-Zz)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |:min-height)
                                                                      |j $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |160)
                                                      |r $ %{} :Expr (:at 1608702097059) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |:value)
                                                          |j $ %{} :Expr (:at 1608702097059) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |:draft)
                                                              |j $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |state)
                                                      |v $ %{} :Expr (:at 1608702097059) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |:placeholder)
                                                          |j $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text "|\"Some notes...")
                                                      |x $ %{} :Expr (:at 1608702097059) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |:on-input)
                                                          |j $ %{} :Expr (:at 1608702097059) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |fn)
                                                              |j $ %{} :Expr (:at 1608702097059) (:by |B1y7Rc-Zz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |e)
                                                                  |j $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |d!)
                                                              |r $ %{} :Expr (:at 1608702097059) (:by |B1y7Rc-Zz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |d!)
                                                                  |j $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |cursor)
                                                                  |r $ %{} :Expr (:at 1608702097059) (:by |B1y7Rc-Zz)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |assoc)
                                                                      |j $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |state)
                                                                      |r $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |:draft)
                                                                      |v $ %{} :Expr (:at 1608702097059) (:by |B1y7Rc-Zz)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |:value)
                                                                          |j $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |e)
                                          |x $ %{} :Expr (:at 1608702097059) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |=<)
                                              |j $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |nil)
                                              |r $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |8)
                                          |y $ %{} :Expr (:at 1608702097059) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |div)
                                              |j $ %{} :Expr (:at 1608702097059) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |{})
                                                  |j $ %{} :Expr (:at 1608702097059) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |:style)
                                                      |j $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |ui/row-parted)
                                              |r $ %{} :Expr (:at 1608702097059) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |span)
                                                  |j $ %{} :Expr (:at 1608702097059) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |{})
                                              |v $ %{} :Expr (:at 1608702097059) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |button)
                                                  |j $ %{} :Expr (:at 1608702097059) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |{})
                                                      |j $ %{} :Expr (:at 1608702097059) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |:style)
                                                          |j $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |ui/button)
                                                      |r $ %{} :Expr (:at 1608702097059) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |:inner-text)
                                                          |j $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text "|\"Submit")
                                                      |v $ %{} :Expr (:at 1608702097059) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |:on-click)
                                                          |j $ %{} :Expr (:at 1608702097059) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |fn)
                                                              |j $ %{} :Expr (:at 1608702097059) (:by |B1y7Rc-Zz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |e)
                                                                  |j $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |d!)
                                                              |r $ %{} :Expr (:at 1608702097059) (:by |B1y7Rc-Zz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |d!)
                                                                  |j $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |:mood/create-one)
                                                                  |r $ %{} :Expr (:at 1608702097059) (:by |B1y7Rc-Zz)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |{})
                                                                      |j $ %{} :Expr (:at 1608702097059) (:by |B1y7Rc-Zz)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |:text)
                                                                          |j $ %{} :Expr (:at 1608702097059) (:by |B1y7Rc-Zz)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |:draft)
                                                                              |j $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |state)
                                                                      |r $ %{} :Expr (:at 1608702097059) (:by |B1y7Rc-Zz)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |:emotion-id)
                                                                          |j $ %{} :Expr (:at 1608702097059) (:by |B1y7Rc-Zz)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |:emotion-id)
                                                                              |j $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |state)
                                                              |v $ %{} :Expr (:at 1608702097059) (:by |B1y7Rc-Zz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |d!)
                                                                  |j $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |cursor)
                                                                  |r $ %{} :Expr (:at 1608702097059) (:by |B1y7Rc-Zz)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |assoc)
                                                                      |j $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |state)
                                                                      |r $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |:show-editor?)
                                                                      |v $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |false)
                                                                      |x $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text |:draft)
                                                                      |y $ %{} :Leaf (:at 1608702097059) (:by |B1y7Rc-Zz) (:text "|\"")
                          |s $ %{} :Expr (:at 1608702469994) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1608702469994) (:by |B1y7Rc-Zz) (:text |:show-editor?)
                              |j $ %{} :Leaf (:at 1608702469994) (:by |B1y7Rc-Zz) (:text |state)
                          |v $ %{} :Expr (:at 1575909477488) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1575909477488) (:by |B1y7Rc-Zz) (:text |fn)
                              |j $ %{} :Expr (:at 1575909477488) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1608701797137) (:by |B1y7Rc-Zz) (:text |d!)
                              |r $ %{} :Expr (:at 1575909477488) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1608701800576) (:by |B1y7Rc-Zz) (:text |d!)
                                  |j $ %{} :Leaf (:at 1608701802477) (:by |B1y7Rc-Zz) (:text |cursor)
                                  |r $ %{} :Expr (:at 1575909477488) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1575909477488) (:by |B1y7Rc-Zz) (:text |assoc)
                                      |j $ %{} :Leaf (:at 1575909477488) (:by |B1y7Rc-Zz) (:text |state)
                                      |r $ %{} :Leaf (:at 1575909477488) (:by |B1y7Rc-Zz) (:text |:show-editor?)
                                      |v $ %{} :Leaf (:at 1575909477488) (:by |B1y7Rc-Zz) (:text |false)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541010211) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1539711467256) (:by |root) (:text |app.comp.dashboard)
            |v $ %{} :Expr (:at 1500541010211) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1629571452106) (:by |B1y7Rc-Zz) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |hsl)
                |r $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1516547394445) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ui)
                |w $ %{} :Expr (:at 1523120376505) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1523120376949) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1523120379036) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1523120382218) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1523120382545) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1523120382719) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1523120383255) (:by |root) (:text |=<)
                |x $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
                        |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                        |u $ %{} :Leaf (:at 1540039157751) (:by |root) (:text |list->)
                        |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |span)
                        |x $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                        |xT $ %{} :Leaf (:at 1540042517353) (:by |root) (:text |input)
                        |y $ %{} :Leaf (:at 1539795435021) (:by |root) (:text |a)
                        |yT $ %{} :Leaf (:at 1540042698810) (:by |root) (:text |button)
                        |yj $ %{} :Leaf (:at 1547914249828) (:by |B1y7Rc-Zz) (:text |textarea)
                        |yr $ %{} :Leaf (:at 1575990245573) (:by |B1y7Rc-Zz) (:text |pre)
                |y $ %{} :Expr (:at 1536470155450) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1536470155450) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1536470155450) (:by |root) (:text |app.config)
                    |r $ %{} :Leaf (:at 1536470161520) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1536470163188) (:by |root) (:text |config)
                |yT $ %{} :Expr (:at 1540039137615) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1540039137615) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1540039137615) (:by |root) (:text |app.comp.emotions)
                    |r $ %{} :Leaf (:at 1540039137615) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1540039137615) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1540039137615) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1540039137615) (:by |root) (:text |comp-emotion)
                |yv $ %{} :Expr (:at 1540044096077) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1540044096077) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1540044096077) (:by |root) (:text |app.comp.kit)
                    |r $ %{} :Leaf (:at 1540044096077) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1540044096077) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1540044096077) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1540044096077) (:by |root) (:text |comp-title)
                |yx $ %{} :Expr (:at 1540055122491) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1540055123425) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1557335170978) (:by |B1y7Rc-Zz) (:text |feather.core)
                    |r $ %{} :Leaf (:at 1540055130785) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1540055131019) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1540055131193) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1557335172396) (:by |B1y7Rc-Zz) (:text |comp-i)
                |yy $ %{} :Expr (:at 1575909497134) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1575909499033) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1575909502405) (:by |B1y7Rc-Zz) (:text |respo-alerts.core)
                    |r $ %{} :Leaf (:at 1575909503123) (:by |B1y7Rc-Zz) (:text |:refer)
                    |v $ %{} :Expr (:at 1575909503301) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1575909503550) (:by |B1y7Rc-Zz) (:text |[])
                        |j $ %{} :Leaf (:at 1575909505375) (:by |B1y7Rc-Zz) (:text |comp-modal)
    |app.comp.emotion-form $ %{} :FileEntry
      :defs $ {}
        |comp-color-picker $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1547915746139) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1547915747773) (:by |B1y7Rc-Zz) (:text |defcomp)
              |j $ %{} :Leaf (:at 1547915746139) (:by |B1y7Rc-Zz) (:text |comp-color-picker)
              |r $ %{} :Expr (:at 1547915746139) (:by |B1y7Rc-Zz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1547917448044) (:by |B1y7Rc-Zz) (:text |form)
                  |T $ %{} :Leaf (:at 1547916575245) (:by |B1y7Rc-Zz) (:text |on-pick)
              |v $ %{} :Expr (:at 1547915749275) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1547916234410) (:by |B1y7Rc-Zz) (:text |list->)
                  |j $ %{} :Expr (:at 1547915750924) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1547915751233) (:by |B1y7Rc-Zz) (:text |{})
                  |v $ %{} :Expr (:at 1547915827973) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629573276961) (:by |B1y7Rc-Zz) (:text |->)
                      |j $ %{} :Leaf (:at 1547915836762) (:by |B1y7Rc-Zz) (:text |default-colors)
                      |r $ %{} :Expr (:at 1547916013157) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1547916014969) (:by |B1y7Rc-Zz) (:text |map)
                          |T $ %{} :Expr (:at 1547916015803) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1547916016341) (:by |B1y7Rc-Zz) (:text |fn)
                              |L $ %{} :Expr (:at 1547916016862) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1547916018217) (:by |B1y7Rc-Zz) (:text |color)
                              |T $ %{} :Expr (:at 1547916019484) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1547916020091) (:by |B1y7Rc-Zz) (:text |[])
                                  |L $ %{} :Leaf (:at 1547916022003) (:by |B1y7Rc-Zz) (:text |color)
                                  |T $ %{} :Expr (:at 1547916003991) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1547916009290) (:by |B1y7Rc-Zz) (:text |div)
                                      |j $ %{} :Expr (:at 1547916009549) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1547916009872) (:by |B1y7Rc-Zz) (:text |{})
                                          |j $ %{} :Expr (:at 1547916024517) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1547916025215) (:by |B1y7Rc-Zz) (:text |:style)
                                              |j $ %{} :Expr (:at 1547916182978) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1547916183583) (:by |B1y7Rc-Zz) (:text |let)
                                                  |L $ %{} :Expr (:at 1547916183908) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Expr (:at 1547916184107) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1547916184792) (:by |B1y7Rc-Zz) (:text |size)
                                                          |j $ %{} :Leaf (:at 1547916186815) (:by |B1y7Rc-Zz) (:text |24)
                                                  |T $ %{} :Expr (:at 1547916026768) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1547916027650) (:by |B1y7Rc-Zz) (:text |{})
                                                      |j $ %{} :Expr (:at 1547916027908) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1547916032050) (:by |B1y7Rc-Zz) (:text |:background-color)
                                                          |j $ %{} :Leaf (:at 1547916032963) (:by |B1y7Rc-Zz) (:text |color)
                                                      |r $ %{} :Expr (:at 1547916034729) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1547916037616) (:by |B1y7Rc-Zz) (:text |:height)
                                                          |j $ %{} :Leaf (:at 1547916189883) (:by |B1y7Rc-Zz) (:text |size)
                                                      |v $ %{} :Expr (:at 1547916190264) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1547916192985) (:by |B1y7Rc-Zz) (:text |:width)
                                                          |j $ %{} :Leaf (:at 1547916194119) (:by |B1y7Rc-Zz) (:text |size)
                                                      |x $ %{} :Expr (:at 1547916195051) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1547916200747) (:by |B1y7Rc-Zz) (:text |:border-radius)
                                                          |j $ %{} :Leaf (:at 1547916249404) (:by |B1y7Rc-Zz) (:text "|\"6px")
                                                      |y $ %{} :Expr (:at 1547916253804) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1547916254953) (:by |B1y7Rc-Zz) (:text |:display)
                                                          |j $ %{} :Leaf (:at 1547916258120) (:by |B1y7Rc-Zz) (:text |:inline-block)
                                                      |yT $ %{} :Expr (:at 1547916260362) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1547916262890) (:by |B1y7Rc-Zz) (:text |:margin)
                                                          |j $ %{} :Leaf (:at 1547916270707) (:by |B1y7Rc-Zz) (:text "|\"0 8px 8px 0")
                                                      |yj $ %{} :Expr (:at 1547916275806) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1547916283265) (:by |B1y7Rc-Zz) (:text |:cursor)
                                                          |j $ %{} :Leaf (:at 1547916278261) (:by |B1y7Rc-Zz) (:text |:pointer)
                                          |r $ %{} :Expr (:at 1547916526641) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1547916529945) (:by |B1y7Rc-Zz) (:text |:on-click)
                                              |j $ %{} :Expr (:at 1547916530294) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1547916530523) (:by |B1y7Rc-Zz) (:text |fn)
                                                  |j $ %{} :Expr (:at 1547916530854) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1547916532211) (:by |B1y7Rc-Zz) (:text |e)
                                                      |j $ %{} :Leaf (:at 1547916534218) (:by |B1y7Rc-Zz) (:text |d!)
                                                  |r $ %{} :Expr (:at 1547916577785) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1547916579430) (:by |B1y7Rc-Zz) (:text |on-pick)
                                                      |j $ %{} :Leaf (:at 1547916580826) (:by |B1y7Rc-Zz) (:text |color)
                                                      |r $ %{} :Leaf (:at 1547916582203) (:by |B1y7Rc-Zz) (:text |d!)
        |comp-emotion-form $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-emotion-form)
              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |D $ %{} :Leaf (:at 1539883644714) (:by |root) (:text |states)
                  |T $ %{} :Leaf (:at 1539883357106) (:by |root) (:text |data)
              |v $ %{} :Expr (:at 1539883358280) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1539883359452) (:by |root) (:text |let)
                  |L $ %{} :Expr (:at 1539883359825) (:by |root)
                    :data $ {}
                      |D $ %{} :Expr (:at 1608701889089) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1608701890504) (:by |B1y7Rc-Zz) (:text |cursor)
                          |j $ %{} :Expr (:at 1608701890914) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1608701892770) (:by |B1y7Rc-Zz) (:text |:cursor)
                              |j $ %{} :Leaf (:at 1608701893556) (:by |B1y7Rc-Zz) (:text |states)
                      |T $ %{} :Expr (:at 1539883359976) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539883361399) (:by |root) (:text |form)
                          |j $ %{} :Expr (:at 1539883674310) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1539883675034) (:by |root) (:text |or)
                              |L $ %{} :Expr (:at 1539883675840) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539883676637) (:by |root) (:text |:data)
                                  |j $ %{} :Leaf (:at 1539883677977) (:by |root) (:text |states)
                              |T $ %{} :Expr (:at 1539883362419) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539883362783) (:by |root) (:text |or)
                                  |j $ %{} :Leaf (:at 1539883366728) (:by |root) (:text |data)
                                  |r $ %{} :Leaf (:at 1539883373017) (:by |root) (:text |schema/emotion)
                      |j $ %{} :Expr (:at 1540037070862) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1540037072610) (:by |root) (:text |editing?)
                          |j $ %{} :Expr (:at 1540037073160) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1540037073160) (:by |root) (:text |some?)
                              |j $ %{} :Expr (:at 1540037073160) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1540037073160) (:by |root) (:text |:id)
                                  |j $ %{} :Leaf (:at 1540037073160) (:by |root) (:text |form)
                      |r $ %{} :Expr (:at 1629571635973) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629571649167) (:by |B1y7Rc-Zz) (:text |delete-plugin)
                          |j $ %{} :Expr (:at 1629571649784) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629571651734) (:by |B1y7Rc-Zz) (:text |use-confirm)
                              |b $ %{} :Expr (:at 1629571740246) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629571740731) (:by |B1y7Rc-Zz) (:text |>>)
                                  |j $ %{} :Leaf (:at 1629571741580) (:by |B1y7Rc-Zz) (:text |states)
                                  |r $ %{} :Leaf (:at 1629571744604) (:by |B1y7Rc-Zz) (:text |:delete)
                              |j $ %{} :Expr (:at 1629571655706) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629571655706) (:by |B1y7Rc-Zz) (:text |{})
                                  |r $ %{} :Expr (:at 1629571655706) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629571655706) (:by |B1y7Rc-Zz) (:text |:text)
                                      |j $ %{} :Leaf (:at 1629571655706) (:by |B1y7Rc-Zz) (:text "|\"Sure to delete?")
                  |T $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1539711418045) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539711418390) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1539795492172) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539795496048) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at 1539795499936) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539795500285) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1539795500500) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539795502868) (:by |root) (:text |:padding)
                                      |j $ %{} :Leaf (:at 1539795505817) (:by |root) (:text "|\"8px 16px")
                      |r $ %{} :Expr (:at 1539711419433) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1540055987903) (:by |root) (:text |div)
                          |j $ %{} :Expr (:at 1540055988164) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1540055988479) (:by |root) (:text |{})
                          |r $ %{} :Expr (:at 1540055989801) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1540055991517) (:by |root) (:text |comp-title)
                              |j $ %{} :Leaf (:at 1540056001568) (:by |root) (:text "|\"Emotion details")
                      |t $ %{} :Expr (:at 1540056005434) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1540056005955) (:by |root) (:text |=<)
                          |j $ %{} :Leaf (:at 1540056007030) (:by |root) (:text |nil)
                          |r $ %{} :Leaf (:at 1540056007476) (:by |root) (:text |16)
                      |v $ %{} :Expr (:at 1539883403371) (:by |root)
                        :data $ {}
                          |P $ %{} :Leaf (:at 1540055912577) (:by |root) (:text |comp-field)
                          |d $ %{} :Leaf (:at 1540055924401) (:by |root) (:text "|\"Name")
                          |r $ %{} :Expr (:at 1539883404906) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539883406113) (:by |root) (:text |input)
                              |j $ %{} :Expr (:at 1539883410498) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539883410817) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1539883411041) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539883412661) (:by |root) (:text |:style)
                                      |j $ %{} :Leaf (:at 1539883414071) (:by |root) (:text |ui/input)
                                  |r $ %{} :Expr (:at 1539883416645) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539883419114) (:by |root) (:text |:value)
                                      |j $ %{} :Expr (:at 1539883432251) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539883420325) (:by |root) (:text |:text)
                                          |j $ %{} :Leaf (:at 1539883433450) (:by |root) (:text |form)
                                  |v $ %{} :Expr (:at 1539883686793) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539883692846) (:by |root) (:text |:on-input)
                                      |j $ %{} :Expr (:at 1608701901781) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1608701902401) (:by |B1y7Rc-Zz) (:text |fn)
                                          |L $ %{} :Expr (:at 1608701902607) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1608701902949) (:by |B1y7Rc-Zz) (:text |e)
                                              |j $ %{} :Leaf (:at 1608701903533) (:by |B1y7Rc-Zz) (:text |d!)
                                          |T $ %{} :Expr (:at 1539883693274) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1608701899762) (:by |B1y7Rc-Zz) (:text |d!)
                                              |b $ %{} :Leaf (:at 1608701901199) (:by |B1y7Rc-Zz) (:text |cursor)
                                              |j $ %{} :Expr (:at 1539883701941) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1539883703321) (:by |root) (:text |assoc)
                                                  |j $ %{} :Leaf (:at 1539883707762) (:by |root) (:text |form)
                                                  |r $ %{} :Leaf (:at 1539883709708) (:by |root) (:text |:text)
                                                  |v $ %{} :Expr (:at 1539883709941) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1539883711409) (:by |root) (:text |:value)
                                                      |j $ %{} :Leaf (:at 1608702011332) (:by |B1y7Rc-Zz) (:text |e)
                      |x $ %{} :Expr (:at 1539883403371) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1540055930931) (:by |root) (:text |comp-field)
                          |f $ %{} :Leaf (:at 1540055937030) (:by |root) (:text "|\"Score")
                          |r $ %{} :Expr (:at 1539883404906) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539883406113) (:by |root) (:text |input)
                              |j $ %{} :Expr (:at 1539883410498) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539883410817) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1539883411041) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539883412661) (:by |root) (:text |:style)
                                      |j $ %{} :Leaf (:at 1539883414071) (:by |root) (:text |ui/input)
                                  |r $ %{} :Expr (:at 1539883416645) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539883419114) (:by |root) (:text |:value)
                                      |j $ %{} :Expr (:at 1539883432251) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539883441681) (:by |root) (:text |:score)
                                          |j $ %{} :Leaf (:at 1539883433450) (:by |root) (:text |form)
                                  |v $ %{} :Expr (:at 1539883442869) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539883444611) (:by |root) (:text |:type)
                                      |j $ %{} :Leaf (:at 1539883512828) (:by |root) (:text "|\"number")
                                  |x $ %{} :Expr (:at 1539883717688) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539883717688) (:by |root) (:text |:on-input)
                                      |j $ %{} :Expr (:at 1608701908614) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1608701909225) (:by |B1y7Rc-Zz) (:text |fn)
                                          |L $ %{} :Expr (:at 1608701909466) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1608701909763) (:by |B1y7Rc-Zz) (:text |e)
                                              |j $ %{} :Leaf (:at 1608701910242) (:by |B1y7Rc-Zz) (:text |d!)
                                          |T $ %{} :Expr (:at 1539883717688) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1608701906135) (:by |B1y7Rc-Zz) (:text |d!)
                                              |b $ %{} :Leaf (:at 1608701908137) (:by |B1y7Rc-Zz) (:text |cursor)
                                              |j $ %{} :Expr (:at 1539883717688) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1539883717688) (:by |root) (:text |assoc)
                                                  |j $ %{} :Leaf (:at 1539883717688) (:by |root) (:text |form)
                                                  |r $ %{} :Leaf (:at 1539883723965) (:by |root) (:text |:score)
                                                  |v $ %{} :Expr (:at 1539883717688) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1539883717688) (:by |root) (:text |:value)
                                                      |j $ %{} :Leaf (:at 1608702012656) (:by |B1y7Rc-Zz) (:text |e)
                      |y $ %{} :Expr (:at 1539883450054) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1540055941110) (:by |root) (:text |comp-field)
                          |f $ %{} :Leaf (:at 1540055944142) (:by |root) (:text "|\"Color")
                          |r $ %{} :Expr (:at 1547915710771) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1547915714627) (:by |B1y7Rc-Zz) (:text |div)
                              |L $ %{} :Expr (:at 1547915712590) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1547915712968) (:by |B1y7Rc-Zz) (:text |{})
                                  |j $ %{} :Expr (:at 1547915716773) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1547915719243) (:by |B1y7Rc-Zz) (:text |:style)
                                      |j $ %{} :Leaf (:at 1547915721558) (:by |B1y7Rc-Zz) (:text |ui/column)
                              |T $ %{} :Expr (:at 1539883479120) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539883479120) (:by |root) (:text |input)
                                  |j $ %{} :Expr (:at 1539883479120) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539883479120) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1539883479120) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539883479120) (:by |root) (:text |:style)
                                          |j $ %{} :Expr (:at 1540056066978) (:by |root)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1540056068027) (:by |root) (:text |merge)
                                              |T $ %{} :Leaf (:at 1539883479120) (:by |root) (:text |ui/input)
                                              |j $ %{} :Expr (:at 1540056068735) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1540056069080) (:by |root) (:text |{})
                                                  |j $ %{} :Expr (:at 1540056069359) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1540056077584) (:by |root) (:text |:font-family)
                                                      |j $ %{} :Leaf (:at 1540056079700) (:by |root) (:text |ui/font-code)
                                      |r $ %{} :Expr (:at 1539883479120) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539883479120) (:by |root) (:text |:value)
                                          |j $ %{} :Expr (:at 1539883479120) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1539883479120) (:by |root) (:text |:color)
                                              |j $ %{} :Leaf (:at 1539883479120) (:by |root) (:text |form)
                                      |v $ %{} :Expr (:at 1539883728009) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539883728009) (:by |root) (:text |:on-input)
                                          |j $ %{} :Expr (:at 1608701914481) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1608701915068) (:by |B1y7Rc-Zz) (:text |fn)
                                              |L $ %{} :Expr (:at 1608701915272) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1608701915551) (:by |B1y7Rc-Zz) (:text |e)
                                                  |j $ %{} :Leaf (:at 1608701916060) (:by |B1y7Rc-Zz) (:text |d!)
                                              |T $ %{} :Expr (:at 1539883728009) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1608701912886) (:by |B1y7Rc-Zz) (:text |d!)
                                                  |b $ %{} :Leaf (:at 1608701913998) (:by |B1y7Rc-Zz) (:text |cursor)
                                                  |j $ %{} :Expr (:at 1539883728009) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1539883728009) (:by |root) (:text |assoc)
                                                      |j $ %{} :Leaf (:at 1539883728009) (:by |root) (:text |form)
                                                      |r $ %{} :Leaf (:at 1539883731869) (:by |root) (:text |:color)
                                                      |v $ %{} :Expr (:at 1539883728009) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1539883728009) (:by |root) (:text |:value)
                                                          |j $ %{} :Leaf (:at 1608702015846) (:by |B1y7Rc-Zz) (:text |e)
                              |b $ %{} :Expr (:at 1547915815092) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1547915815813) (:by |B1y7Rc-Zz) (:text |=<)
                                  |j $ %{} :Leaf (:at 1547915817063) (:by |B1y7Rc-Zz) (:text |nil)
                                  |r $ %{} :Leaf (:at 1547915817406) (:by |B1y7Rc-Zz) (:text |8)
                              |j $ %{} :Expr (:at 1547915723566) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1547915730848) (:by |B1y7Rc-Zz) (:text |comp-color-picker)
                                  |b $ %{} :Leaf (:at 1547917445146) (:by |B1y7Rc-Zz) (:text |form)
                                  |j $ %{} :Expr (:at 1547916551707) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1547916554016) (:by |B1y7Rc-Zz) (:text |fn)
                                      |j $ %{} :Expr (:at 1547916554392) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1547916555248) (:by |B1y7Rc-Zz) (:text |color)
                                          |j $ %{} :Leaf (:at 1547916558174) (:by |B1y7Rc-Zz) (:text |d!)
                                      |r $ %{} :Expr (:at 1547916559937) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1608701885265) (:by |B1y7Rc-Zz) (:text |d!)
                                          |j $ %{} :Leaf (:at 1608701886925) (:by |B1y7Rc-Zz) (:text |cursor)
                                          |r $ %{} :Expr (:at 1547916565370) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1547916566429) (:by |B1y7Rc-Zz) (:text |assoc)
                                              |j $ %{} :Leaf (:at 1547916566991) (:by |B1y7Rc-Zz) (:text |form)
                                              |r $ %{} :Leaf (:at 1547916568119) (:by |B1y7Rc-Zz) (:text |:color)
                                              |v $ %{} :Leaf (:at 1547916569789) (:by |B1y7Rc-Zz) (:text |color)
                      |yD $ %{} :Expr (:at 1540037140050) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1540037141897) (:by |root) (:text |=<)
                          |j $ %{} :Leaf (:at 1540037142471) (:by |root) (:text |nil)
                          |r $ %{} :Leaf (:at 1540037143887) (:by |root) (:text |16)
                      |yT $ %{} :Expr (:at 1539884817672) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539884818706) (:by |root) (:text |div)
                          |j $ %{} :Expr (:at 1539884818952) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539884819287) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1539884819856) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539884837063) (:by |root) (:text |:style)
                                  |j $ %{} :Leaf (:at 1539884842215) (:by |root) (:text |ui/row-parted)
                          |r $ %{} :Expr (:at 1539884843721) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539884844747) (:by |root) (:text |span)
                              |j $ %{} :Expr (:at 1539884845004) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539884845326) (:by |root) (:text |{})
                          |v $ %{} :Expr (:at 1540037044684) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1540037047089) (:by |root) (:text |span)
                              |L $ %{} :Expr (:at 1540037048359) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1540037048168) (:by |root) (:text |{})
                              |P $ %{} :Expr (:at 1540037052628) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1540037058827) (:by |root) (:text |when)
                                  |j $ %{} :Leaf (:at 1540037081116) (:by |root) (:text |editing?)
                                  |n $ %{} :Expr (:at 1629571681124) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629571681124) (:by |B1y7Rc-Zz) (:text |button)
                                      |j $ %{} :Expr (:at 1629571681124) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629571681124) (:by |B1y7Rc-Zz) (:text |{})
                                          |j $ %{} :Expr (:at 1629571681124) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629571681124) (:by |B1y7Rc-Zz) (:text |:style)
                                              |j $ %{} :Expr (:at 1629571681124) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629571681124) (:by |B1y7Rc-Zz) (:text |merge)
                                                  |j $ %{} :Leaf (:at 1629571681124) (:by |B1y7Rc-Zz) (:text |ui/button)
                                                  |r $ %{} :Expr (:at 1629571681124) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1629571681124) (:by |B1y7Rc-Zz) (:text |{})
                                                      |j $ %{} :Expr (:at 1629571681124) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1629571681124) (:by |B1y7Rc-Zz) (:text |:color)
                                                          |j $ %{} :Leaf (:at 1629571681124) (:by |B1y7Rc-Zz) (:text |:white)
                                                      |r $ %{} :Expr (:at 1629571681124) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1629571681124) (:by |B1y7Rc-Zz) (:text |:background-color)
                                                          |j $ %{} :Expr (:at 1629571681124) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1629571681124) (:by |B1y7Rc-Zz) (:text |hsl)
                                                              |j $ %{} :Leaf (:at 1629571681124) (:by |B1y7Rc-Zz) (:text |10)
                                                              |r $ %{} :Leaf (:at 1629571681124) (:by |B1y7Rc-Zz) (:text |50)
                                                              |v $ %{} :Leaf (:at 1629571681124) (:by |B1y7Rc-Zz) (:text |70)
                                                      |v $ %{} :Expr (:at 1629571681124) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1629571681124) (:by |B1y7Rc-Zz) (:text |:border)
                                                          |j $ %{} :Expr (:at 1629571681124) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1629571681124) (:by |B1y7Rc-Zz) (:text |hsl)
                                                              |j $ %{} :Leaf (:at 1629571681124) (:by |B1y7Rc-Zz) (:text |10)
                                                              |r $ %{} :Leaf (:at 1629571681124) (:by |B1y7Rc-Zz) (:text |50)
                                                              |v $ %{} :Leaf (:at 1629571681124) (:by |B1y7Rc-Zz) (:text |60)
                                          |r $ %{} :Expr (:at 1629571681124) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629571681124) (:by |B1y7Rc-Zz) (:text |:inner-text)
                                              |j $ %{} :Leaf (:at 1629571681124) (:by |B1y7Rc-Zz) (:text "|\"Delete")
                                          |v $ %{} :Expr (:at 1629571685492) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629571687360) (:by |B1y7Rc-Zz) (:text |:on-click)
                                              |j $ %{} :Expr (:at 1629571687758) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629571688884) (:by |B1y7Rc-Zz) (:text |fn)
                                                  |j $ %{} :Expr (:at 1629571689138) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1629571690134) (:by |B1y7Rc-Zz) (:text |e)
                                                      |j $ %{} :Leaf (:at 1629571690692) (:by |B1y7Rc-Zz) (:text |d!)
                                                  |r $ %{} :Expr (:at 1629571693962) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1629571694722) (:by |B1y7Rc-Zz) (:text |.show)
                                                      |j $ %{} :Leaf (:at 1629571699103) (:by |B1y7Rc-Zz) (:text |delete-plugin)
                                                      |r $ %{} :Leaf (:at 1629571700568) (:by |B1y7Rc-Zz) (:text |d!)
                                                      |v $ %{} :Expr (:at 1629571701619) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1629571702036) (:by |B1y7Rc-Zz) (:text |fn)
                                                          |j $ %{} :Expr (:at 1629571702941) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                          |r $ %{} :Expr (:at 1629571710062) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1629571710062) (:by |B1y7Rc-Zz) (:text |d!)
                                                              |j $ %{} :Leaf (:at 1629571710062) (:by |B1y7Rc-Zz) (:text |:router/change)
                                                              |r $ %{} :Expr (:at 1629571710062) (:by |B1y7Rc-Zz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1629571710062) (:by |B1y7Rc-Zz) (:text |{})
                                                                  |j $ %{} :Expr (:at 1629571710062) (:by |B1y7Rc-Zz)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1629571710062) (:by |B1y7Rc-Zz) (:text |:name)
                                                                      |j $ %{} :Leaf (:at 1629571710062) (:by |B1y7Rc-Zz) (:text |:emotions)
                                                          |v $ %{} :Expr (:at 1629571710062) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1629571710062) (:by |B1y7Rc-Zz) (:text |d!)
                                                              |j $ %{} :Leaf (:at 1629571710062) (:by |B1y7Rc-Zz) (:text |:emotion/remove-one)
                                                              |r $ %{} :Expr (:at 1629571710062) (:by |B1y7Rc-Zz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1629571710062) (:by |B1y7Rc-Zz) (:text |:id)
                                                                  |j $ %{} :Leaf (:at 1629571710062) (:by |B1y7Rc-Zz) (:text |form)
                              |R $ %{} :Expr (:at 1540037126325) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1540037127459) (:by |root) (:text |when)
                                  |j $ %{} :Leaf (:at 1540037132613) (:by |root) (:text |editing?)
                                  |r $ %{} :Expr (:at 1540037133046) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1540037136572) (:by |root) (:text |=<)
                                      |j $ %{} :Leaf (:at 1540037136916) (:by |root) (:text |8)
                                      |r $ %{} :Leaf (:at 1540037137439) (:by |root) (:text |nil)
                              |T $ %{} :Expr (:at 1539884846053) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539884847890) (:by |root) (:text |button)
                                  |j $ %{} :Expr (:at 1539884848217) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539884848540) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1539884848759) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539884849418) (:by |root) (:text |:style)
                                          |j $ %{} :Leaf (:at 1539884851584) (:by |root) (:text |ui/button)
                                      |r $ %{} :Expr (:at 1539884853458) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539884855574) (:by |root) (:text |:on-click)
                                          |j $ %{} :Expr (:at 1539884859742) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1539884860065) (:by |root) (:text |fn)
                                              |j $ %{} :Expr (:at 1539884860268) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1539884860476) (:by |root) (:text |e)
                                                  |j $ %{} :Leaf (:at 1539884862246) (:by |root) (:text |d!)
                                              |r $ %{} :Expr (:at 1539884864459) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1539884864986) (:by |root) (:text |d!)
                                                  |j $ %{} :Leaf (:at 1539884872341) (:by |root) (:text |:emotion/create-one)
                                                  |r $ %{} :Leaf (:at 1539884874838) (:by |root) (:text |form)
                                              |v $ %{} :Expr (:at 1539884875909) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1608701927848) (:by |B1y7Rc-Zz) (:text |d!)
                                                  |b $ %{} :Leaf (:at 1608701929020) (:by |B1y7Rc-Zz) (:text |cursor)
                                                  |j $ %{} :Leaf (:at 1539884878626) (:by |root) (:text |nil)
                                              |x $ %{} :Expr (:at 1540037119679) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1540037119679) (:by |root) (:text |d!)
                                                  |j $ %{} :Leaf (:at 1540037119679) (:by |root) (:text |:router/change)
                                                  |r $ %{} :Expr (:at 1540037119679) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1540037119679) (:by |root) (:text |{})
                                                      |j $ %{} :Expr (:at 1540037119679) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1540037119679) (:by |root) (:text |:name)
                                                          |j $ %{} :Leaf (:at 1540037119679) (:by |root) (:text |:emotions)
                                      |v $ %{} :Expr (:at 1539884893804) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539884897830) (:by |root) (:text |:inner-text)
                                          |j $ %{} :Expr (:at 1540036808535) (:by |root)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1540036809215) (:by |root) (:text |if)
                                              |J $ %{} :Leaf (:at 1540037068572) (:by |root) (:text |editing?)
                                              |P $ %{} :Leaf (:at 1547916604675) (:by |B1y7Rc-Zz) (:text "|\"Save")
                                              |T $ %{} :Leaf (:at 1539884899204) (:by |root) (:text "|\"Create")
                      |yj $ %{} :Expr (:at 1629571667411) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629571669196) (:by |B1y7Rc-Zz) (:text |.render)
                          |j $ %{} :Leaf (:at 1629571672841) (:by |B1y7Rc-Zz) (:text |delete-plugin)
        |default-colors $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1547915837266) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1547915837889) (:by |B1y7Rc-Zz) (:text |def)
              |j $ %{} :Leaf (:at 1547915837266) (:by |B1y7Rc-Zz) (:text |default-colors)
              |r $ %{} :Expr (:at 1547967245344) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1547967246497) (:by |B1y7Rc-Zz) (:text |[])
                  |j $ %{} :Leaf (:at 1547967252681) (:by |B1y7Rc-Zz) (:text "|\"#ff9e96")
                  |r $ %{} :Leaf (:at 1547967333274) (:by |B1y7Rc-Zz) (:text "|\"#e7e5e5")
                  |v $ %{} :Leaf (:at 1547967331791) (:by |B1y7Rc-Zz) (:text "|\"#baf9c2")
                  |x $ %{} :Leaf (:at 1547967330599) (:by |B1y7Rc-Zz) (:text "|\"#c6ded2")
                  |y $ %{} :Leaf (:at 1547967329240) (:by |B1y7Rc-Zz) (:text "|\"#5facf6")
                  |yT $ %{} :Leaf (:at 1547967327561) (:by |B1y7Rc-Zz) (:text "|\"#c390e8")
                  |yj $ %{} :Leaf (:at 1547967326244) (:by |B1y7Rc-Zz) (:text "|\"#ffdd57")
                  |yr $ %{} :Leaf (:at 1547967324715) (:by |B1y7Rc-Zz) (:text "|\"#f79800")
                  |yv $ %{} :Leaf (:at 1547967322462) (:by |B1y7Rc-Zz) (:text "|\"#cf0027")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541010211) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1539711562542) (:by |root) (:text |app.comp.emotion-form)
            |v $ %{} :Expr (:at 1500541010211) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1629571585164) (:by |B1y7Rc-Zz) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |hsl)
                |r $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1516547394445) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ui)
                |w $ %{} :Expr (:at 1523120376505) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1523120376949) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1523120379036) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1523120382218) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1523120382545) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1523120382719) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1523120383255) (:by |root) (:text |=<)
                |x $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
                        |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                        |sD $ %{} :Leaf (:at 1608701996859) (:by |B1y7Rc-Zz) (:text |>>)
                        |tT $ %{} :Leaf (:at 1547916241911) (:by |B1y7Rc-Zz) (:text |list->)
                        |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |span)
                        |x $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                        |y $ %{} :Leaf (:at 1539796302495) (:by |root) (:text |button)
                        |yT $ %{} :Leaf (:at 1539883484986) (:by |root) (:text |input)
                |y $ %{} :Expr (:at 1536470155450) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1536470155450) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1536470155450) (:by |root) (:text |app.config)
                    |r $ %{} :Leaf (:at 1536470161520) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1536470163188) (:by |root) (:text |config)
                |yT $ %{} :Expr (:at 1539883375803) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1539883376151) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1539883377543) (:by |root) (:text |app.schema)
                    |r $ %{} :Leaf (:at 1539883378021) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1539883380834) (:by |root) (:text |schema)
                |yj $ %{} :Expr (:at 1540037656195) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1540037656555) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1608701501750) (:by |B1y7Rc-Zz) (:text |respo-alerts.core)
                    |r $ %{} :Leaf (:at 1540037665129) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1540037665318) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1540037665496) (:by |root) (:text |[])
                        |r $ %{} :Leaf (:at 1629571630549) (:by |B1y7Rc-Zz) (:text |use-confirm)
                |yr $ %{} :Expr (:at 1540055905310) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1540055905310) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1540055905310) (:by |root) (:text |app.comp.kit)
                    |r $ %{} :Leaf (:at 1540055905310) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1540055905310) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1540055905310) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1540055905310) (:by |root) (:text |comp-field)
                        |r $ %{} :Leaf (:at 1540056025161) (:by |root) (:text |comp-title)
    |app.comp.emotions $ %{} :FileEntry
      :defs $ {}
        |comp-emotion $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1540038515168) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1540038517621) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1540038515168) (:by |root) (:text |comp-emotion)
              |r $ %{} :Expr (:at 1540038515168) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1540038519756) (:by |root) (:text |emotion)
                  |b $ %{} :Leaf (:at 1575990991582) (:by |B1y7Rc-Zz) (:text |style)
                  |j $ %{} :Leaf (:at 1540038522924) (:by |root) (:text |on-click!)
              |v $ %{} :Expr (:at 1540038537954) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1540038537954) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1540038537954) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1540038537954) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1540038537954) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1540038537954) (:by |root) (:text |:style)
                          |j $ %{} :Expr (:at 1575989526467) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1575989528855) (:by |B1y7Rc-Zz) (:text |merge)
                              |L $ %{} :Leaf (:at 1575989531739) (:by |B1y7Rc-Zz) (:text |ui/center)
                              |T $ %{} :Expr (:at 1540038537954) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1540038537954) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1540038537954) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1540038537954) (:by |root) (:text |:background-color)
                                      |j $ %{} :Expr (:at 1540038537954) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1540038537954) (:by |root) (:text |:color)
                                          |j $ %{} :Leaf (:at 1540038537954) (:by |root) (:text |emotion)
                                  |r $ %{} :Expr (:at 1540038537954) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1540038537954) (:by |root) (:text |:display)
                                      |j $ %{} :Leaf (:at 1575989596292) (:by |B1y7Rc-Zz) (:text |:inline-flex)
                                  |v $ %{} :Expr (:at 1540038537954) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1540038537954) (:by |root) (:text |:padding)
                                      |j $ %{} :Leaf (:at 1540038616577) (:by |root) (:text "|\"0 16px")
                                  |wD $ %{} :Expr (:at 1575989622045) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1575989622045) (:by |B1y7Rc-Zz) (:text |:line-height)
                                      |j $ %{} :Leaf (:at 1575989622045) (:by |B1y7Rc-Zz) (:text "|\"24px")
                                  |xT $ %{} :Expr (:at 1547914140654) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1547914141822) (:by |B1y7Rc-Zz) (:text |:height)
                                      |j $ %{} :Leaf (:at 1547914143918) (:by |B1y7Rc-Zz) (:text "|\"24px")
                                  |y $ %{} :Expr (:at 1540038537954) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1540038537954) (:by |root) (:text |:margin)
                                      |j $ %{} :Leaf (:at 1540038537954) (:by |root) (:text "|\"0 8px 8px 0")
                                  |yT $ %{} :Expr (:at 1540038537954) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1540038537954) (:by |root) (:text |:border-radius)
                                      |j $ %{} :Leaf (:at 1540055073158) (:by |root) (:text "|\"8px")
                                  |yj $ %{} :Expr (:at 1540038537954) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1540038537954) (:by |root) (:text |:color)
                                      |j $ %{} :Leaf (:at 1540038537954) (:by |root) (:text |:white)
                              |j $ %{} :Leaf (:at 1575990997159) (:by |B1y7Rc-Zz) (:text |style)
                      |r $ %{} :Expr (:at 1540038537954) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1540038537954) (:by |root) (:text |:on-click)
                          |j $ %{} :Leaf (:at 1540038556592) (:by |root) (:text |on-click!)
                  |r $ %{} :Expr (:at 1540038537954) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1540038537954) (:by |root) (:text |<>)
                      |j $ %{} :Expr (:at 1540038537954) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1540038537954) (:by |root) (:text |:text)
                          |j $ %{} :Leaf (:at 1540038537954) (:by |root) (:text |emotion)
        |comp-emotions-manager $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-emotions-manager)
              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1540028299141) (:by |root) (:text |emotions)
              |v $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1539711418045) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539711418390) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1539795492172) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539795496048) (:by |root) (:text |:style)
                          |j $ %{} :Expr (:at 1539795499936) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539795500285) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1539795500500) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539795502868) (:by |root) (:text |:padding)
                                  |j $ %{} :Leaf (:at 1539795505817) (:by |root) (:text "|\"8px 16px")
                  |r $ %{} :Expr (:at 1540030714895) (:by |root)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1540030715613) (:by |root) (:text |div)
                      |L $ %{} :Expr (:at 1540030715816) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1540030716150) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1540030717335) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1540030719883) (:by |root) (:text |:style)
                              |j $ %{} :Leaf (:at 1540031099547) (:by |root) (:text |ui/row-middle)
                      |T $ %{} :Expr (:at 1539711419433) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539711419780) (:by |root) (:text |<>)
                          |j $ %{} :Leaf (:at 1540030700353) (:by |root) (:text "|\"Emotions")
                          |r $ %{} :Expr (:at 1540030619454) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1540030619831) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1540030620091) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1540030623427) (:by |root) (:text |:font-family)
                                  |j $ %{} :Leaf (:at 1540030632884) (:by |root) (:text |ui/font-fancy)
                              |r $ %{} :Expr (:at 1540030688703) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1540030690425) (:by |root) (:text |:font-size)
                                  |j $ %{} :Leaf (:at 1540030696359) (:by |root) (:text |24)
                      |b $ %{} :Expr (:at 1540030742949) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1540030743511) (:by |root) (:text |=<)
                          |f $ %{} :Leaf (:at 1540055354194) (:by |root) (:text |8)
                          |r $ %{} :Leaf (:at 1540030744802) (:by |root) (:text |nil)
                      |j $ %{} :Expr (:at 1540030733370) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1540055388280) (:by |root) (:text |a)
                          |j $ %{} :Expr (:at 1540030733370) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1540030733370) (:by |root) (:text |{})
                              |r $ %{} :Expr (:at 1540030733370) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1540030733370) (:by |root) (:text |:on-click)
                                  |j $ %{} :Expr (:at 1608701868526) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1608701869081) (:by |B1y7Rc-Zz) (:text |fn)
                                      |L $ %{} :Expr (:at 1608701869860) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1608701870371) (:by |B1y7Rc-Zz) (:text |e)
                                          |j $ %{} :Leaf (:at 1608701871821) (:by |B1y7Rc-Zz) (:text |d!)
                                      |T $ %{} :Expr (:at 1540030733370) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1608701868024) (:by |B1y7Rc-Zz) (:text |d!)
                                          |j $ %{} :Leaf (:at 1540030733370) (:by |root) (:text |:router/change)
                                          |r $ %{} :Expr (:at 1540030733370) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1540030733370) (:by |root) (:text |{})
                                              |j $ %{} :Expr (:at 1540030733370) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1540030733370) (:by |root) (:text |:name)
                                                  |j $ %{} :Leaf (:at 1540030733370) (:by |root) (:text |:edit-emotion)
                                              |r $ %{} :Expr (:at 1540030733370) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1540030733370) (:by |root) (:text |:data)
                                                  |j $ %{} :Leaf (:at 1540030733370) (:by |root) (:text |nil)
                              |v $ %{} :Expr (:at 1540055448268) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1540055449205) (:by |root) (:text |:style)
                                  |j $ %{} :Expr (:at 1540055451299) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1540055451652) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1540055451901) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1540055454399) (:by |root) (:text |:font-size)
                                          |j $ %{} :Leaf (:at 1540055455139) (:by |root) (:text |16)
                          |r $ %{} :Expr (:at 1540030733370) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1557335240411) (:by |B1y7Rc-Zz) (:text |comp-i)
                              |j $ %{} :Leaf (:at 1557335244783) (:by |B1y7Rc-Zz) (:text |:plus)
                              |r $ %{} :Leaf (:at 1557335247237) (:by |B1y7Rc-Zz) (:text |16)
                              |v $ %{} :Expr (:at 1557335247650) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1557335248001) (:by |B1y7Rc-Zz) (:text |hsl)
                                  |j $ %{} :Leaf (:at 1557335249228) (:by |B1y7Rc-Zz) (:text |200)
                                  |r $ %{} :Leaf (:at 1557335249550) (:by |B1y7Rc-Zz) (:text |80)
                                  |v $ %{} :Leaf (:at 1557335249800) (:by |B1y7Rc-Zz) (:text |80)
                  |t $ %{} :Expr (:at 1540055355247) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1540055356922) (:by |root) (:text |=<)
                      |j $ %{} :Leaf (:at 1540055358010) (:by |root) (:text |nil)
                      |r $ %{} :Leaf (:at 1540055358708) (:by |root) (:text |16)
                  |v $ %{} :Expr (:at 1539796277354) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539796278449) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1539796279867) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539796280270) (:by |root) (:text |{})
                      |r $ %{} :Expr (:at 1540028302206) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1540028307569) (:by |root) (:text |list->)
                          |j $ %{} :Expr (:at 1540028308550) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1540028308885) (:by |root) (:text |{})
                          |r $ %{} :Expr (:at 1540028309377) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629572162525) (:by |B1y7Rc-Zz) (:text |->)
                              |j $ %{} :Leaf (:at 1540028311485) (:by |root) (:text |emotions)
                              |n $ %{} :Expr (:at 1629573263991) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629573265138) (:by |B1y7Rc-Zz) (:text |.to-list)
                              |r $ %{} :Expr (:at 1540028312813) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629572166207) (:by |B1y7Rc-Zz) (:text |.map-pair)
                                  |j $ %{} :Expr (:at 1540028316552) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1540028316846) (:by |root) (:text |fn)
                                      |j $ %{} :Expr (:at 1540028317174) (:by |root)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1629572167684) (:by |B1y7Rc-Zz) (:text |k)
                                          |T $ %{} :Leaf (:at 1540028329643) (:by |root) (:text |emotion)
                                      |r $ %{} :Expr (:at 1629572168605) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1629572169798) (:by |B1y7Rc-Zz) (:text |[])
                                          |L $ %{} :Leaf (:at 1629572171531) (:by |B1y7Rc-Zz) (:text |k)
                                          |T $ %{} :Expr (:at 1540038533727) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1540038535221) (:by |root) (:text |comp-emotion)
                                              |j $ %{} :Leaf (:at 1540038563147) (:by |root) (:text |emotion)
                                              |n $ %{} :Leaf (:at 1575991073463) (:by |B1y7Rc-Zz) (:text |nil)
                                              |r $ %{} :Expr (:at 1540038565043) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1540038565043) (:by |root) (:text |fn)
                                                  |f $ %{} :Expr (:at 1540038574950) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1540038585491) (:by |root) (:text |e)
                                                      |j $ %{} :Leaf (:at 1540038586206) (:by |root) (:text |d!)
                                                  |r $ %{} :Expr (:at 1540038565043) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1540038565043) (:by |root) (:text |d!)
                                                      |j $ %{} :Leaf (:at 1540038565043) (:by |root) (:text |:router/change)
                                                      |r $ %{} :Expr (:at 1540038565043) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1540038565043) (:by |root) (:text |{})
                                                          |j $ %{} :Expr (:at 1540038565043) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1540038565043) (:by |root) (:text |:name)
                                                              |j $ %{} :Leaf (:at 1540038565043) (:by |root) (:text |:edit-emotion)
                                                          |r $ %{} :Expr (:at 1540038565043) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1540038565043) (:by |root) (:text |:data)
                                                              |j $ %{} :Expr (:at 1540038565043) (:by |root)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1540038565043) (:by |root) (:text |:id)
                                                                  |j $ %{} :Leaf (:at 1540038565043) (:by |root) (:text |emotion)
                  |x $ %{} :Expr (:at 1540030737937) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1540030739383) (:by |root) (:text |=<)
                      |j $ %{} :Leaf (:at 1540030739962) (:by |root) (:text |nil)
                      |r $ %{} :Leaf (:at 1540030740488) (:by |root) (:text |32)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541010211) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1539711562542) (:by |root) (:text |app.comp.emotions)
            |v $ %{} :Expr (:at 1500541010211) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1629571572370) (:by |B1y7Rc-Zz) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |hsl)
                |r $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1516547394445) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ui)
                |w $ %{} :Expr (:at 1523120376505) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1523120376949) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1523120379036) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1523120382218) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1523120382545) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1523120382719) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1523120383255) (:by |root) (:text |=<)
                |x $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
                        |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                        |u $ %{} :Leaf (:at 1540028365841) (:by |root) (:text |list->)
                        |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |span)
                        |x $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                        |y $ %{} :Leaf (:at 1539796302495) (:by |root) (:text |button)
                        |yT $ %{} :Leaf (:at 1540055437322) (:by |root) (:text |a)
                |y $ %{} :Expr (:at 1536470155450) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1536470155450) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1536470155450) (:by |root) (:text |app.config)
                    |r $ %{} :Leaf (:at 1536470161520) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1536470163188) (:by |root) (:text |config)
                |yj $ %{} :Expr (:at 1540055423190) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1540055423496) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1557335256114) (:by |B1y7Rc-Zz) (:text |feather.core)
                    |r $ %{} :Leaf (:at 1540055428580) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1540055428787) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1540055428956) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1557335252768) (:by |B1y7Rc-Zz) (:text |comp-i)
    |app.comp.history $ %{} :FileEntry
      :defs $ {}
        |comp-history $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-history)
              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |D $ %{} :Leaf (:at 1540056353693) (:by |root) (:text |states)
                  |T $ %{} :Leaf (:at 1540043193510) (:by |root) (:text |moods)
                  |j $ %{} :Leaf (:at 1540043195789) (:by |root) (:text |emotions)
              |v $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1539711418045) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539711418390) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1539795384916) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539795386614) (:by |root) (:text |:style)
                          |j $ %{} :Expr (:at 1547660570342) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1547660571896) (:by |B1y7Rc-Zz) (:text |merge)
                              |H $ %{} :Leaf (:at 1547660667695) (:by |B1y7Rc-Zz) (:text |ui/flex)
                              |L $ %{} :Leaf (:at 1547660573463) (:by |B1y7Rc-Zz) (:text |ui/column)
                              |T $ %{} :Expr (:at 1539795386879) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539795389475) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1547660753765) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1547660753765) (:by |B1y7Rc-Zz) (:text |:overflow)
                                      |j $ %{} :Leaf (:at 1547660753765) (:by |B1y7Rc-Zz) (:text |:auto)
                  |r $ %{} :Expr (:at 1540043523620) (:by |root)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1540043524256) (:by |root) (:text |div)
                      |L $ %{} :Expr (:at 1540043524480) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1540043524800) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1540043527473) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1540043528424) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at 1540043532070) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1540043529229) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1540043532810) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1540043533535) (:by |root) (:text |:margin)
                                      |j $ %{} :Leaf (:at 1540043537065) (:by |root) (:text "|\"8px 0")
                                  |r $ %{} :Expr (:at 1547660717221) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1547660717221) (:by |B1y7Rc-Zz) (:text |:padding)
                                      |j $ %{} :Leaf (:at 1547660717221) (:by |B1y7Rc-Zz) (:text "|\"8px 16px")
                      |T $ %{} :Expr (:at 1539711419433) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1540043484344) (:by |root) (:text |comp-title)
                          |j $ %{} :Leaf (:at 1540043487980) (:by |root) (:text "|\"History")
                  |v $ %{} :Expr (:at 1540043546636) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1540043549685) (:by |root) (:text |list->)
                      |j $ %{} :Expr (:at 1540043550861) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1540043551237) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1547660142573) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1547660144332) (:by |B1y7Rc-Zz) (:text |:style)
                              |T $ %{} :Expr (:at 1547660578445) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1547660580051) (:by |B1y7Rc-Zz) (:text |merge)
                                  |L $ %{} :Leaf (:at 1547660582037) (:by |B1y7Rc-Zz) (:text |ui/flex)
                                  |T $ %{} :Expr (:at 1547660144776) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1547660145340) (:by |B1y7Rc-Zz) (:text |{})
                                      |T $ %{} :Expr (:at 1547660135288) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1547660137508) (:by |B1y7Rc-Zz) (:text |:width)
                                          |j $ %{} :Leaf (:at 1547660141972) (:by |B1y7Rc-Zz) (:text "|\"100%")
                                      |r $ %{} :Expr (:at 1547660709645) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1547660709645) (:by |B1y7Rc-Zz) (:text |:padding)
                                          |j $ %{} :Leaf (:at 1547660709645) (:by |B1y7Rc-Zz) (:text "|\"8px 16px")
                      |r $ %{} :Expr (:at 1540043551669) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629571830279) (:by |B1y7Rc-Zz) (:text |->)
                          |j $ %{} :Leaf (:at 1540043602396) (:by |root) (:text |moods)
                          |l $ %{} :Expr (:at 1629573243798) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629573246978) (:by |B1y7Rc-Zz) (:text |.to-list)
                          |n $ %{} :Expr (:at 1540043614805) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629571831597) (:by |B1y7Rc-Zz) (:text |.sort-by)
                              |j $ %{} :Expr (:at 1540043622365) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1540043622799) (:by |root) (:text |fn)
                                  |j $ %{} :Expr (:at 1540043623380) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629571834391) (:by |B1y7Rc-Zz) (:text |pair)
                                  |r $ %{} :Expr (:at 1540043635271) (:by |root)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1629571838815) (:by |B1y7Rc-Zz) (:text |negate)
                                      |T $ %{} :Expr (:at 1540043629615) (:by |root)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1540043634624) (:by |root) (:text |:time)
                                          |T $ %{} :Expr (:at 1629571835940) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629571836567) (:by |B1y7Rc-Zz) (:text |last)
                                              |j $ %{} :Leaf (:at 1629571837211) (:by |B1y7Rc-Zz) (:text |pair)
                          |r $ %{} :Expr (:at 1540043556035) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629571844249) (:by |B1y7Rc-Zz) (:text |.map-pair)
                              |j $ %{} :Expr (:at 1540043569292) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1540043571750) (:by |root) (:text |fn)
                                  |j $ %{} :Expr (:at 1540043572486) (:by |root)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1629571846680) (:by |B1y7Rc-Zz) (:text |k)
                                      |T $ %{} :Leaf (:at 1540043604316) (:by |root) (:text |mood)
                                  |r $ %{} :Expr (:at 1629571847755) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1629571849251) (:by |B1y7Rc-Zz) (:text |[])
                                      |L $ %{} :Leaf (:at 1629571849619) (:by |B1y7Rc-Zz) (:text |k)
                                      |T $ %{} :Expr (:at 1540044409086) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1540044400625) (:by |root) (:text |comp-record)
                                          |b $ %{} :Expr (:at 1608702034413) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1608702035285) (:by |B1y7Rc-Zz) (:text |>>)
                                              |T $ %{} :Leaf (:at 1540056351165) (:by |root) (:text |states)
                                              |j $ %{} :Expr (:at 1608702036465) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1608702036465) (:by |B1y7Rc-Zz) (:text |:id)
                                                  |j $ %{} :Leaf (:at 1608702036465) (:by |B1y7Rc-Zz) (:text |mood)
                                          |j $ %{} :Leaf (:at 1540044413613) (:by |root) (:text |mood)
                                          |r $ %{} :Leaf (:at 1540044429310) (:by |root) (:text |emotions)
        |comp-record $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1540044400625) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1540044402286) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1540044400625) (:by |root) (:text |comp-record)
              |n $ %{} :Expr (:at 1540044403490) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1540056342688) (:by |root) (:text |states)
                  |T $ %{} :Leaf (:at 1540044417261) (:by |root) (:text |mood)
                  |j $ %{} :Leaf (:at 1540044426646) (:by |root) (:text |emotions)
              |r $ %{} :Expr (:at 1629571725641) (:by |B1y7Rc-Zz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1629571726673) (:by |B1y7Rc-Zz) (:text |let)
                  |L $ %{} :Expr (:at 1629571727246) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1629571727330) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629571733787) (:by |B1y7Rc-Zz) (:text |remove-plugin)
                          |j $ %{} :Expr (:at 1629571747885) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629571750480) (:by |B1y7Rc-Zz) (:text |use-confirm)
                              |j $ %{} :Expr (:at 1629571763562) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629571763981) (:by |B1y7Rc-Zz) (:text |>>)
                                  |j $ %{} :Leaf (:at 1629571766459) (:by |B1y7Rc-Zz) (:text |states)
                                  |r $ %{} :Leaf (:at 1629571769950) (:by |B1y7Rc-Zz) (:text |:remove)
                              |r $ %{} :Expr (:at 1629571774723) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629571774723) (:by |B1y7Rc-Zz) (:text |{})
                                  |r $ %{} :Expr (:at 1629571774723) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629571774723) (:by |B1y7Rc-Zz) (:text |:text)
                                      |j $ %{} :Leaf (:at 1629571774723) (:by |B1y7Rc-Zz) (:text "|\"Sure to delete?")
                  |T $ %{} :Expr (:at 1540044400625) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1540044400625) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1540044400625) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1540044400625) (:by |root) (:text |{})
                          |b $ %{} :Expr (:at 1547660300512) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1547660304934) (:by |B1y7Rc-Zz) (:text |:class-name)
                              |j $ %{} :Leaf (:at 1547660440165) (:by |B1y7Rc-Zz) (:text "|\"")
                          |j $ %{} :Expr (:at 1540044400625) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1540044400625) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at 1547914048360) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1547914050035) (:by |B1y7Rc-Zz) (:text |merge)
                                  |L $ %{} :Leaf (:at 1547914050919) (:by |B1y7Rc-Zz) (:text |ui/column)
                                  |T $ %{} :Expr (:at 1540044400625) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1540044400625) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1540044400625) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1540044400625) (:by |root) (:text |:border-bottom)
                                          |j $ %{} :Expr (:at 1540044400625) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629572179903) (:by |B1y7Rc-Zz) (:text |str)
                                              |j $ %{} :Leaf (:at 1629572186487) (:by |B1y7Rc-Zz) (:text "|\"1px solid ")
                                              |r $ %{} :Expr (:at 1629572187352) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629572187352) (:by |B1y7Rc-Zz) (:text |hsl)
                                                  |j $ %{} :Leaf (:at 1629572187352) (:by |B1y7Rc-Zz) (:text |0)
                                                  |r $ %{} :Leaf (:at 1629572187352) (:by |B1y7Rc-Zz) (:text |0)
                                                  |v $ %{} :Leaf (:at 1629572187352) (:by |B1y7Rc-Zz) (:text |90)
                                      |r $ %{} :Expr (:at 1540044400625) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1540044400625) (:by |root) (:text |:padding)
                                          |j $ %{} :Leaf (:at 1540044400625) (:by |root) (:text "|\"8px 0")
                      |r $ %{} :Expr (:at 1547914056132) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1547914056867) (:by |B1y7Rc-Zz) (:text |div)
                          |L $ %{} :Expr (:at 1547914057076) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1547914058012) (:by |B1y7Rc-Zz) (:text |{})
                              |j $ %{} :Expr (:at 1547914059648) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1547914060842) (:by |B1y7Rc-Zz) (:text |:style)
                                  |j $ %{} :Leaf (:at 1547914067893) (:by |B1y7Rc-Zz) (:text |ui/row-parted)
                          |T $ %{} :Expr (:at 1547914074008) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1547914077658) (:by |B1y7Rc-Zz) (:text |div)
                              |L $ %{} :Expr (:at 1547914078050) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1547914078393) (:by |B1y7Rc-Zz) (:text |{})
                                  |j $ %{} :Expr (:at 1547914078976) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1547914079715) (:by |B1y7Rc-Zz) (:text |:style)
                                      |j $ %{} :Leaf (:at 1547914096748) (:by |B1y7Rc-Zz) (:text |ui/row-middle)
                              |P $ %{} :Expr (:at 1547914085740) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1547914085740) (:by |B1y7Rc-Zz) (:text |comp-emotion)
                                  |j $ %{} :Expr (:at 1547914085740) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1547914085740) (:by |B1y7Rc-Zz) (:text |get)
                                      |j $ %{} :Leaf (:at 1547914085740) (:by |B1y7Rc-Zz) (:text |emotions)
                                      |r $ %{} :Expr (:at 1547914085740) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1547914085740) (:by |B1y7Rc-Zz) (:text |:emotion-id)
                                          |j $ %{} :Leaf (:at 1547914085740) (:by |B1y7Rc-Zz) (:text |mood)
                                  |n $ %{} :Leaf (:at 1575991087971) (:by |B1y7Rc-Zz) (:text |nil)
                                  |r $ %{} :Leaf (:at 1547914085740) (:by |B1y7Rc-Zz) (:text |nil)
                              |T $ %{} :Expr (:at 1540044492405) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1540044492405) (:by |root) (:text |comp-hint)
                                  |j $ %{} :Expr (:at 1540044492405) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1540044492405) (:by |root) (:text |->)
                                      |j $ %{} :Expr (:at 1540044492405) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1540044492405) (:by |root) (:text |dayjs)
                                          |j $ %{} :Expr (:at 1540044492405) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1540044492405) (:by |root) (:text |:time)
                                              |j $ %{} :Leaf (:at 1540044492405) (:by |root) (:text |mood)
                                      |r $ %{} :Expr (:at 1540044492405) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1700501421743) (:by |B1y7Rc-Zz) (:text |.!format)
                                          |j $ %{} :Leaf (:at 1540044492405) (:by |root) (:text "|\"MM-DD HH:mm")
                          |b $ %{} :Expr (:at 1629571781267) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629571782487) (:by |B1y7Rc-Zz) (:text |span)
                              |j $ %{} :Expr (:at 1629571783155) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629571783531) (:by |B1y7Rc-Zz) (:text |{})
                                  |j $ %{} :Expr (:at 1629571785860) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629571789254) (:by |B1y7Rc-Zz) (:text |:on-click)
                                      |j $ %{} :Expr (:at 1629571789561) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629571789906) (:by |B1y7Rc-Zz) (:text |fn)
                                          |j $ %{} :Expr (:at 1629571790137) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629571790587) (:by |B1y7Rc-Zz) (:text |e)
                                              |j $ %{} :Leaf (:at 1629571791267) (:by |B1y7Rc-Zz) (:text |d!)
                                          |r $ %{} :Expr (:at 1629571792265) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629571793220) (:by |B1y7Rc-Zz) (:text |.show)
                                              |j $ %{} :Leaf (:at 1629571798923) (:by |B1y7Rc-Zz) (:text |remove-plugin)
                                              |r $ %{} :Leaf (:at 1629571800045) (:by |B1y7Rc-Zz) (:text |d!)
                                              |v $ %{} :Expr (:at 1629571800722) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629571801553) (:by |B1y7Rc-Zz) (:text |fn)
                                                  |b $ %{} :Expr (:at 1629571815875) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                  |j $ %{} :Expr (:at 1629571805620) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1629571805620) (:by |B1y7Rc-Zz) (:text |d!)
                                                      |j $ %{} :Leaf (:at 1629571805620) (:by |B1y7Rc-Zz) (:text |:mood/remove-one)
                                                      |r $ %{} :Expr (:at 1629571805620) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1629571805620) (:by |B1y7Rc-Zz) (:text |:id)
                                                          |j $ %{} :Leaf (:at 1629571805620) (:by |B1y7Rc-Zz) (:text |mood)
                              |r $ %{} :Expr (:at 1629571784551) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629571784551) (:by |B1y7Rc-Zz) (:text |comp-i)
                                  |j $ %{} :Leaf (:at 1629571784551) (:by |B1y7Rc-Zz) (:text |:x)
                                  |r $ %{} :Leaf (:at 1629571784551) (:by |B1y7Rc-Zz) (:text |14)
                                  |v $ %{} :Expr (:at 1629571784551) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629571784551) (:by |B1y7Rc-Zz) (:text |hsl)
                                      |j $ %{} :Leaf (:at 1629571784551) (:by |B1y7Rc-Zz) (:text |0)
                                      |r $ %{} :Leaf (:at 1629571784551) (:by |B1y7Rc-Zz) (:text |0)
                                      |v $ %{} :Leaf (:at 1629571784551) (:by |B1y7Rc-Zz) (:text |80)
                      |v $ %{} :Expr (:at 1547660253880) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1547660349522) (:by |B1y7Rc-Zz) (:text |div)
                          |T $ %{} :Expr (:at 1547660260885) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1547660261444) (:by |B1y7Rc-Zz) (:text |{})
                              |T $ %{} :Expr (:at 1540044481676) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1547660260487) (:by |B1y7Rc-Zz) (:text |:inner-text)
                                  |j $ %{} :Expr (:at 1540044481676) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1540044481676) (:by |root) (:text |:text)
                                      |j $ %{} :Leaf (:at 1540044481676) (:by |root) (:text |mood)
                              |j $ %{} :Expr (:at 1547660262137) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1547660263105) (:by |B1y7Rc-Zz) (:text |:style)
                                  |j $ %{} :Expr (:at 1547660263332) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1547660267547) (:by |B1y7Rc-Zz) (:text |merge)
                                      |j $ %{} :Leaf (:at 1547660269975) (:by |B1y7Rc-Zz) (:text |ui/flex)
                                      |r $ %{} :Expr (:at 1547660270577) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1547660270927) (:by |B1y7Rc-Zz) (:text |{})
                                          |j $ %{} :Expr (:at 1547660358540) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1547660361900) (:by |B1y7Rc-Zz) (:text |:word-break)
                                              |j $ %{} :Leaf (:at 1547660365113) (:by |B1y7Rc-Zz) (:text |:break-all)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541010211) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1539796030071) (:by |root) (:text |app.comp.history)
            |v $ %{} :Expr (:at 1500541010211) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1629571823011) (:by |B1y7Rc-Zz) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |hsl)
                |r $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1516547394445) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ui)
                |w $ %{} :Expr (:at 1523120376505) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1523120376949) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1523120379036) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1523120382218) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1523120382545) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1523120382719) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1523120383255) (:by |root) (:text |=<)
                |x $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
                        |n $ %{} :Leaf (:at 1608702045562) (:by |B1y7Rc-Zz) (:text |>>)
                        |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                        |u $ %{} :Leaf (:at 1540043734966) (:by |root) (:text |list->)
                        |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |span)
                        |x $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                        |y $ %{} :Leaf (:at 1539795435021) (:by |root) (:text |a)
                |y $ %{} :Expr (:at 1536470155450) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1536470155450) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1536470155450) (:by |root) (:text |app.config)
                    |r $ %{} :Leaf (:at 1536470161520) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1536470163188) (:by |root) (:text |config)
                |yT $ %{} :Expr (:at 1540043480251) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1540043480251) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1540043480251) (:by |root) (:text |app.comp.kit)
                    |r $ %{} :Leaf (:at 1540043480251) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1540043480251) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1540043480251) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1540043480251) (:by |root) (:text |comp-title)
                |yr $ %{} :Expr (:at 1540043727039) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1540043727039) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1540043727039) (:by |root) (:text |app.comp.emotions)
                    |r $ %{} :Leaf (:at 1540043727039) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1540043727039) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1540043727039) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1540043727039) (:by |root) (:text |comp-emotion)
                |yv $ %{} :Expr (:at 1540043766633) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1540043766990) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1540043768453) (:by |root) (:text "|\"dayjs")
                    |r $ %{} :Leaf (:at 1629571761431) (:by |B1y7Rc-Zz) (:text |:default)
                    |v $ %{} :Leaf (:at 1540043771502) (:by |root) (:text |dayjs)
                |yx $ %{} :Expr (:at 1540043949874) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1540043949874) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1540043949874) (:by |root) (:text |app.comp.kit)
                    |r $ %{} :Leaf (:at 1540043949874) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1540043949874) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1540043949874) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1540043949874) (:by |root) (:text |comp-hint)
                |yy $ %{} :Expr (:at 1540056173991) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1540056174274) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1557335086604) (:by |B1y7Rc-Zz) (:text |feather.core)
                    |r $ %{} :Leaf (:at 1540056179840) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1540056180057) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1540056180283) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1540056182384) (:by |root) (:text |comp-icon)
                        |r $ %{} :Leaf (:at 1557335091212) (:by |B1y7Rc-Zz) (:text |comp-i)
                |yyT $ %{} :Expr (:at 1540056323731) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1540056324070) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1608701510182) (:by |B1y7Rc-Zz) (:text |respo-alerts.core)
                    |r $ %{} :Leaf (:at 1540056332966) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1540056333160) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1540056334165) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1629571755875) (:by |B1y7Rc-Zz) (:text |use-confirm)
    |app.comp.kit $ %{} :FileEntry
      :defs $ {}
        |comp-field $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1540055836797) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1540055840850) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1540055836797) (:by |root) (:text |comp-field)
              |r $ %{} :Expr (:at 1540055836797) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1540055842860) (:by |root) (:text |label)
                  |j $ %{} :Leaf (:at 1540055845367) (:by |root) (:text |child)
              |v $ %{} :Expr (:at 1540055845874) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1540055846338) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1540055846595) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1540055846920) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1540055849949) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1540055850643) (:by |root) (:text |:style)
                          |j $ %{} :Expr (:at 1540056031652) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1540056032664) (:by |root) (:text |merge)
                              |T $ %{} :Leaf (:at 1547915796291) (:by |B1y7Rc-Zz) (:text |ui/row)
                              |j $ %{} :Expr (:at 1540056033485) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1540056033893) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1540056034749) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1540056039195) (:by |root) (:text |:margin-bottom)
                                      |j $ %{} :Leaf (:at 1540056040466) (:by |root) (:text |16)
                  |r $ %{} :Expr (:at 1540055856901) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1540055866495) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1540055869239) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1540055867796) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1540055961219) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1540055964430) (:by |root) (:text |:style)
                              |T $ %{} :Expr (:at 1540055970053) (:by |root)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1540055970625) (:by |root) (:text |{})
                                  |T $ %{} :Expr (:at 1540055869761) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1540055873251) (:by |root) (:text |:width)
                                      |j $ %{} :Leaf (:at 1540055977851) (:by |root) (:text |64)
                      |r $ %{} :Expr (:at 1540055882201) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1540055882569) (:by |root) (:text |<>)
                          |j $ %{} :Leaf (:at 1540055884070) (:by |root) (:text |label)
                  |v $ %{} :Leaf (:at 1540055879623) (:by |root) (:text |child)
        |comp-hint $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1540043900575) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1540043915730) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1540043900575) (:by |root) (:text |comp-hint)
              |r $ %{} :Expr (:at 1540043900575) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1540043918299) (:by |root) (:text |text)
              |v $ %{} :Expr (:at 1540043928147) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1540043928907) (:by |root) (:text |<>)
                  |j $ %{} :Leaf (:at 1540043930683) (:by |root) (:text |text)
                  |r $ %{} :Expr (:at 1540043931182) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1540043931182) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1540043931182) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1540043931182) (:by |root) (:text |:color)
                          |j $ %{} :Expr (:at 1540043931182) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1540043931182) (:by |root) (:text |hsl)
                              |j $ %{} :Leaf (:at 1540043931182) (:by |root) (:text |0)
                              |r $ %{} :Leaf (:at 1540043931182) (:by |root) (:text |0)
                              |v $ %{} :Leaf (:at 1540043931182) (:by |root) (:text |80)
        |comp-title $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-title)
              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1540043447838) (:by |root) (:text |text)
              |v $ %{} :Expr (:at 1540043451521) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1540043452453) (:by |root) (:text |<>)
                  |j $ %{} :Leaf (:at 1540043454332) (:by |root) (:text |text)
                  |r $ %{} :Expr (:at 1540043454565) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1540043454905) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1540043455151) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1540043459882) (:by |root) (:text |:font-family)
                          |j $ %{} :Leaf (:at 1540043465078) (:by |root) (:text |ui/font-fancy)
                      |r $ %{} :Expr (:at 1540043465690) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1540043467233) (:by |root) (:text |:font-size)
                          |j $ %{} :Leaf (:at 1540043469433) (:by |root) (:text |24)
                      |v $ %{} :Expr (:at 1540044100188) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1540044101609) (:by |root) (:text |:color)
                          |j $ %{} :Expr (:at 1540044102399) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1540044102910) (:by |root) (:text |hsl)
                              |j $ %{} :Leaf (:at 1540044103589) (:by |root) (:text |0)
                              |r $ %{} :Leaf (:at 1540044103880) (:by |root) (:text |0)
                              |v $ %{} :Leaf (:at 1540044106987) (:by |root) (:text |60)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541010211) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |app.comp.kit)
            |v $ %{} :Expr (:at 1500541010211) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1629571383125) (:by |B1y7Rc-Zz) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |hsl)
                |r $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |app.schema)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |schema)
                |v $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1516547419785) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ui)
                |y $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
                        |n $ %{} :Leaf (:at 1524070875244) (:by |root) (:text |list->)
                        |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                        |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |span)
                        |x $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                        |y $ %{} :Leaf (:at 1529343437918) (:by |root) (:text |button)
                |yT $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |=<)
                |yj $ %{} :Expr (:at 1527788936196) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1527788936499) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1527788937835) (:by |root) (:text |app.config)
                    |r $ %{} :Leaf (:at 1527788938747) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1527788939786) (:by |root) (:text |config)
    |app.comp.login $ %{} :FileEntry
      :defs $ {}
        |comp-login $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |defcomp)
              |j $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |comp-login)
              |r $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |states)
              |v $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |let)
                  |j $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |cursor)
                          |j $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:cursor)
                              |j $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |states)
                      |j $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |state)
                          |j $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |or)
                              |j $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:data)
                                  |j $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |states)
                              |r $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |initial-state)
                  |r $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |div)
                      |j $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |{})
                          |j $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:style)
                              |j $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |merge)
                                  |j $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |ui/flex)
                                  |r $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |ui/center)
                      |r $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |div)
                          |j $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |{})
                          |r $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |div)
                              |j $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |{})
                                  |j $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:style)
                                      |j $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |{})
                              |r $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |div)
                                  |j $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |{})
                                  |r $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |input)
                                      |j $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |{})
                                          |j $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:placeholder)
                                              |j $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text "|\"Username")
                                          |r $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:value)
                                              |j $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:username)
                                                  |j $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |state)
                                          |v $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:style)
                                              |j $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |ui/input)
                                          |x $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:on-input)
                                              |j $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |fn)
                                                  |j $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |e)
                                                      |j $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |d!)
                                                  |r $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |d!)
                                                      |j $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |cursor)
                                                      |r $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |assoc)
                                                          |j $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |state)
                                                          |r $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:username)
                                                          |v $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:value)
                                                              |j $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |e)
                              |v $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |=<)
                                  |j $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |nil)
                                  |r $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |8)
                              |x $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |div)
                                  |j $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |{})
                                  |r $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |input)
                                      |j $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |{})
                                          |j $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:placeholder)
                                              |j $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text "|\"Password")
                                          |r $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:value)
                                              |j $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:password)
                                                  |j $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |state)
                                          |v $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:style)
                                              |j $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |ui/input)
                                          |x $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:on-input)
                                              |j $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |fn)
                                                  |j $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |e)
                                                      |j $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |d!)
                                                  |r $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |d!)
                                                      |j $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |cursor)
                                                      |r $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |assoc)
                                                          |j $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |state)
                                                          |r $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:password)
                                                          |v $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:value)
                                                              |j $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |e)
                          |v $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |=<)
                              |j $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |nil)
                              |r $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |8)
                          |x $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |div)
                              |j $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |{})
                                  |j $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:style)
                                      |j $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |{})
                                          |j $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:text-align)
                                              |j $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:right)
                              |r $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |span)
                                  |j $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |{})
                                      |j $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:inner-text)
                                          |j $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text "|\"Sign up")
                                      |r $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:style)
                                          |j $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |merge)
                                              |j $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |ui/link)
                                      |v $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:on-click)
                                          |j $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |on-submit)
                                              |j $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:username)
                                                  |j $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |state)
                                              |r $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:password)
                                                  |j $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |state)
                                              |v $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |true)
                              |v $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |=<)
                                  |j $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |8)
                                  |r $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |nil)
                              |x $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |span)
                                  |j $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |{})
                                      |j $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:inner-text)
                                          |j $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text "|\"Log in")
                                      |r $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:style)
                                          |j $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |merge)
                                              |j $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |ui/link)
                                      |v $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:on-click)
                                          |j $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |on-submit)
                                              |j $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:username)
                                                  |j $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |state)
                                              |r $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:password)
                                                  |j $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |state)
                                              |v $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |false)
        |initial-state $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |def)
              |j $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |initial-state)
              |r $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |{})
                  |j $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:username)
                      |j $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text "|\"")
                  |r $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:password)
                      |j $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text "|\"")
        |on-submit $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |on-submit)
              |r $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |username)
                  |j $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |password)
                  |r $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |signup?)
              |v $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |fn)
                  |j $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |e)
                      |j $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |dispatch!)
                  |r $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |dispatch!)
                      |j $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |if)
                          |j $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |signup?)
                          |r $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:user/sign-up)
                          |v $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:user/log-in)
                      |r $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |[])
                          |j $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |username)
                          |r $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |password)
                  |v $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1700501560267) (:by |B1y7Rc-Zz) (:text |js/localStorage.setItem)
                      |r $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:storage-key)
                          |j $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |config/site)
                      |v $ %{} :Expr (:at 1629573089244) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1629573092023) (:by |B1y7Rc-Zz) (:text |format-cirru-edn)
                          |T $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |[])
                              |j $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |username)
                              |r $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |password)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
          :data $ {}
            |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |ns)
            |j $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |app.comp.login)
            |r $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
              :data $ {}
                |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:require)
                |j $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:refer)
                    |v $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |[])
                        |j $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |defcomp)
                        |r $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |<>)
                        |v $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |div)
                        |x $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |input)
                        |y $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |button)
                        |yT $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |span)
                |r $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:refer)
                    |v $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |[])
                        |j $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |=<)
                |v $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |respo.comp.inspect)
                    |r $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:refer)
                    |v $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |[])
                        |j $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |comp-inspect)
                |x $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:as)
                    |v $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |ui)
                |y $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |app.schema)
                    |r $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:as)
                    |v $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |schema)
                |yT $ %{} :Expr (:at 1608702183983) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |app.config)
                    |r $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |:as)
                    |v $ %{} :Leaf (:at 1608702183983) (:by |B1y7Rc-Zz) (:text |config)
    |app.comp.navigation $ %{} :FileEntry
      :defs $ {}
        |comp-navigation $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629572921677) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |defcomp)
              |j $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |comp-navigation)
              |r $ %{} :Expr (:at 1629572921677) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |logged-in?)
                  |j $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |count-members)
              |v $ %{} :Expr (:at 1629572921677) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |div)
                  |j $ %{} :Expr (:at 1629572921677) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |{})
                      |j $ %{} :Expr (:at 1629572921677) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |:style)
                          |j $ %{} :Expr (:at 1629572921677) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |merge)
                              |j $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |ui/row-center)
                              |r $ %{} :Expr (:at 1629572921677) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |{})
                                  |j $ %{} :Expr (:at 1629572921677) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |:height)
                                      |j $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |48)
                                  |r $ %{} :Expr (:at 1629572921677) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |:justify-content)
                                      |j $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |:space-between)
                                  |v $ %{} :Expr (:at 1629572921677) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |:padding)
                                      |j $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text "|\"0 16px")
                                  |x $ %{} :Expr (:at 1629572921677) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |:font-size)
                                      |j $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |16)
                                  |y $ %{} :Expr (:at 1629572921677) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |:border-bottom)
                                      |j $ %{} :Expr (:at 1629572921677) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |str)
                                          |j $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text "|\"1px solid ")
                                          |r $ %{} :Expr (:at 1629572921677) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |hsl)
                                              |j $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |0)
                                              |r $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |0)
                                              |v $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |0)
                                              |x $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |0.1)
                                  |yT $ %{} :Expr (:at 1629572921677) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |:font-family)
                                      |j $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |ui/font-fancy)
                  |r $ %{} :Expr (:at 1629572921677) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |div)
                      |j $ %{} :Expr (:at 1629572921677) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |{})
                          |j $ %{} :Expr (:at 1629572921677) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |:on-click)
                              |j $ %{} :Expr (:at 1629572921677) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |fn)
                                  |j $ %{} :Expr (:at 1629572921677) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |e)
                                      |j $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |d!)
                                  |r $ %{} :Expr (:at 1629572921677) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |d!)
                                      |j $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |:router/change)
                                      |r $ %{} :Expr (:at 1629572921677) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |{})
                                          |j $ %{} :Expr (:at 1629572921677) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |:name)
                                              |j $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |:home)
                          |r $ %{} :Expr (:at 1629572921677) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |:style)
                              |j $ %{} :Expr (:at 1629572921677) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |{})
                                  |j $ %{} :Expr (:at 1629572921677) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |:cursor)
                                      |j $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |:pointer)
                      |r $ %{} :Expr (:at 1629572921677) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |<>)
                          |j $ %{} :Expr (:at 1629572921677) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |:title)
                              |j $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |config/site)
                          |r $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |nil)
                  |v $ %{} :Expr (:at 1629572921677) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |div)
                      |j $ %{} :Expr (:at 1629572921677) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |{})
                          |j $ %{} :Expr (:at 1629572921677) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |:style)
                              |j $ %{} :Expr (:at 1629572921677) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |{})
                                  |j $ %{} :Expr (:at 1629572921677) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |:cursor)
                                      |j $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text "|\"pointer")
                          |r $ %{} :Expr (:at 1629572921677) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |:on-click)
                              |j $ %{} :Expr (:at 1629572921677) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |fn)
                                  |j $ %{} :Expr (:at 1629572921677) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |e)
                                      |j $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |d!)
                                  |r $ %{} :Expr (:at 1629572921677) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |d!)
                                      |j $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |:router/change)
                                      |r $ %{} :Expr (:at 1629572921677) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |{})
                                          |j $ %{} :Expr (:at 1629572921677) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |:name)
                                              |j $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |:profile)
                      |r $ %{} :Expr (:at 1629572921677) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |<>)
                          |j $ %{} :Expr (:at 1629572921677) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |if)
                              |j $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |logged-in?)
                              |r $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text "|\"Me")
                              |v $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text "|\"Guest")
                      |v $ %{} :Expr (:at 1629572921677) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |=<)
                          |j $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |8)
                          |r $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |nil)
                      |x $ %{} :Expr (:at 1629572921677) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |<>)
                          |j $ %{} :Leaf (:at 1629572921677) (:by |B1y7Rc-Zz) (:text |count-members)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541010211) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |app.comp.navigation)
            |v $ %{} :Expr (:at 1500541010211) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1629573037570) (:by |B1y7Rc-Zz) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |hsl)
                |r $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1516547394445) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ui)
                |w $ %{} :Expr (:at 1523120376505) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1523120376949) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1523120379036) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1523120382218) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1523120382545) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1523120382719) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1523120383255) (:by |root) (:text |=<)
                |x $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
                        |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                        |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |span)
                        |x $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                |y $ %{} :Expr (:at 1536470155450) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1536470155450) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1536470155450) (:by |root) (:text |app.config)
                    |r $ %{} :Leaf (:at 1536470161520) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1536470163188) (:by |root) (:text |config)
    |app.comp.profile $ %{} :FileEntry
      :defs $ {}
        |comp-profile $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-profile)
              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |user)
                  |j $ %{} :Leaf (:at 1524070827396) (:by |root) (:text |members)
              |v $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:style)
                          |j $ %{} :Expr (:at 1519314673230) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1519314674218) (:by |root) (:text |merge)
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ui/flex)
                              |j $ %{} :Expr (:at 1519314674864) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1519314675207) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1519314675496) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1519314677667) (:by |root) (:text |:padding)
                                      |j $ %{} :Leaf (:at 1519314678341) (:by |root) (:text |16)
                  |r $ %{} :Expr (:at 1524070753023) (:by |root)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1524070753742) (:by |root) (:text |div)
                      |L $ %{} :Expr (:at 1524070753977) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1524070754337) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1524070764197) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1524070764960) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at 1524070765167) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1524070765499) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1524070765707) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1524070768913) (:by |root) (:text |:font-family)
                                      |j $ %{} :Leaf (:at 1524070771373) (:by |root) (:text |ui/font-fancy)
                                  |r $ %{} :Expr (:at 1524070772863) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1524070774437) (:by |root) (:text |:font-size)
                                      |j $ %{} :Leaf (:at 1524070786249) (:by |root) (:text |32)
                                  |v $ %{} :Expr (:at 1524070778614) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1524070781489) (:by |root) (:text |:font-weight)
                                      |j $ %{} :Leaf (:at 1524070782585) (:by |root) (:text |100)
                      |T $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                          |r $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |str)
                              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text "||Hello! ")
                              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:name)
                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |user)
                  |t $ %{} :Expr (:at 1524070801446) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1524070803450) (:by |root) (:text |=<)
                      |j $ %{} :Leaf (:at 1524070804372) (:by |root) (:text |nil)
                      |r $ %{} :Leaf (:at 1524070805591) (:by |root) (:text |16)
                  |u $ %{} :Expr (:at 1524070806586) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1524070807601) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1524070807801) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1524070808172) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1524070882494) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1524070886268) (:by |root) (:text |:style)
                              |j $ %{} :Leaf (:at 1524070890021) (:by |root) (:text |ui/row)
                      |r $ %{} :Expr (:at 1524070808914) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1524070810352) (:by |root) (:text |<>)
                          |j $ %{} :Leaf (:at 1524070906296) (:by |root) (:text "|\"Members:")
                      |t $ %{} :Expr (:at 1524070907095) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1524070907693) (:by |root) (:text |=<)
                          |j $ %{} :Leaf (:at 1524071002316) (:by |root) (:text |8)
                          |r $ %{} :Leaf (:at 1524070908955) (:by |root) (:text |nil)
                      |v $ %{} :Expr (:at 1524070813822) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1524070815507) (:by |root) (:text |list->)
                          |j $ %{} :Expr (:at 1524070815884) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1524070816388) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1524070882494) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1524070886268) (:by |root) (:text |:style)
                                  |j $ %{} :Leaf (:at 1524070890021) (:by |root) (:text |ui/row)
                          |r $ %{} :Expr (:at 1524070817648) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629571860007) (:by |B1y7Rc-Zz) (:text |->)
                              |j $ %{} :Leaf (:at 1524070823331) (:by |root) (:text |members)
                              |n $ %{} :Expr (:at 1629573507502) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629573572580) (:by |B1y7Rc-Zz) (:text |.to-list)
                              |r $ %{} :Expr (:at 1524070849620) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629571862880) (:by |B1y7Rc-Zz) (:text |.map-pair)
                                  |j $ %{} :Expr (:at 1524070854323) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1524070854836) (:by |root) (:text |fn)
                                      |j $ %{} :Expr (:at 1524070855268) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1524070857242) (:by |root) (:text |k)
                                          |j $ %{} :Leaf (:at 1524070860935) (:by |root) (:text |username)
                                      |r $ %{} :Expr (:at 1524070862172) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1524070862624) (:by |root) (:text |[])
                                          |j $ %{} :Leaf (:at 1524070863576) (:by |root) (:text |k)
                                          |r $ %{} :Expr (:at 1524070863870) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1524070935603) (:by |root) (:text |div)
                                              |b $ %{} :Expr (:at 1524070935915) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1524070936321) (:by |root) (:text |{})
                                                  |j $ %{} :Expr (:at 1524070941378) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1524070945311) (:by |root) (:text |:style)
                                                      |j $ %{} :Expr (:at 1524070945552) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1524070951279) (:by |root) (:text |{})
                                                          |j $ %{} :Expr (:at 1524070952343) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1524070953379) (:by |root) (:text |:padding)
                                                              |j $ %{} :Leaf (:at 1524070959440) (:by |root) (:text "|\"0 8px")
                                                          |r $ %{} :Expr (:at 1524070965836) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1524070967712) (:by |root) (:text |:border)
                                                              |j $ %{} :Expr (:at 1524070968157) (:by |root)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1524070968711) (:by |root) (:text |str)
                                                                  |j $ %{} :Leaf (:at 1524070971580) (:by |root) (:text "|\"1px solid ")
                                                                  |r $ %{} :Expr (:at 1524070972774) (:by |root)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1524070973331) (:by |root) (:text |hsl)
                                                                      |j $ %{} :Leaf (:at 1524070973606) (:by |root) (:text |0)
                                                                      |r $ %{} :Leaf (:at 1524070973793) (:by |root) (:text |0)
                                                                      |v $ %{} :Leaf (:at 1524071006553) (:by |root) (:text |80)
                                                          |v $ %{} :Expr (:at 1524070980253) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1524070984655) (:by |root) (:text |:border-radius)
                                                              |j $ %{} :Leaf (:at 1524070992141) (:by |root) (:text "|\"16px")
                                                          |x $ %{} :Expr (:at 1524070994599) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1524070996433) (:by |root) (:text |:margin)
                                                              |j $ %{} :Leaf (:at 1524071016063) (:by |root) (:text "|\"0 4px")
                                              |j $ %{} :Expr (:at 1524070937486) (:by |root)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1524070939626) (:by |root) (:text |<>)
                                                  |T $ %{} :Leaf (:at 1524070866665) (:by |root) (:text |username)
                  |wT $ %{} :Expr (:at 1537033605190) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1537033605685) (:by |root) (:text |=<)
                      |j $ %{} :Leaf (:at 1537033606942) (:by |root) (:text |nil)
                      |r $ %{} :Leaf (:at 1537033612302) (:by |root) (:text |48)
                  |x $ %{} :Expr (:at 1524070749088) (:by |root)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1524070749878) (:by |root) (:text |div)
                      |L $ %{} :Expr (:at 1524070750119) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1524070750478) (:by |root) (:text |{})
                      |P $ %{} :Expr (:at 1537465541202) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1537465541202) (:by |root) (:text |button)
                          |j $ %{} :Expr (:at 1537465541202) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1537465541202) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1537465541202) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1537465541202) (:by |root) (:text |:style)
                                  |j $ %{} :Expr (:at 1537465541202) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1537465541202) (:by |root) (:text |merge)
                                      |j $ %{} :Leaf (:at 1537465541202) (:by |root) (:text |ui/button)
                              |r $ %{} :Expr (:at 1537465541202) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1537465541202) (:by |root) (:text |:on-click)
                                  |j $ %{} :Expr (:at 1537465541202) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1537465541202) (:by |root) (:text |fn)
                                      |j $ %{} :Expr (:at 1537465541202) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1537465541202) (:by |root) (:text |e)
                                          |j $ %{} :Leaf (:at 1537465551831) (:by |root) (:text |d!)
                                          |r $ %{} :Leaf (:at 1537465549339) (:by |root) (:text |m!)
                                      |r $ %{} :Expr (:at 1537465553036) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1537465558372) (:by |root) (:text |.replace)
                                          |j $ %{} :Leaf (:at 1537465560194) (:by |root) (:text |js/location)
                                          |r $ %{} :Expr (:at 1537465561937) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1537465565778) (:by |root) (:text |str)
                                              |j $ %{} :Leaf (:at 1537465655496) (:by |root) (:text |js/location.origin)
                                              |r $ %{} :Leaf (:at 1537465587485) (:by |root) (:text "|\"?time=")
                                              |v $ %{} :Expr (:at 1537465588230) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1537465588917) (:by |root) (:text |.now)
                                                  |j $ %{} :Leaf (:at 1537465590598) (:by |root) (:text |js/Date)
                          |r $ %{} :Expr (:at 1537465541202) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1537465541202) (:by |root) (:text |<>)
                              |j $ %{} :Leaf (:at 1537465598875) (:by |root) (:text "|\"Refresh")
                      |R $ %{} :Expr (:at 1537465599989) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1537465600568) (:by |root) (:text |=<)
                          |j $ %{} :Leaf (:at 1537465601614) (:by |root) (:text |16)
                          |r $ %{} :Leaf (:at 1537465602193) (:by |root) (:text |nil)
                      |T $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1529343433304) (:by |root) (:text |button)
                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:style)
                                  |b $ %{} :Expr (:at 1529343525553) (:by |root)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1529343526544) (:by |root) (:text |merge)
                                      |T $ %{} :Leaf (:at 1529343448522) (:by |root) (:text |ui/button)
                                      |j $ %{} :Expr (:at 1529343455186) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1529343455629) (:by |root) (:text |{})
                                          |j $ %{} :Expr (:at 1529343457115) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1529343457898) (:by |root) (:text |:color)
                                              |j $ %{} :Leaf (:at 1529343458855) (:by |root) (:text |:red)
                                          |r $ %{} :Expr (:at 1529343459158) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1529343463728) (:by |root) (:text |:border-color)
                                              |j $ %{} :Leaf (:at 1529343464475) (:by |root) (:text |:red)
                              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1514302350497) (:by |root) (:text |:on-click)
                                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1521951456454) (:by |root) (:text |fn)
                                      |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |e)
                                          |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |dispatch!)
                                      |v $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |dispatch!)
                                          |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:user/log-out)
                                          |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |nil)
                                      |x $ %{} :Expr (:at 1537033547091) (:by |root)
                                        :data $ {}
                                          |j $ %{} :Leaf (:at 1700501532053) (:by |B1y7Rc-Zz) (:text |js/localStorage.removeItem)
                                          |r $ %{} :Expr (:at 1537033547091) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1537033547091) (:by |root) (:text |:storage-key)
                                              |j $ %{} :Leaf (:at 1537033547091) (:by |root) (:text |config/site)
                          |r $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                              |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text "||Log out")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541010211) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |app.comp.profile)
            |v $ %{} :Expr (:at 1500541010211) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1629571872856) (:by |B1y7Rc-Zz) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |hsl)
                |r $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |app.schema)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |schema)
                |v $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1516547419785) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ui)
                |y $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
                        |n $ %{} :Leaf (:at 1524070875244) (:by |root) (:text |list->)
                        |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                        |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |span)
                        |x $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                        |y $ %{} :Leaf (:at 1529343437918) (:by |root) (:text |button)
                |yT $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |=<)
                |yj $ %{} :Expr (:at 1527788936196) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1527788936499) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1527788937835) (:by |root) (:text |app.config)
                    |r $ %{} :Leaf (:at 1527788938747) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1527788939786) (:by |root) (:text |config)
    |app.config $ %{} :FileEntry
      :defs $ {}
        |cdn? $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1547659890907) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1547659890907) (:by |B1y7Rc-Zz) (:text |def)
              |j $ %{} :Leaf (:at 1547659890907) (:by |B1y7Rc-Zz) (:text |cdn?)
              |r $ %{} :Expr (:at 1547659890907) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1547659890907) (:by |B1y7Rc-Zz) (:text |cond)
                  |j $ %{} :Expr (:at 1547659890907) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1547659890907) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1547659890907) (:by |B1y7Rc-Zz) (:text |exists?)
                          |j $ %{} :Leaf (:at 1547659890907) (:by |B1y7Rc-Zz) (:text |js/window)
                      |j $ %{} :Leaf (:at 1547659890907) (:by |B1y7Rc-Zz) (:text |false)
                  |r $ %{} :Expr (:at 1547659890907) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1547659890907) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1547659890907) (:by |B1y7Rc-Zz) (:text |exists?)
                          |j $ %{} :Leaf (:at 1547659890907) (:by |B1y7Rc-Zz) (:text |js/process)
                      |j $ %{} :Expr (:at 1547659890907) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1547659890907) (:by |B1y7Rc-Zz) (:text |=)
                          |j $ %{} :Leaf (:at 1547659890907) (:by |B1y7Rc-Zz) (:text "|\"true")
                          |r $ %{} :Leaf (:at 1547659890907) (:by |B1y7Rc-Zz) (:text |js/process.env.cdn)
                  |v $ %{} :Expr (:at 1547659890907) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1547659890907) (:by |B1y7Rc-Zz) (:text |:else)
                      |j $ %{} :Leaf (:at 1547659890907) (:by |B1y7Rc-Zz) (:text |false)
        |dev? $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629571996712) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629571996712) (:by |B1y7Rc-Zz) (:text |def)
              |j $ %{} :Leaf (:at 1629571996712) (:by |B1y7Rc-Zz) (:text |dev?)
              |r $ %{} :Expr (:at 1629571996712) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629571996712) (:by |B1y7Rc-Zz) (:text |=)
                  |j $ %{} :Leaf (:at 1629571996712) (:by |B1y7Rc-Zz) (:text "|\"dev")
                  |r $ %{} :Expr (:at 1629571996712) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629571996712) (:by |B1y7Rc-Zz) (:text |get-env)
                      |j $ %{} :Leaf (:at 1629571996712) (:by |B1y7Rc-Zz) (:text "|\"mode")
                      |n $ %{} :Leaf (:at 1658773719648) (:by |B1y7Rc-Zz) (:text "|\"release")
        |site $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |site)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:port)
                      |j $ %{} :Leaf (:at 1536468046844) (:by |root) (:text |11011)
                  |t $ %{} :Expr (:at 1527867502467) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1527867504737) (:by |root) (:text |:title)
                      |j $ %{} :Leaf (:at 1536561520342) (:by |B1y7Rc-Zz) (:text "|\"Pumila")
                  |u $ %{} :Expr (:at 1527867511986) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1527867512819) (:by |root) (:text |:icon)
                      |j $ %{} :Leaf (:at 1536506945817) (:by |root) (:text "|\"http://cdn.tiye.me/logo/pumila.png")
                  |yn $ %{} :Expr (:at 1547659907549) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1547659907549) (:by |B1y7Rc-Zz) (:text |:storage-key)
                      |j $ %{} :Leaf (:at 1547659907549) (:by |B1y7Rc-Zz) (:text "|\"pumila")
                  |yp $ %{} :Expr (:at 1547659912205) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1547659912205) (:by |B1y7Rc-Zz) (:text |:storage-file)
                      |j $ %{} :Leaf (:at 1637313679627) (:by |B1y7Rc-Zz) (:text "|\"storage.cirru")
                  |yr $ %{} :Expr (:at 1540053971159) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1540053971159) (:by |root) (:text |:theme)
                      |j $ %{} :Leaf (:at 1540053989032) (:by |root) (:text "|\"#6EBAEE")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1527788708227) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1527788708227) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1527788708227) (:by |root) (:text |app.config)
    |app.schema $ %{} :FileEntry
      :defs $ {}
        |database $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |database)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:sessions)
                      |j $ %{} :Expr (:at 1539536856763) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1539536857335) (:by |root) (:text |do)
                          |L $ %{} :Leaf (:at 1539536859890) (:by |root) (:text |session)
                          |T $ %{} :Expr (:at 1500541255553) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:users)
                      |j $ %{} :Expr (:at 1539536862047) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1539536862551) (:by |root) (:text |do)
                          |L $ %{} :Leaf (:at 1539536863165) (:by |root) (:text |user)
                          |T $ %{} :Expr (:at 1500541255553) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
        |emotion $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1539711259132) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1539711260221) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1539711259132) (:by |root) (:text |emotion)
              |r $ %{} :Expr (:at 1539711261105) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539711261105) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1539711261105) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539711261105) (:by |root) (:text |:id)
                      |j $ %{} :Leaf (:at 1539711261105) (:by |root) (:text |nil)
                  |r $ %{} :Expr (:at 1539711261105) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539711261105) (:by |root) (:text |:text)
                      |j $ %{} :Leaf (:at 1539711261105) (:by |root) (:text "|\"")
                  |v $ %{} :Expr (:at 1539711261105) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539711261105) (:by |root) (:text |:score)
                      |j $ %{} :Leaf (:at 1539711261105) (:by |root) (:text |0)
                  |x $ %{} :Expr (:at 1539711267196) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539711268133) (:by |root) (:text |:color)
                      |j $ %{} :Expr (:at 1539711272654) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539711273311) (:by |root) (:text |hsl)
                          |j $ %{} :Leaf (:at 1539711274231) (:by |root) (:text |0)
                          |r $ %{} :Leaf (:at 1539711274429) (:by |root) (:text |0)
                          |v $ %{} :Leaf (:at 1539711277971) (:by |root) (:text |90)
        |mood $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1539711151140) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1539711152113) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1539711151140) (:by |root) (:text |mood)
              |r $ %{} :Expr (:at 1539711151140) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539711153129) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1539711153520) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539711154189) (:by |root) (:text |:id)
                      |j $ %{} :Leaf (:at 1539711154990) (:by |root) (:text |nil)
                  |r $ %{} :Expr (:at 1539711293691) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539711298421) (:by |root) (:text |:emotion-id)
                      |j $ %{} :Leaf (:at 1539711300419) (:by |root) (:text |nil)
                  |t $ %{} :Expr (:at 1539711622479) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539711623998) (:by |root) (:text |:text)
                      |j $ %{} :Leaf (:at 1539711627865) (:by |root) (:text "|\"")
                  |v $ %{} :Expr (:at 1539711301610) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539711303146) (:by |root) (:text |:time)
                      |j $ %{} :Leaf (:at 1539711303554) (:by |root) (:text |nil)
        |notification $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |notification)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:id)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:kind)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |v $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:text)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
        |router $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |router)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:name)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:title)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |v $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:data)
                      |j $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                  |x $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:router)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
        |session $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:user-id)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:id)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |v $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:nickname)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |x $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:router)
                      |j $ %{} :Expr (:at 1539536845507) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1539536846243) (:by |root) (:text |do)
                          |L $ %{} :Leaf (:at 1539536848271) (:by |root) (:text |router)
                          |T $ %{} :Expr (:at 1500541255553) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1500541255553) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:name)
                                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:home)
                              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:data)
                                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                              |v $ %{} :Expr (:at 1500541255553) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:router)
                                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |y $ %{} :Expr (:at 1537029440078) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1537029441764) (:by |root) (:text |:messages)
                      |j $ %{} :Expr (:at 1537029442032) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1537029442379) (:by |root) (:text |{})
        |user $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |user)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:name)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:id)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |v $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:nickname)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |x $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:avatar)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |y $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:password)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |yT $ %{} :Expr (:at 1539711144615) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539711145936) (:by |root) (:text |:moods)
                      |j $ %{} :Expr (:at 1539711146968) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539711147244) (:by |root) (:text |do)
                          |j $ %{} :Leaf (:at 1539711148496) (:by |root) (:text |mood)
                          |r $ %{} :Expr (:at 1539711149167) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539711149499) (:by |root) (:text |{})
                  |yj $ %{} :Expr (:at 1539711243245) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539711244739) (:by |root) (:text |:emotions)
                      |j $ %{} :Expr (:at 1539711247333) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539711248393) (:by |root) (:text |do)
                          |j $ %{} :Leaf (:at 1539711250132) (:by |root) (:text |emotion)
                          |r $ %{} :Expr (:at 1539711256770) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539711257087) (:by |root) (:text |{})
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541255553) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.schema)
            |r $ %{} :Expr (:at 1539711279481) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1539711280129) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1539711280368) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1539711282812) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1636983027204) (:by |B1y7Rc-Zz) (:text |respo.util.format)
                    |r $ %{} :Leaf (:at 1539711284709) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1539711285043) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1539711285205) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1539711286499) (:by |root) (:text |hsl)
    |app.server $ %{} :FileEntry
      :defs $ {}
        |*client-caches $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629572510684) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629572510684) (:by |B1y7Rc-Zz) (:text |defatom)
              |j $ %{} :Leaf (:at 1629572510684) (:by |B1y7Rc-Zz) (:text |*client-caches)
              |r $ %{} :Expr (:at 1629572510684) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629572510684) (:by |B1y7Rc-Zz) (:text |{})
        |*initial-db $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1636982707389) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1636982707389) (:by |B1y7Rc-Zz) (:text |defatom)
              |j $ %{} :Leaf (:at 1636982707389) (:by |B1y7Rc-Zz) (:text |*initial-db)
              |r $ %{} :Expr (:at 1636982707389) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636982707389) (:by |B1y7Rc-Zz) (:text |if)
                  |j $ %{} :Expr (:at 1636982707389) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636982707389) (:by |B1y7Rc-Zz) (:text |path-exists?)
                      |j $ %{} :Expr (:at 1636982707389) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636982707389) (:by |B1y7Rc-Zz) (:text |w-log)
                          |j $ %{} :Leaf (:at 1636982707389) (:by |B1y7Rc-Zz) (:text |storage-file)
                  |r $ %{} :Expr (:at 1636982707389) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636982707389) (:by |B1y7Rc-Zz) (:text |do)
                      |j $ %{} :Expr (:at 1636982707389) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636982707389) (:by |B1y7Rc-Zz) (:text |println)
                          |j $ %{} :Leaf (:at 1636982707389) (:by |B1y7Rc-Zz) (:text "|\"Found local EDN data")
                      |r $ %{} :Expr (:at 1636982707389) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636982707389) (:by |B1y7Rc-Zz) (:text |merge)
                          |j $ %{} :Leaf (:at 1636982707389) (:by |B1y7Rc-Zz) (:text |schema/database)
                          |r $ %{} :Expr (:at 1636982707389) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1636982707389) (:by |B1y7Rc-Zz) (:text |parse-cirru-edn)
                              |j $ %{} :Expr (:at 1636982707389) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636982707389) (:by |B1y7Rc-Zz) (:text |read-file)
                                  |j $ %{} :Leaf (:at 1636982707389) (:by |B1y7Rc-Zz) (:text |storage-file)
                  |v $ %{} :Expr (:at 1636982707389) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636982707389) (:by |B1y7Rc-Zz) (:text |do)
                      |j $ %{} :Expr (:at 1636982707389) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636982707389) (:by |B1y7Rc-Zz) (:text |println)
                          |j $ %{} :Leaf (:at 1636982707389) (:by |B1y7Rc-Zz) (:text "|\"Found no data")
                      |r $ %{} :Leaf (:at 1636982707389) (:by |B1y7Rc-Zz) (:text |schema/database)
        |*reader-reel $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629572501825) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629572501825) (:by |B1y7Rc-Zz) (:text |defatom)
              |j $ %{} :Leaf (:at 1629572501825) (:by |B1y7Rc-Zz) (:text |*reader-reel)
              |r $ %{} :Leaf (:at 1629572501825) (:by |B1y7Rc-Zz) (:text |@*reel)
        |*reel $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629572448612) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629572448612) (:by |B1y7Rc-Zz) (:text |defatom)
              |j $ %{} :Leaf (:at 1629572448612) (:by |B1y7Rc-Zz) (:text |*reel)
              |r $ %{} :Expr (:at 1629572448612) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629572448612) (:by |B1y7Rc-Zz) (:text |merge)
                  |j $ %{} :Leaf (:at 1629572448612) (:by |B1y7Rc-Zz) (:text |reel-schema)
                  |r $ %{} :Expr (:at 1629572448612) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629572448612) (:by |B1y7Rc-Zz) (:text |{})
                      |j $ %{} :Expr (:at 1629572448612) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629572448612) (:by |B1y7Rc-Zz) (:text |:base)
                          |j $ %{} :Leaf (:at 1629572448612) (:by |B1y7Rc-Zz) (:text |@*initial-db)
                      |r $ %{} :Expr (:at 1629572448612) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629572448612) (:by |B1y7Rc-Zz) (:text |:db)
                          |j $ %{} :Leaf (:at 1629572448612) (:by |B1y7Rc-Zz) (:text |@*initial-db)
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1636982730596) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |dispatch!)
              |r $ %{} :Expr (:at 1636982730596) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |op)
                  |r $ %{} :Leaf (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |sid)
              |v $ %{} :Expr (:at 1636982730596) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |let)
                  |j $ %{} :Expr (:at 1636982730596) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1636982730596) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |op-id)
                          |j $ %{} :Expr (:at 1636982730596) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |generate-id!)
                      |j $ %{} :Expr (:at 1636982730596) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |op-time)
                          |j $ %{} :Expr (:at 1636982730596) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |->)
                              |j $ %{} :Expr (:at 1636982730596) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |get-time!)
                              |r $ %{} :Expr (:at 1636982730596) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |.timestamp)
                  |r $ %{} :Expr (:at 1636982730596) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |if)
                      |j $ %{} :Leaf (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |config/dev?)
                      |r $ %{} :Expr (:at 1636982730596) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |println)
                          |j $ %{} :Leaf (:at 1636982730596) (:by |B1y7Rc-Zz) (:text "|\"Dispatch!")
                          |r $ %{} :Expr (:at 1636982730596) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |str)
                              |j $ %{} :Leaf (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |op)
                          |x $ %{} :Leaf (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |sid)
                  |v $ %{} :Expr (:at 1636982730596) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |if)
                      |j $ %{} :Expr (:at 1636982730596) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |=)
                          |j $ %{} :Leaf (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |op)
                          |r $ %{} :Leaf (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |:effect/persist)
                      |r $ %{} :Expr (:at 1636982730596) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |persist-db!)
                      |v $ %{} :Expr (:at 1636982730596) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |reset!)
                          |j $ %{} :Leaf (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |*reel)
                          |r $ %{} :Expr (:at 1636982730596) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |reel-reducer)
                              |j $ %{} :Leaf (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |@*reel)
                              |r $ %{} :Leaf (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |updater)
                              |v $ %{} :Leaf (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |op)
                              |y $ %{} :Leaf (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |sid)
                              |yT $ %{} :Leaf (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |op-id)
                              |yj $ %{} :Leaf (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |op-time)
                              |yr $ %{} :Leaf (:at 1636982730596) (:by |B1y7Rc-Zz) (:text |config/dev?)
        |get-backup-path! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1636983050857) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1636983050857) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1636983050857) (:by |B1y7Rc-Zz) (:text |get-backup-path!)
              |r $ %{} :Expr (:at 1636983050857) (:by |B1y7Rc-Zz)
                :data $ {}
              |v $ %{} :Expr (:at 1636983050857) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636983050857) (:by |B1y7Rc-Zz) (:text |let)
                  |j $ %{} :Expr (:at 1636983050857) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1636983050857) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636983050857) (:by |B1y7Rc-Zz) (:text |now)
                          |j $ %{} :Expr (:at 1636983050857) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1636983050857) (:by |B1y7Rc-Zz) (:text |.extract)
                              |j $ %{} :Expr (:at 1636983050857) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636983050857) (:by |B1y7Rc-Zz) (:text |get-time!)
                  |r $ %{} :Expr (:at 1636983050857) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636983050857) (:by |B1y7Rc-Zz) (:text |join-path)
                      |j $ %{} :Leaf (:at 1636983050857) (:by |B1y7Rc-Zz) (:text |calcit-dirname)
                      |r $ %{} :Leaf (:at 1636983050857) (:by |B1y7Rc-Zz) (:text "|\"backups")
                      |v $ %{} :Expr (:at 1636983050857) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636983050857) (:by |B1y7Rc-Zz) (:text |str)
                          |j $ %{} :Expr (:at 1636983050857) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1636983050857) (:by |B1y7Rc-Zz) (:text |:month)
                              |j $ %{} :Leaf (:at 1636983050857) (:by |B1y7Rc-Zz) (:text |now)
                      |x $ %{} :Expr (:at 1636983050857) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636983050857) (:by |B1y7Rc-Zz) (:text |str)
                          |j $ %{} :Expr (:at 1636983050857) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1636983050857) (:by |B1y7Rc-Zz) (:text |:day)
                              |j $ %{} :Leaf (:at 1636983050857) (:by |B1y7Rc-Zz) (:text |now)
                          |r $ %{} :Leaf (:at 1636983050857) (:by |B1y7Rc-Zz) (:text "|\"-snapshot.cirru")
        |main! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1636982754886) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |main!)
              |r $ %{} :Expr (:at 1636982754886) (:by |B1y7Rc-Zz)
                :data $ {}
              |v $ %{} :Expr (:at 1636982754886) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |println)
                  |j $ %{} :Leaf (:at 1636982754886) (:by |B1y7Rc-Zz) (:text "|\"Running mode:")
                  |r $ %{} :Expr (:at 1636982754886) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |if)
                      |j $ %{} :Leaf (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |config/dev?)
                      |r $ %{} :Leaf (:at 1636982754886) (:by |B1y7Rc-Zz) (:text "|\"dev")
                      |v $ %{} :Leaf (:at 1636982754886) (:by |B1y7Rc-Zz) (:text "|\"release")
              |x $ %{} :Expr (:at 1636982754886) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |let)
                  |j $ %{} :Expr (:at 1636982754886) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1636982754886) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |p?)
                          |j $ %{} :Expr (:at 1636982754886) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |get-env)
                              |j $ %{} :Leaf (:at 1636982754886) (:by |B1y7Rc-Zz) (:text "|\"port")
                      |j $ %{} :Expr (:at 1636982754886) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |port)
                          |j $ %{} :Expr (:at 1636982754886) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |if)
                              |j $ %{} :Expr (:at 1636982754886) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |some?)
                                  |j $ %{} :Leaf (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |p?)
                              |r $ %{} :Expr (:at 1636982754886) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |parse-float)
                                  |j $ %{} :Leaf (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |p?)
                              |v $ %{} :Expr (:at 1636982754886) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |:port)
                                  |j $ %{} :Leaf (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |config/site)
                  |r $ %{} :Expr (:at 1636982754886) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |run-server!)
                      |j $ %{} :Leaf (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |port)
                  |v $ %{} :Expr (:at 1636982754886) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |println)
                      |j $ %{} :Expr (:at 1636982754886) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |str)
                          |j $ %{} :Leaf (:at 1636982754886) (:by |B1y7Rc-Zz) (:text "|\"Server started on port:")
                          |r $ %{} :Leaf (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |port)
              |y $ %{} :Expr (:at 1636982754886) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |do)
                  |j $ %{} :Expr (:at 1636982754886) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |;)
                      |j $ %{} :Leaf (:at 1636982754886) (:by |B1y7Rc-Zz) (:text "|\"init it before doing multi-threading")
                  |r $ %{} :Expr (:at 1636982754886) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |identity)
                      |j $ %{} :Leaf (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |@*reader-reel)
              |yT $ %{} :Expr (:at 1636982754886) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |set-interval)
                  |j $ %{} :Leaf (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |200)
                  |r $ %{} :Expr (:at 1636982754886) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |fn)
                      |j $ %{} :Expr (:at 1636982754886) (:by |B1y7Rc-Zz)
                        :data $ {}
                      |r $ %{} :Expr (:at 1636982754886) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |render-loop!)
              |yj $ %{} :Expr (:at 1636982754886) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |set-interval)
                  |j $ %{} :Leaf (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |600000)
                  |r $ %{} :Expr (:at 1636982754886) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |fn)
                      |j $ %{} :Expr (:at 1636982754886) (:by |B1y7Rc-Zz)
                        :data $ {}
                      |r $ %{} :Expr (:at 1636982754886) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |persist-db!)
              |yr $ %{} :Expr (:at 1636982754886) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |on-control-c)
                  |j $ %{} :Leaf (:at 1636982754886) (:by |B1y7Rc-Zz) (:text |on-exit!)
        |on-exit! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1636982764905) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1636982764905) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1636982764905) (:by |B1y7Rc-Zz) (:text |on-exit!)
              |r $ %{} :Expr (:at 1636982764905) (:by |B1y7Rc-Zz)
                :data $ {}
              |v $ %{} :Expr (:at 1636982764905) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636982764905) (:by |B1y7Rc-Zz) (:text |persist-db!)
              |x $ %{} :Expr (:at 1636982764905) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636982764905) (:by |B1y7Rc-Zz) (:text |;)
                  |j $ %{} :Leaf (:at 1636982764905) (:by |B1y7Rc-Zz) (:text |println)
                  |r $ %{} :Leaf (:at 1636982764905) (:by |B1y7Rc-Zz) (:text "|\"exit code is...")
              |y $ %{} :Expr (:at 1636982764905) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636982764905) (:by |B1y7Rc-Zz) (:text |quit!)
                  |j $ %{} :Leaf (:at 1636982764905) (:by |B1y7Rc-Zz) (:text |0)
        |persist-db! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1636982775596) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1636982775596) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1636982775596) (:by |B1y7Rc-Zz) (:text |persist-db!)
              |r $ %{} :Expr (:at 1636982775596) (:by |B1y7Rc-Zz)
                :data $ {}
              |v $ %{} :Expr (:at 1636982775596) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636982775596) (:by |B1y7Rc-Zz) (:text |let)
                  |j $ %{} :Expr (:at 1636982775596) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1636982775596) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636982775596) (:by |B1y7Rc-Zz) (:text |file-content)
                          |j $ %{} :Expr (:at 1636982775596) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1636982775596) (:by |B1y7Rc-Zz) (:text |format-cirru-edn)
                              |j $ %{} :Expr (:at 1636982775596) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636982775596) (:by |B1y7Rc-Zz) (:text |assoc)
                                  |j $ %{} :Expr (:at 1636982775596) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1636982775596) (:by |B1y7Rc-Zz) (:text |:db)
                                      |j $ %{} :Leaf (:at 1636982775596) (:by |B1y7Rc-Zz) (:text |@*reel)
                                  |r $ %{} :Leaf (:at 1636982775596) (:by |B1y7Rc-Zz) (:text |:sessions)
                                  |v $ %{} :Expr (:at 1636982775596) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1636982775596) (:by |B1y7Rc-Zz) (:text |{})
                      |j $ %{} :Expr (:at 1636982775596) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636982775596) (:by |B1y7Rc-Zz) (:text |storage-path)
                          |j $ %{} :Leaf (:at 1636982775596) (:by |B1y7Rc-Zz) (:text |storage-file)
                      |r $ %{} :Expr (:at 1636982775596) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636982775596) (:by |B1y7Rc-Zz) (:text |backup-path)
                          |j $ %{} :Expr (:at 1636982775596) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1636982775596) (:by |B1y7Rc-Zz) (:text |get-backup-path!)
                  |r $ %{} :Expr (:at 1636982775596) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636982775596) (:by |B1y7Rc-Zz) (:text |check-write-file!)
                      |j $ %{} :Leaf (:at 1636982775596) (:by |B1y7Rc-Zz) (:text |storage-path)
                      |r $ %{} :Leaf (:at 1636982775596) (:by |B1y7Rc-Zz) (:text |file-content)
                  |v $ %{} :Expr (:at 1636982775596) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636982775596) (:by |B1y7Rc-Zz) (:text |check-write-file!)
                      |j $ %{} :Leaf (:at 1636982775596) (:by |B1y7Rc-Zz) (:text |backup-path)
                      |r $ %{} :Leaf (:at 1636982775596) (:by |B1y7Rc-Zz) (:text |file-content)
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1636982787740) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1636982787740) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1636982787740) (:by |B1y7Rc-Zz) (:text |reload!)
              |r $ %{} :Expr (:at 1636982787740) (:by |B1y7Rc-Zz)
                :data $ {}
              |v $ %{} :Expr (:at 1636982787740) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636982787740) (:by |B1y7Rc-Zz) (:text |println)
                  |j $ %{} :Leaf (:at 1636982787740) (:by |B1y7Rc-Zz) (:text "|\"Code updated..")
              |x $ %{} :Expr (:at 1636982787740) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636982787740) (:by |B1y7Rc-Zz) (:text |if)
                  |j $ %{} :Expr (:at 1636982787740) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636982787740) (:by |B1y7Rc-Zz) (:text |not)
                      |j $ %{} :Leaf (:at 1636982787740) (:by |B1y7Rc-Zz) (:text |config/dev?)
                  |r $ %{} :Expr (:at 1636982787740) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636982787740) (:by |B1y7Rc-Zz) (:text |raise)
                      |j $ %{} :Leaf (:at 1636982787740) (:by |B1y7Rc-Zz) (:text "|\"reloading only happens in dev mode")
              |y $ %{} :Expr (:at 1636982787740) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636982787740) (:by |B1y7Rc-Zz) (:text |clear-twig-caches!)
              |yT $ %{} :Expr (:at 1636982787740) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636982787740) (:by |B1y7Rc-Zz) (:text |reset!)
                  |j $ %{} :Leaf (:at 1636982787740) (:by |B1y7Rc-Zz) (:text |*reel)
                  |r $ %{} :Expr (:at 1636982787740) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636982787740) (:by |B1y7Rc-Zz) (:text |refresh-reel)
                      |j $ %{} :Leaf (:at 1636982787740) (:by |B1y7Rc-Zz) (:text |@*reel)
                      |r $ %{} :Leaf (:at 1636982787740) (:by |B1y7Rc-Zz) (:text |@*initial-db)
                      |v $ %{} :Leaf (:at 1636982787740) (:by |B1y7Rc-Zz) (:text |updater)
              |yj $ %{} :Expr (:at 1636982787740) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636982787740) (:by |B1y7Rc-Zz) (:text |sync-clients!)
                  |j $ %{} :Leaf (:at 1636982787740) (:by |B1y7Rc-Zz) (:text |@*reader-reel)
        |render-loop! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629572869924) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629572869924) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1629572869924) (:by |B1y7Rc-Zz) (:text |render-loop!)
              |r $ %{} :Expr (:at 1629572869924) (:by |B1y7Rc-Zz)
                :data $ {}
              |v $ %{} :Expr (:at 1629572869924) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629572869924) (:by |B1y7Rc-Zz) (:text |when)
                  |j $ %{} :Expr (:at 1629572869924) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629572869924) (:by |B1y7Rc-Zz) (:text |not)
                      |j $ %{} :Expr (:at 1629572869924) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629572869924) (:by |B1y7Rc-Zz) (:text |identical?)
                          |j $ %{} :Leaf (:at 1629572869924) (:by |B1y7Rc-Zz) (:text |@*reader-reel)
                          |r $ %{} :Leaf (:at 1629572869924) (:by |B1y7Rc-Zz) (:text |@*reel)
                  |r $ %{} :Expr (:at 1629572869924) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629572869924) (:by |B1y7Rc-Zz) (:text |reset!)
                      |j $ %{} :Leaf (:at 1629572869924) (:by |B1y7Rc-Zz) (:text |*reader-reel)
                      |r $ %{} :Leaf (:at 1629572869924) (:by |B1y7Rc-Zz) (:text |@*reel)
                  |v $ %{} :Expr (:at 1629572869924) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629572869924) (:by |B1y7Rc-Zz) (:text |sync-clients!)
                      |j $ %{} :Leaf (:at 1629572869924) (:by |B1y7Rc-Zz) (:text |@*reader-reel)
        |run-server! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1636982811996) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |run-server!)
              |r $ %{} :Expr (:at 1636982811996) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |port)
              |v $ %{} :Expr (:at 1636982811996) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |wss-serve!)
                  |j $ %{} :Expr (:at 1636982811996) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |&{})
                      |j $ %{} :Leaf (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |:port)
                      |r $ %{} :Leaf (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |port)
                  |r $ %{} :Expr (:at 1636982811996) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |fn)
                      |j $ %{} :Expr (:at 1636982811996) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |data)
                      |r $ %{} :Expr (:at 1636982811996) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700500887099) (:by |B1y7Rc-Zz) (:text |tag-match)
                          |j $ %{} :Leaf (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |data)
                          |r $ %{} :Expr (:at 1636982811996) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Expr (:at 1636982811996) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |:connect)
                                  |j $ %{} :Leaf (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |sid)
                              |j $ %{} :Expr (:at 1636982811996) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |do)
                                  |j $ %{} :Expr (:at 1636982811996) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |dispatch!)
                                      |j $ %{} :Expr (:at 1700501205512) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1700501206648) (:by |B1y7Rc-Zz) (:text |::)
                                          |T $ %{} :Leaf (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |:session/connect)
                                      |v $ %{} :Leaf (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |sid)
                                  |r $ %{} :Expr (:at 1636982811996) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |println)
                                      |j $ %{} :Leaf (:at 1636982811996) (:by |B1y7Rc-Zz) (:text "|\"New client.")
                          |v $ %{} :Expr (:at 1636982811996) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Expr (:at 1636982811996) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |:message)
                                  |j $ %{} :Leaf (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |sid)
                                  |r $ %{} :Leaf (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |msg)
                              |j $ %{} :Expr (:at 1700501228815) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1700501228815) (:by |B1y7Rc-Zz) (:text |dispatch!)
                                  |b $ %{} :Expr (:at 1700501228815) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1700501228815) (:by |B1y7Rc-Zz) (:text |parse-cirru-edn)
                                      |b $ %{} :Leaf (:at 1700501228815) (:by |B1y7Rc-Zz) (:text |msg)
                                  |h $ %{} :Leaf (:at 1700501238878) (:by |B1y7Rc-Zz) (:text |sid)
                          |x $ %{} :Expr (:at 1636982811996) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Expr (:at 1636982811996) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |:disconnect)
                                  |j $ %{} :Leaf (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |sid)
                              |j $ %{} :Expr (:at 1636982811996) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |do)
                                  |j $ %{} :Expr (:at 1636982811996) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |println)
                                      |j $ %{} :Leaf (:at 1636982811996) (:by |B1y7Rc-Zz) (:text "|\"Client closed!")
                                  |r $ %{} :Expr (:at 1636982811996) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |dispatch!)
                                      |j $ %{} :Expr (:at 1700501232464) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1700501241726) (:by |B1y7Rc-Zz) (:text |::)
                                          |T $ %{} :Leaf (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |:session/disconnect)
                                      |v $ %{} :Leaf (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |sid)
                          |y $ %{} :Expr (:at 1636982811996) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |_)
                              |j $ %{} :Expr (:at 1636982811996) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |println)
                                  |j $ %{} :Leaf (:at 1636982811996) (:by |B1y7Rc-Zz) (:text "|\"unknown data:")
                                  |r $ %{} :Leaf (:at 1636982811996) (:by |B1y7Rc-Zz) (:text |data)
        |storage-file $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1636982827887) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1636982827887) (:by |B1y7Rc-Zz) (:text |def)
              |j $ %{} :Leaf (:at 1636982827887) (:by |B1y7Rc-Zz) (:text |storage-file)
              |r $ %{} :Expr (:at 1636982827887) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636982827887) (:by |B1y7Rc-Zz) (:text |if)
                  |j $ %{} :Expr (:at 1636982827887) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636982827887) (:by |B1y7Rc-Zz) (:text |empty?)
                      |j $ %{} :Leaf (:at 1636982827887) (:by |B1y7Rc-Zz) (:text |calcit-dirname)
                  |r $ %{} :Expr (:at 1636982827887) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636982827887) (:by |B1y7Rc-Zz) (:text |str)
                      |j $ %{} :Leaf (:at 1636982827887) (:by |B1y7Rc-Zz) (:text |calcit-dirname)
                      |r $ %{} :Expr (:at 1636982827887) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636982827887) (:by |B1y7Rc-Zz) (:text |:storage-file)
                          |j $ %{} :Leaf (:at 1636982827887) (:by |B1y7Rc-Zz) (:text |config/site)
                  |v $ %{} :Expr (:at 1636982827887) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636982827887) (:by |B1y7Rc-Zz) (:text |str)
                      |j $ %{} :Leaf (:at 1636982827887) (:by |B1y7Rc-Zz) (:text |calcit-dirname)
                      |r $ %{} :Leaf (:at 1636982827887) (:by |B1y7Rc-Zz) (:text "|\"/")
                      |v $ %{} :Expr (:at 1636982827887) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636982827887) (:by |B1y7Rc-Zz) (:text |:storage-file)
                          |j $ %{} :Leaf (:at 1636982827887) (:by |B1y7Rc-Zz) (:text |config/site)
        |sync-clients! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1636982841396) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |sync-clients!)
              |r $ %{} :Expr (:at 1636982841396) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |reel)
              |v $ %{} :Expr (:at 1636982841396) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |wss-each!)
                  |j $ %{} :Expr (:at 1636982841396) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |fn)
                      |j $ %{} :Expr (:at 1636982841396) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |sid)
                      |r $ %{} :Expr (:at 1636982841396) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |let)
                          |j $ %{} :Expr (:at 1636982841396) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Expr (:at 1636982841396) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |db)
                                  |j $ %{} :Expr (:at 1636982841396) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |:db)
                                      |j $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |reel)
                              |j $ %{} :Expr (:at 1636982841396) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |records)
                                  |j $ %{} :Expr (:at 1636982841396) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |:records)
                                      |j $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |reel)
                              |r $ %{} :Expr (:at 1636982841396) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |session)
                                  |j $ %{} :Expr (:at 1636982841396) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |get-in)
                                      |j $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |db)
                                      |r $ %{} :Expr (:at 1636982841396) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |[])
                                          |j $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |:sessions)
                                          |r $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |sid)
                              |v $ %{} :Expr (:at 1636982841396) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |old-store)
                                  |j $ %{} :Expr (:at 1636982841396) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |or)
                                      |j $ %{} :Expr (:at 1636982841396) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |get)
                                          |j $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |@*client-caches)
                                          |r $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |sid)
                                      |r $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |nil)
                              |x $ %{} :Expr (:at 1636982841396) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |new-store)
                                  |j $ %{} :Expr (:at 1636982841396) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |twig-container)
                                      |j $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |db)
                                      |r $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |session)
                                      |v $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |records)
                              |y $ %{} :Expr (:at 1636982841396) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |changes)
                                  |j $ %{} :Expr (:at 1636982841396) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |diff-twig)
                                      |j $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |old-store)
                                      |r $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |new-store)
                                      |v $ %{} :Expr (:at 1636982841396) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |{})
                                          |j $ %{} :Expr (:at 1636982841396) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |:key)
                                              |j $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |:id)
                          |r $ %{} :Expr (:at 1636982841396) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |;)
                              |j $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |when)
                              |r $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |config/dev?)
                              |v $ %{} :Expr (:at 1636982841396) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |println)
                                  |j $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text "|\"Changes for")
                                  |r $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |sid)
                                  |v $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text "|\":")
                                  |x $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |changes)
                                  |y $ %{} :Expr (:at 1636982841396) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |count)
                                      |j $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |records)
                          |v $ %{} :Expr (:at 1636982841396) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |if)
                              |j $ %{} :Expr (:at 1636982841396) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |not=)
                                  |j $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |changes)
                                  |r $ %{} :Expr (:at 1636982841396) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |[])
                              |r $ %{} :Expr (:at 1636982841396) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |do)
                                  |j $ %{} :Expr (:at 1636982841396) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |wss-send!)
                                      |j $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |sid)
                                      |r $ %{} :Expr (:at 1636982841396) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |format-cirru-edn)
                                          |b $ %{} :Expr (:at 1700501600160) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1700501600374) (:by |B1y7Rc-Zz) (:text |::)
                                              |b $ %{} :Leaf (:at 1700501601441) (:by |B1y7Rc-Zz) (:text |:patch)
                                              |h $ %{} :Leaf (:at 1700501601807) (:by |B1y7Rc-Zz) (:text |changes)
                                  |r $ %{} :Expr (:at 1636982841396) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |swap!)
                                      |j $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |*client-caches)
                                      |r $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |assoc)
                                      |v $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |sid)
                                      |x $ %{} :Leaf (:at 1636982841396) (:by |B1y7Rc-Zz) (:text |new-store)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1608701436551) (:by |B1y7Rc-Zz)
          :data $ {}
            |T $ %{} :Leaf (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |ns)
            |j $ %{} :Leaf (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |app.server)
            |r $ %{} :Expr (:at 1608701436551) (:by |B1y7Rc-Zz)
              :data $ {}
                |T $ %{} :Leaf (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |:require)
                |j $ %{} :Expr (:at 1608701436551) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |app.schema)
                    |r $ %{} :Leaf (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |:as)
                    |v $ %{} :Leaf (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |schema)
                |r $ %{} :Expr (:at 1608701436551) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |app.updater)
                    |r $ %{} :Leaf (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |:refer)
                    |v $ %{} :Expr (:at 1608701436551) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |[])
                        |j $ %{} :Leaf (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |updater)
                |x $ %{} :Expr (:at 1608701436551) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |cumulo-reel.core)
                    |r $ %{} :Leaf (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |:refer)
                    |v $ %{} :Expr (:at 1608701436551) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |[])
                        |j $ %{} :Leaf (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |reel-reducer)
                        |r $ %{} :Leaf (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |refresh-reel)
                        |v $ %{} :Leaf (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |reel-schema)
                |yj $ %{} :Expr (:at 1608701436551) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |app.config)
                    |r $ %{} :Leaf (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |:as)
                    |v $ %{} :Leaf (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |config)
                |yx $ %{} :Expr (:at 1608701436551) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |app.twig.container)
                    |r $ %{} :Leaf (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |:refer)
                    |v $ %{} :Expr (:at 1608701436551) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |[])
                        |j $ %{} :Leaf (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |twig-container)
                |yy $ %{} :Expr (:at 1608701436551) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |recollect.diff)
                    |r $ %{} :Leaf (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |:refer)
                    |v $ %{} :Expr (:at 1608701436551) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |[])
                        |j $ %{} :Leaf (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |diff-twig)
                |yyT $ %{} :Expr (:at 1636982878217) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1636982878217) (:by |B1y7Rc-Zz) (:text |wss.core)
                    |j $ %{} :Leaf (:at 1636982878217) (:by |B1y7Rc-Zz) (:text |:refer)
                    |r $ %{} :Expr (:at 1636982878217) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1636982878217) (:by |B1y7Rc-Zz) (:text |wss-serve!)
                        |j $ %{} :Leaf (:at 1636982878217) (:by |B1y7Rc-Zz) (:text |wss-send!)
                        |r $ %{} :Leaf (:at 1636982878217) (:by |B1y7Rc-Zz) (:text |wss-each!)
                |yyr $ %{} :Expr (:at 1608701436551) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |recollect.twig)
                    |r $ %{} :Leaf (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |:refer)
                    |v $ %{} :Expr (:at 1608701436551) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |[])
                        |r $ %{} :Leaf (:at 1608701436551) (:by |B1y7Rc-Zz) (:text |clear-twig-caches!)
                |yyv $ %{} :Expr (:at 1636982862642) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1636982862642) (:by |B1y7Rc-Zz) (:text |app.$meta)
                    |j $ %{} :Leaf (:at 1636982862642) (:by |B1y7Rc-Zz) (:text |:refer)
                    |r $ %{} :Expr (:at 1636982862642) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1636982862642) (:by |B1y7Rc-Zz) (:text |calcit-dirname)
                |yyx $ %{} :Expr (:at 1636982867033) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1636982867033) (:by |B1y7Rc-Zz) (:text |calcit.std.fs)
                    |j $ %{} :Leaf (:at 1636982867033) (:by |B1y7Rc-Zz) (:text |:refer)
                    |r $ %{} :Expr (:at 1636982867033) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1636982867033) (:by |B1y7Rc-Zz) (:text |path-exists?)
                        |j $ %{} :Leaf (:at 1636982867033) (:by |B1y7Rc-Zz) (:text |check-write-file!)
                |yyy $ %{} :Expr (:at 1636982867033) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1636982867033) (:by |B1y7Rc-Zz) (:text |calcit.std.time)
                    |j $ %{} :Leaf (:at 1636982867033) (:by |B1y7Rc-Zz) (:text |:refer)
                    |r $ %{} :Expr (:at 1636982867033) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1636982867033) (:by |B1y7Rc-Zz) (:text |set-interval)
                |yyyT $ %{} :Expr (:at 1636982867033) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1636982867033) (:by |B1y7Rc-Zz) (:text |calcit.std.date)
                    |j $ %{} :Leaf (:at 1636982867033) (:by |B1y7Rc-Zz) (:text |:refer)
                    |r $ %{} :Expr (:at 1636982867033) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1636982867033) (:by |B1y7Rc-Zz) (:text |Date)
                        |j $ %{} :Leaf (:at 1636982867033) (:by |B1y7Rc-Zz) (:text |get-time!)
                |yyyj $ %{} :Expr (:at 1636982867033) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1636982867033) (:by |B1y7Rc-Zz) (:text |calcit.std.path)
                    |j $ %{} :Leaf (:at 1636982867033) (:by |B1y7Rc-Zz) (:text |:refer)
                    |r $ %{} :Expr (:at 1636982867033) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1636982867033) (:by |B1y7Rc-Zz) (:text |join-path)
    |app.style $ %{} :FileEntry
      :defs $ {}
        |link $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1519367966237) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1519367970413) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1519367966237) (:by |root) (:text |link)
              |r $ %{} :Expr (:at 1519367966237) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1519367974187) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1519367974501) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1519367980887) (:by |root) (:text |:text-decoration)
                      |j $ %{} :Leaf (:at 1519367984967) (:by |root) (:text |:underline)
                  |r $ %{} :Expr (:at 1519367985371) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1519367998049) (:by |root) (:text |:cursor)
                      |j $ %{} :Leaf (:at 1519367996458) (:by |root) (:text |:pointer)
                  |v $ %{} :Expr (:at 1519368028360) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1519368029579) (:by |root) (:text |:color)
                      |j $ %{} :Expr (:at 1519368031142) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519368031562) (:by |root) (:text |hsl)
                          |j $ %{} :Leaf (:at 1519368032307) (:by |root) (:text |240)
                          |r $ %{} :Leaf (:at 1519368032737) (:by |root) (:text |80)
                          |v $ %{} :Leaf (:at 1519368033240) (:by |root) (:text |80)
                  |x $ %{} :Expr (:at 1519368217607) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1519368219848) (:by |root) (:text |:font-family)
                      |j $ %{} :Leaf (:at 1519368227853) (:by |root) (:text |ui/font-fancy)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1519367963533) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1519367963533) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1519367963533) (:by |root) (:text |app.style)
            |r $ %{} :Expr (:at 1519368036923) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1519368038192) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1519368038575) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1519368038764) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1519368040947) (:by |root) (:text |hsl.core)
                    |r $ %{} :Leaf (:at 1519368041713) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1519368041918) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1519368042785) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1519368043289) (:by |root) (:text |hsl)
                |r $ %{} :Expr (:at 1519368236509) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1519368236979) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1519368258261) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1519368241627) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1519368242073) (:by |root) (:text |ui)
    |app.twig.container $ %{} :FileEntry
      :defs $ {}
        |twig-container $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1629572343927) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |twig-container)
              |n $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
                  |r $ %{} :Leaf (:at 1507828952210) (:by |root) (:text |records)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |logged-in?)
                          |j $ %{} :Expr (:at 1500541255553) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |some?)
                              |j $ %{} :Expr (:at 1500541255553) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:user-id)
                                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
                      |j $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |router)
                          |j $ %{} :Expr (:at 1500541255553) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:router)
                              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
                      |r $ %{} :Expr (:at 1507830626848) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507830630278) (:by |root) (:text |base-data)
                          |j $ %{} :Expr (:at 1507830631302) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507830631896) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1507830632113) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507830641027) (:by |root) (:text |:logged-in?)
                                  |j $ %{} :Leaf (:at 1507830639219) (:by |root) (:text |logged-in?)
                              |n $ %{} :Expr (:at 1507830674443) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507830677551) (:by |root) (:text |:session)
                                  |j $ %{} :Leaf (:at 1507830679311) (:by |root) (:text |session)
                              |v $ %{} :Expr (:at 1507830649968) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507830655148) (:by |root) (:text |:reel-length)
                                  |j $ %{} :Expr (:at 1507830655987) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1507830657551) (:by |root) (:text |count)
                                      |j $ %{} :Leaf (:at 1507830658789) (:by |root) (:text |records)
                  |r $ %{} :Expr (:at 1507830661017) (:by |root)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1507830661999) (:by |root) (:text |merge)
                      |L $ %{} :Leaf (:at 1507830664014) (:by |root) (:text |base-data)
                      |T $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |if)
                          |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |logged-in?)
                          |r $ %{} :Expr (:at 1537033468190) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1537033469785) (:by |root) (:text |let)
                              |L $ %{} :Expr (:at 1537033470122) (:by |root)
                                :data $ {}
                                  |j $ %{} :Expr (:at 1537033759553) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1537033760009) (:by |root) (:text |user)
                                      |j $ %{} :Expr (:at 1537033763481) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1537033763481) (:by |root) (:text |get-in)
                                          |j $ %{} :Leaf (:at 1537033763481) (:by |root) (:text |db)
                                          |r $ %{} :Expr (:at 1537033763481) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1537033763481) (:by |root) (:text |[])
                                              |j $ %{} :Leaf (:at 1537033763481) (:by |root) (:text |:users)
                                              |r $ %{} :Expr (:at 1537033763481) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1537033763481) (:by |root) (:text |:user-id)
                                                  |j $ %{} :Leaf (:at 1537033763481) (:by |root) (:text |session)
                              |T $ %{} :Expr (:at 1500541255553) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                                  |v $ %{} :Expr (:at 1500541255553) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:user)
                                      |j $ %{} :Expr (:at 1500541255553) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |twig-user)
                                          |j $ %{} :Leaf (:at 1537033765433) (:by |root) (:text |user)
                                  |x $ %{} :Expr (:at 1500541255553) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:router)
                                      |j $ %{} :Expr (:at 1524070628251) (:by |root)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1524070634499) (:by |root) (:text |assoc)
                                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |router)
                                          |j $ %{} :Leaf (:at 1524070635855) (:by |root) (:text |:data)
                                          |r $ %{} :Expr (:at 1524070636122) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629572373307) (:by |B1y7Rc-Zz) (:text |case-default)
                                              |j $ %{} :Expr (:at 1524070641804) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1524070642493) (:by |root) (:text |:name)
                                                  |j $ %{} :Leaf (:at 1524070643351) (:by |root) (:text |router)
                                              |l $ %{} :Expr (:at 1629572374351) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629572374762) (:by |B1y7Rc-Zz) (:text |{})
                                              |n $ %{} :Expr (:at 1525108994160) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1525108995413) (:by |root) (:text |:home)
                                                  |j $ %{} :Expr (:at 1575989715262) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1575989716569) (:by |B1y7Rc-Zz) (:text |{})
                                                      |T $ %{} :Expr (:at 1575989717045) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |D $ %{} :Leaf (:at 1575989719688) (:by |B1y7Rc-Zz) (:text |:emotions)
                                                          |T $ %{} :Expr (:at 1539796128384) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1539796128384) (:by |root) (:text |:emotions)
                                                              |j $ %{} :Leaf (:at 1539796128384) (:by |root) (:text |user)
                                                      |j $ %{} :Expr (:at 1575989993307) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1575989995944) (:by |B1y7Rc-Zz) (:text |:moods)
                                                          |j $ %{} :Expr (:at 1575990063192) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |D $ %{} :Leaf (:at 1629572377389) (:by |B1y7Rc-Zz) (:text |->)
                                                              |T $ %{} :Expr (:at 1575989996344) (:by |B1y7Rc-Zz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1575989998757) (:by |B1y7Rc-Zz) (:text |:moods)
                                                                  |j $ %{} :Leaf (:at 1575990015046) (:by |B1y7Rc-Zz) (:text |user)
                                                              |b $ %{} :Expr (:at 1629572392659) (:by |B1y7Rc-Zz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1629572394055) (:by |B1y7Rc-Zz) (:text |.to-list)
                                                              |j $ %{} :Expr (:at 1575990066573) (:by |B1y7Rc-Zz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1629572378492) (:by |B1y7Rc-Zz) (:text |.sort-by)
                                                                  |j $ %{} :Expr (:at 1575990077795) (:by |B1y7Rc-Zz)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1575990078141) (:by |B1y7Rc-Zz) (:text |fn)
                                                                      |j $ %{} :Expr (:at 1575990078791) (:by |B1y7Rc-Zz)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1629572405698) (:by |B1y7Rc-Zz) (:text |pair)
                                                                      |r $ %{} :Expr (:at 1575990290061) (:by |B1y7Rc-Zz)
                                                                        :data $ {}
                                                                          |D $ %{} :Leaf (:at 1629572398407) (:by |B1y7Rc-Zz) (:text |negate)
                                                                          |T $ %{} :Expr (:at 1575990084815) (:by |B1y7Rc-Zz)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1575990086059) (:by |B1y7Rc-Zz) (:text |:time)
                                                                              |j $ %{} :Expr (:at 1629572400980) (:by |B1y7Rc-Zz)
                                                                                :data $ {}
                                                                                  |D $ %{} :Leaf (:at 1629572401859) (:by |B1y7Rc-Zz) (:text |last)
                                                                                  |T $ %{} :Leaf (:at 1629572403034) (:by |B1y7Rc-Zz) (:text |pair)
                                                              |r $ %{} :Expr (:at 1575990161924) (:by |B1y7Rc-Zz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1575990163106) (:by |B1y7Rc-Zz) (:text |take)
                                                                  |j $ %{} :Leaf (:at 1575990893785) (:by |B1y7Rc-Zz) (:text |8)
                                                              |v $ %{} :Expr (:at 1629572387874) (:by |B1y7Rc-Zz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1629572390159) (:by |B1y7Rc-Zz) (:text |.pairs-map)
                                              |o $ %{} :Expr (:at 1525108994160) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1539796109906) (:by |root) (:text |:history)
                                                  |j $ %{} :Expr (:at 1539796116292) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1539796116292) (:by |root) (:text |{})
                                                      |j $ %{} :Expr (:at 1539796116292) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1539796116292) (:by |root) (:text |:emotions)
                                                          |j $ %{} :Expr (:at 1539796116292) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1539796116292) (:by |root) (:text |:emotions)
                                                              |j $ %{} :Leaf (:at 1539796116292) (:by |root) (:text |user)
                                                      |r $ %{} :Expr (:at 1539796116292) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1539796116292) (:by |root) (:text |:moods)
                                                          |j $ %{} :Expr (:at 1539796116292) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1539796116292) (:by |root) (:text |:moods)
                                                              |j $ %{} :Leaf (:at 1539796116292) (:by |root) (:text |user)
                                              |p $ %{} :Expr (:at 1537119549954) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1539795850115) (:by |root) (:text |:emotions)
                                                  |j $ %{} :Expr (:at 1539795851489) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1539795856455) (:by |root) (:text |:emotions)
                                                      |j $ %{} :Leaf (:at 1539795858017) (:by |root) (:text |user)
                                              |q $ %{} :Expr (:at 1539883019129) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1539883023023) (:by |root) (:text |:edit-emotion)
                                                  |j $ %{} :Expr (:at 1539883023790) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1539883027778) (:by |root) (:text |if)
                                                      |j $ %{} :Expr (:at 1539883036375) (:by |root)
                                                        :data $ {}
                                                          |D $ %{} :Leaf (:at 1539883037611) (:by |root) (:text |nil?)
                                                          |T $ %{} :Expr (:at 1539883030524) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1539883034764) (:by |root) (:text |:data)
                                                              |j $ %{} :Leaf (:at 1539883036058) (:by |root) (:text |router)
                                                      |r $ %{} :Leaf (:at 1539883247158) (:by |root) (:text |nil)
                                                      |v $ %{} :Expr (:at 1539883041463) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1539883047076) (:by |root) (:text |get-in)
                                                          |j $ %{} :Leaf (:at 1539883073585) (:by |root) (:text |user)
                                                          |r $ %{} :Expr (:at 1539883048010) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1539883048281) (:by |root) (:text |[])
                                                              |j $ %{} :Leaf (:at 1539883063014) (:by |root) (:text |:emotions)
                                                              |r $ %{} :Expr (:at 1539883059008) (:by |root)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1539883059901) (:by |root) (:text |:data)
                                                                  |j $ %{} :Leaf (:at 1539883060802) (:by |root) (:text |router)
                                              |r $ %{} :Expr (:at 1524070643948) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1524070646898) (:by |root) (:text |:profile)
                                                  |j $ %{} :Expr (:at 1524070654495) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1524070662619) (:by |root) (:text |twig-members)
                                                      |j $ %{} :Expr (:at 1524070665615) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1524070670477) (:by |root) (:text |:sessions)
                                                          |j $ %{} :Leaf (:at 1524070672563) (:by |root) (:text |db)
                                                      |r $ %{} :Expr (:at 1524070673171) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1524070674094) (:by |root) (:text |:users)
                                                          |j $ %{} :Leaf (:at 1524070675166) (:by |root) (:text |db)
                                  |y $ %{} :Expr (:at 1523120222572) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1523120223864) (:by |root) (:text |:count)
                                      |j $ %{} :Expr (:at 1523120229051) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1523120230136) (:by |root) (:text |count)
                                          |j $ %{} :Expr (:at 1523120230346) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1523120232122) (:by |root) (:text |:sessions)
                                              |j $ %{} :Leaf (:at 1523120232500) (:by |root) (:text |db)
                                  |yT $ %{} :Expr (:at 1524279105545) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1533834715393) (:by |B1y7Rc-Zz) (:text |:color)
                                      |j $ %{} :Expr (:at 1524279111422) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1636982901276) (:by |B1y7Rc-Zz) (:text |rand-hex-color!)
                          |v $ %{} :Expr (:at 1636982892406) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1636982892891) (:by |B1y7Rc-Zz) (:text |{})
        |twig-members $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1524070676419) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1629572414071) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1524070676419) (:by |root) (:text |twig-members)
              |r $ %{} :Expr (:at 1524070676419) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1524070680419) (:by |root) (:text |sessions)
                  |j $ %{} :Leaf (:at 1524070708862) (:by |root) (:text |users)
              |v $ %{} :Expr (:at 1524070683188) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629572416325) (:by |B1y7Rc-Zz) (:text |->)
                  |j $ %{} :Leaf (:at 1524070692906) (:by |root) (:text |sessions)
                  |r $ %{} :Expr (:at 1524070693234) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629572424690) (:by |B1y7Rc-Zz) (:text |map-kv)
                      |j $ %{} :Expr (:at 1524070696021) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1524070696334) (:by |root) (:text |fn)
                          |j $ %{} :Expr (:at 1524070696681) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1524070697507) (:by |root) (:text |k)
                              |j $ %{} :Leaf (:at 1524070699358) (:by |root) (:text |session)
                          |r $ %{} :Expr (:at 1524070700350) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1524070701520) (:by |root) (:text |[])
                              |j $ %{} :Leaf (:at 1524070702142) (:by |root) (:text |k)
                              |r $ %{} :Expr (:at 1524070702968) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1524070705127) (:by |root) (:text |get-in)
                                  |j $ %{} :Leaf (:at 1524070714762) (:by |root) (:text |users)
                                  |r $ %{} :Expr (:at 1524070715457) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1524070716715) (:by |root) (:text |[])
                                      |j $ %{} :Expr (:at 1524070717257) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1524070720176) (:by |root) (:text |:user-id)
                                          |j $ %{} :Leaf (:at 1524070722292) (:by |root) (:text |session)
                                      |r $ %{} :Leaf (:at 1524070725752) (:by |root) (:text |:name)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541255553) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.twig.container)
            |r $ %{} :Expr (:at 1500541255553) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:require)
                |r $ %{} :Expr (:at 1500541255553) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.twig.user)
                    |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541255553) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |twig-user)
                |v $ %{} :Expr (:at 1636982908083) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1636982908083) (:by |B1y7Rc-Zz) (:text |calcit.std.rand)
                    |j $ %{} :Leaf (:at 1636982908083) (:by |B1y7Rc-Zz) (:text |:refer)
                    |r $ %{} :Expr (:at 1636982908083) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1636982908083) (:by |B1y7Rc-Zz) (:text |rand-hex-color!)
    |app.twig.user $ %{} :FileEntry
      :defs $ {}
        |twig-user $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1629572356219) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |twig-user)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |user)
              |v $ %{} :Expr (:at 1537378003804) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1537378004895) (:by |root) (:text |->)
                  |L $ %{} :Leaf (:at 1537378015860) (:by |root) (:text |user)
                  |T $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |dissoc)
                      |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:password)
                  |j $ %{} :Expr (:at 1537378018143) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1537378019996) (:by |root) (:text |dissoc)
                      |j $ %{} :Leaf (:at 1537378021600) (:by |root) (:text |:moods)
                  |r $ %{} :Expr (:at 1537378022599) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1537378024309) (:by |root) (:text |dissoc)
                      |j $ %{} :Leaf (:at 1537378036122) (:by |root) (:text |:archived-moods)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541255553) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.twig.user)
            |r $ %{} :Expr (:at 1500541255553) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500541255553) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1511004268753) (:by |root) (:text |recollect.twig)
                    |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541255553) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1511004273474) (:by |root) (:text |deftwig)
    |app.updater $ %{} :FileEntry
      :defs $ {}
        |updater $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |updater)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op)
                  |v $ %{} :Leaf (:at 1517930722619) (:by |root) (:text |sid)
                  |x $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-id)
                  |y $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1700501120484) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |tag-match)
                  |b $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |op)
                  |h $ %{} :Expr (:at 1700501120484) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1700501120484) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |:session/connect)
                      |b $ %{} :Expr (:at 1700501120484) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |session/connect)
                          |b $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |db)
                          |l $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |sid)
                          |o $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |op-id)
                          |q $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |op-time)
                  |l $ %{} :Expr (:at 1700501120484) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1700501120484) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |:session/disconnect)
                      |b $ %{} :Expr (:at 1700501120484) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |session/disconnect)
                          |b $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |db)
                          |l $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |sid)
                          |o $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |op-id)
                          |q $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |op-time)
                  |o $ %{} :Expr (:at 1700501120484) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1700501120484) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |:session/remove-message)
                          |b $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |op-data)
                      |b $ %{} :Expr (:at 1700501171967) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |session/remove-message)
                          |b $ %{} :Leaf (:at 1700501178511) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Leaf (:at 1700501178511) (:by |B1y7Rc-Zz) (:text |op-data)
                          |l $ %{} :Leaf (:at 1700501178511) (:by |B1y7Rc-Zz) (:text |sid)
                          |o $ %{} :Leaf (:at 1700501178511) (:by |B1y7Rc-Zz) (:text |op-id)
                          |q $ %{} :Leaf (:at 1700501178511) (:by |B1y7Rc-Zz) (:text |op-time)
                  |q $ %{} :Expr (:at 1700501120484) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1700501120484) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |:user/log-in)
                          |b $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |op-data)
                      |b $ %{} :Expr (:at 1700501120484) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |user/log-in)
                          |b $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |op-data)
                          |l $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |sid)
                          |o $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |op-id)
                          |q $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |op-time)
                  |s $ %{} :Expr (:at 1700501120484) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1700501120484) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |:user/sign-up)
                          |b $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |op-data)
                      |b $ %{} :Expr (:at 1700501120484) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |user/sign-up)
                          |b $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |op-data)
                          |l $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |sid)
                          |o $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |op-id)
                          |q $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |op-time)
                  |t $ %{} :Expr (:at 1700501120484) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1700501120484) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |:user/log-out)
                          |b $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |op-data)
                      |b $ %{} :Expr (:at 1700501120484) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |user/log-out)
                          |b $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |op-data)
                          |l $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |sid)
                          |o $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |op-id)
                          |q $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |op-time)
                  |u $ %{} :Expr (:at 1700501120484) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1700501120484) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |:router/change)
                          |b $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |op-data)
                      |b $ %{} :Expr (:at 1700501120484) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |router/change)
                          |b $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |op-data)
                          |l $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |sid)
                          |o $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |op-id)
                          |q $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |op-time)
                  |v $ %{} :Expr (:at 1700501120484) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1700501120484) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |:emotion/create-one)
                          |b $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |op-data)
                      |b $ %{} :Expr (:at 1700501120484) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |emotion/create-one)
                          |b $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |op-data)
                          |l $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |sid)
                          |o $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |op-id)
                          |q $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |op-time)
                  |w $ %{} :Expr (:at 1700501120484) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1700501120484) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |:emotion/remove-one)
                          |b $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |op-data)
                      |b $ %{} :Expr (:at 1700501120484) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |emotion/remove-one)
                          |b $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |op-data)
                          |l $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |sid)
                          |o $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |op-id)
                          |q $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |op-time)
                  |x $ %{} :Expr (:at 1700501120484) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1700501120484) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |:mood/create-one)
                          |b $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |op-data)
                      |b $ %{} :Expr (:at 1700501120484) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |mood/create-one)
                          |b $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |op-data)
                          |l $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |sid)
                          |o $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |op-id)
                          |q $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |op-time)
                  |y $ %{} :Expr (:at 1700501120484) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1700501120484) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |:mood/remove-one)
                          |b $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |op-data)
                      |b $ %{} :Expr (:at 1700501120484) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |mood/remove-one)
                          |b $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |op-data)
                          |l $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |sid)
                          |o $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |op-id)
                          |q $ %{} :Leaf (:at 1700501120484) (:by |B1y7Rc-Zz) (:text |op-time)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541255553) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.updater)
            |r $ %{} :Expr (:at 1500541255553) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500541255553) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.updater.session)
                    |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
                |r $ %{} :Expr (:at 1500541255553) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.updater.user)
                    |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |user)
                |v $ %{} :Expr (:at 1500541255553) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.updater.router)
                    |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |router)
                |y $ %{} :Expr (:at 1529231005993) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1529231006285) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1529231007723) (:by |root) (:text |app.schema)
                    |r $ %{} :Leaf (:at 1529231008972) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1529231009860) (:by |root) (:text |schema)
                |yT $ %{} :Expr (:at 1529231108810) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1529231110305) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1529231113905) (:by |root) (:text |respo-message.updater)
                    |r $ %{} :Leaf (:at 1529231114617) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1529231114849) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1529231116379) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1529231118760) (:by |root) (:text |update-messages)
                |yj $ %{} :Expr (:at 1539884975163) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1539884975458) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1539884978797) (:by |root) (:text |app.updater.emotion)
                    |r $ %{} :Leaf (:at 1539884979377) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1539884981727) (:by |root) (:text |emotion)
                |yr $ %{} :Expr (:at 1539884975163) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1539884975458) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1540043029535) (:by |root) (:text |app.updater.mood)
                    |r $ %{} :Leaf (:at 1539884979377) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1540043031240) (:by |root) (:text |mood)
    |app.updater.emotion $ %{} :FileEntry
      :defs $ {}
        |create-one $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1539884946588) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1539884946588) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1539884946588) (:by |root) (:text |create-one)
              |r $ %{} :Expr (:at 1539884960145) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539884960145) (:by |root) (:text |db)
                  |j $ %{} :Leaf (:at 1539884960145) (:by |root) (:text |op-data)
                  |r $ %{} :Leaf (:at 1539884960145) (:by |root) (:text |sid)
                  |v $ %{} :Leaf (:at 1539884960145) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1539884960145) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1539884984946) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539884985463) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1539884985695) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1539884986027) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539884996130) (:by |root) (:text |user-id)
                          |j $ %{} :Expr (:at 1539885000457) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539885001457) (:by |root) (:text |get-in)
                              |j $ %{} :Leaf (:at 1539885003178) (:by |root) (:text |db)
                              |r $ %{} :Expr (:at 1539885003517) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539885003911) (:by |root) (:text |[])
                                  |j $ %{} :Leaf (:at 1539885005386) (:by |root) (:text |:sessions)
                                  |r $ %{} :Leaf (:at 1539885007214) (:by |root) (:text |sid)
                                  |v $ %{} :Leaf (:at 1539885009645) (:by |root) (:text |:user-id)
                  |r $ %{} :Expr (:at 1540036876009) (:by |root)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1540036878628) (:by |root) (:text |update-in)
                      |L $ %{} :Leaf (:at 1540036879809) (:by |root) (:text |db)
                      |P $ %{} :Expr (:at 1540036880100) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1540036881574) (:by |root) (:text |[])
                          |j $ %{} :Leaf (:at 1540036882361) (:by |root) (:text |:users)
                          |r $ %{} :Leaf (:at 1540036884274) (:by |root) (:text |user-id)
                          |v $ %{} :Leaf (:at 1540036886496) (:by |root) (:text |:emotions)
                      |T $ %{} :Expr (:at 1540036890882) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1540036891648) (:by |root) (:text |fn)
                          |L $ %{} :Expr (:at 1540036891945) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1540036894108) (:by |root) (:text |emotions)
                          |T $ %{} :Expr (:at 1540036857521) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1540036858069) (:by |root) (:text |if)
                              |L $ %{} :Expr (:at 1540036858327) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1540036859351) (:by |root) (:text |some?)
                                  |j $ %{} :Expr (:at 1540036861354) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1540036862170) (:by |root) (:text |:id)
                                      |j $ %{} :Leaf (:at 1540036864318) (:by |root) (:text |op-data)
                              |P $ %{} :Expr (:at 1540036866672) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1540036913455) (:by |root) (:text |update)
                                  |j $ %{} :Leaf (:at 1540036901169) (:by |root) (:text |emotions)
                                  |r $ %{} :Expr (:at 1540036903281) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1540036903732) (:by |root) (:text |:id)
                                      |j $ %{} :Leaf (:at 1540036905513) (:by |root) (:text |op-data)
                                  |v $ %{} :Expr (:at 1540036915456) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1540036915775) (:by |root) (:text |fn)
                                      |j $ %{} :Expr (:at 1540036916031) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1540036918863) (:by |root) (:text |x)
                                      |r $ %{} :Expr (:at 1540036919290) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1540036920010) (:by |root) (:text |merge)
                                          |j $ %{} :Leaf (:at 1540036920375) (:by |root) (:text |x)
                                          |r $ %{} :Leaf (:at 1540036923183) (:by |root) (:text |op-data)
                              |T $ %{} :Expr (:at 1539885011353) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1540036931878) (:by |root) (:text |assoc)
                                  |h $ %{} :Leaf (:at 1540036936904) (:by |root) (:text |emotions)
                                  |o $ %{} :Leaf (:at 1540036935388) (:by |root) (:text |op-id)
                                  |v $ %{} :Expr (:at 1539885092625) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539885092625) (:by |root) (:text |merge)
                                      |j $ %{} :Leaf (:at 1539885092625) (:by |root) (:text |schema/emotion)
                                      |r $ %{} :Leaf (:at 1539885092625) (:by |root) (:text |op-data)
                                      |v $ %{} :Expr (:at 1539885092625) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539885092625) (:by |root) (:text |{})
                                          |j $ %{} :Expr (:at 1539885092625) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1539885092625) (:by |root) (:text |:id)
                                              |j $ %{} :Leaf (:at 1539885092625) (:by |root) (:text |op-id)
        |remove-one $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1540037232770) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1540037232770) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1540037232770) (:by |root) (:text |remove-one)
              |r $ %{} :Expr (:at 1540037234164) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1540037234164) (:by |root) (:text |db)
                  |j $ %{} :Leaf (:at 1540037234164) (:by |root) (:text |op-data)
                  |r $ %{} :Leaf (:at 1540037234164) (:by |root) (:text |sid)
                  |v $ %{} :Leaf (:at 1540037234164) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1540037234164) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1540037234164) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1540037234164) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1540037234164) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1540037234164) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1540037234164) (:by |root) (:text |user-id)
                          |j $ %{} :Expr (:at 1540037234164) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1540037234164) (:by |root) (:text |get-in)
                              |j $ %{} :Leaf (:at 1540037234164) (:by |root) (:text |db)
                              |r $ %{} :Expr (:at 1540037234164) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1540037234164) (:by |root) (:text |[])
                                  |j $ %{} :Leaf (:at 1540037234164) (:by |root) (:text |:sessions)
                                  |r $ %{} :Leaf (:at 1540037234164) (:by |root) (:text |sid)
                                  |v $ %{} :Leaf (:at 1540037234164) (:by |root) (:text |:user-id)
                  |r $ %{} :Expr (:at 1540037234164) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1540037234164) (:by |root) (:text |update-in)
                      |j $ %{} :Leaf (:at 1540037234164) (:by |root) (:text |db)
                      |r $ %{} :Expr (:at 1540037234164) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1540037234164) (:by |root) (:text |[])
                          |j $ %{} :Leaf (:at 1540037234164) (:by |root) (:text |:users)
                          |r $ %{} :Leaf (:at 1540037234164) (:by |root) (:text |user-id)
                          |v $ %{} :Leaf (:at 1540037234164) (:by |root) (:text |:emotions)
                      |v $ %{} :Expr (:at 1540037234164) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1540037234164) (:by |root) (:text |fn)
                          |j $ %{} :Expr (:at 1540037234164) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1540037234164) (:by |root) (:text |emotions)
                          |r $ %{} :Expr (:at 1540037248274) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1540037249984) (:by |root) (:text |dissoc)
                              |j $ %{} :Leaf (:at 1540037251013) (:by |root) (:text |emotions)
                              |r $ %{} :Leaf (:at 1540037330356) (:by |root) (:text |op-data)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1539884941688) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1539884941688) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1539884941688) (:by |root) (:text |app.updater.emotion)
            |r $ %{} :Expr (:at 1539885039317) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1539885040111) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1539885040306) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1539885040507) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1539885043169) (:by |root) (:text |app.schema)
                    |r $ %{} :Leaf (:at 1539885043741) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1539885046770) (:by |root) (:text |schema)
    |app.updater.mood $ %{} :FileEntry
      :defs $ {}
        |create-one $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1540042843238) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1540042843238) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1540042843238) (:by |root) (:text |create-one)
              |r $ %{} :Expr (:at 1540042845253) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1540042845253) (:by |root) (:text |db)
                  |j $ %{} :Leaf (:at 1540042845253) (:by |root) (:text |op-data)
                  |r $ %{} :Leaf (:at 1540042845253) (:by |root) (:text |sid)
                  |v $ %{} :Leaf (:at 1540042845253) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1540042845253) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1540042845253) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1540042845253) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1540042845253) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1540042845253) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1540042845253) (:by |root) (:text |user-id)
                          |j $ %{} :Expr (:at 1540042845253) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1540042845253) (:by |root) (:text |get-in)
                              |j $ %{} :Leaf (:at 1540042845253) (:by |root) (:text |db)
                              |r $ %{} :Expr (:at 1540042845253) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1540042845253) (:by |root) (:text |[])
                                  |j $ %{} :Leaf (:at 1540042845253) (:by |root) (:text |:sessions)
                                  |r $ %{} :Leaf (:at 1540042845253) (:by |root) (:text |sid)
                                  |v $ %{} :Leaf (:at 1540042845253) (:by |root) (:text |:user-id)
                  |r $ %{} :Expr (:at 1540042845253) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1540042963482) (:by |root) (:text |assoc-in)
                      |j $ %{} :Leaf (:at 1540042845253) (:by |root) (:text |db)
                      |r $ %{} :Expr (:at 1540042845253) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1540042845253) (:by |root) (:text |[])
                          |j $ %{} :Leaf (:at 1540042845253) (:by |root) (:text |:users)
                          |r $ %{} :Leaf (:at 1540042845253) (:by |root) (:text |user-id)
                          |v $ %{} :Leaf (:at 1540042953031) (:by |root) (:text |:moods)
                          |x $ %{} :Leaf (:at 1540042967654) (:by |root) (:text |op-id)
                      |x $ %{} :Expr (:at 1540043369246) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1540043370048) (:by |root) (:text |merge)
                          |j $ %{} :Leaf (:at 1540043372893) (:by |root) (:text |schema/mood)
                          |n $ %{} :Leaf (:at 1540043401783) (:by |root) (:text |op-data)
                          |r $ %{} :Expr (:at 1540043373144) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1540043373478) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1540043373717) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1540043374088) (:by |root) (:text |:id)
                                  |j $ %{} :Leaf (:at 1540043375407) (:by |root) (:text |op-id)
                              |r $ %{} :Expr (:at 1540043375743) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1540043376374) (:by |root) (:text |:time)
                                  |j $ %{} :Leaf (:at 1540043378178) (:by |root) (:text |op-time)
        |remove-one $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1540056402314) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1540056402314) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1540056402314) (:by |root) (:text |remove-one)
              |r $ %{} :Expr (:at 1540056403811) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1540056403811) (:by |root) (:text |db)
                  |j $ %{} :Leaf (:at 1540056403811) (:by |root) (:text |op-data)
                  |r $ %{} :Leaf (:at 1540056403811) (:by |root) (:text |sid)
                  |v $ %{} :Leaf (:at 1540056403811) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1540056403811) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1540056403811) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1540056403811) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1540056403811) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1540056403811) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1540056403811) (:by |root) (:text |user-id)
                          |j $ %{} :Expr (:at 1540056403811) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1540056403811) (:by |root) (:text |get-in)
                              |j $ %{} :Leaf (:at 1540056403811) (:by |root) (:text |db)
                              |r $ %{} :Expr (:at 1540056403811) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1540056403811) (:by |root) (:text |[])
                                  |j $ %{} :Leaf (:at 1540056403811) (:by |root) (:text |:sessions)
                                  |r $ %{} :Leaf (:at 1540056403811) (:by |root) (:text |sid)
                                  |v $ %{} :Leaf (:at 1540056403811) (:by |root) (:text |:user-id)
                  |r $ %{} :Expr (:at 1540056403811) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1540056410532) (:by |root) (:text |update-in)
                      |j $ %{} :Leaf (:at 1540056403811) (:by |root) (:text |db)
                      |r $ %{} :Expr (:at 1540056403811) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1540056403811) (:by |root) (:text |[])
                          |j $ %{} :Leaf (:at 1540056403811) (:by |root) (:text |:users)
                          |r $ %{} :Leaf (:at 1540056403811) (:by |root) (:text |user-id)
                          |v $ %{} :Leaf (:at 1540056403811) (:by |root) (:text |:moods)
                      |t $ %{} :Expr (:at 1540056413376) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1540056413735) (:by |root) (:text |fn)
                          |j $ %{} :Expr (:at 1540056414224) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1540056414978) (:by |root) (:text |moods)
                          |r $ %{} :Expr (:at 1540056415537) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1540056416426) (:by |root) (:text |dissoc)
                              |j $ %{} :Leaf (:at 1540056417306) (:by |root) (:text |moods)
                              |r $ %{} :Leaf (:at 1540056422256) (:by |root) (:text |op-data)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1540042828728) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1540042828728) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1540042828728) (:by |root) (:text |app.updater.mood)
            |r $ %{} :Expr (:at 1540042986045) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1540042986793) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1540042986928) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1540042987148) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1540042992474) (:by |root) (:text |app.schema)
                    |r $ %{} :Leaf (:at 1540042992891) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1540042993614) (:by |root) (:text |schema)
    |app.updater.router $ %{} :FileEntry
      :defs $ {}
        |change $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |change)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-data)
                  |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
                  |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |assoc-in)
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:sessions)
                      |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
                      |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:router)
                  |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-data)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541255553) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.updater.router)
    |app.updater.session $ %{} :FileEntry
      :defs $ {}
        |connect $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |connect)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
                  |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |assoc-in)
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:sessions)
                      |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
                  |v $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |merge)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |schema/session)
                      |r $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1500541255553) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:id)
                              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
        |disconnect $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |disconnect)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
                  |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |update)
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:sessions)
                  |v $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |fn)
                      |j $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
                      |r $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |dissoc)
                          |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
                          |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
        |remove-message $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1529231499908) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1529231499908) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1529231499908) (:by |root) (:text |remove-message)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-data)
                  |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
                  |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1529231506714) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1529231507936) (:by |root) (:text |update-in)
                  |j $ %{} :Leaf (:at 1529231509725) (:by |root) (:text |db)
                  |r $ %{} :Expr (:at 1529231509958) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1529231510376) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1529231511756) (:by |root) (:text |:sessions)
                      |r $ %{} :Leaf (:at 1529231512509) (:by |root) (:text |sid)
                      |v $ %{} :Leaf (:at 1529231515700) (:by |root) (:text |:messages)
                  |v $ %{} :Expr (:at 1529231534326) (:by |root)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1529231534991) (:by |root) (:text |fn)
                      |L $ %{} :Expr (:at 1529231535248) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1529231536189) (:by |root) (:text |messages)
                      |T $ %{} :Expr (:at 1529231516827) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1529231517957) (:by |root) (:text |dissoc)
                          |j $ %{} :Leaf (:at 1529231519342) (:by |root) (:text |messages)
                          |r $ %{} :Expr (:at 1529231521395) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1529231522521) (:by |root) (:text |:id)
                              |j $ %{} :Leaf (:at 1529231524125) (:by |root) (:text |op-data)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541255553) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.updater.session)
            |r $ %{} :Expr (:at 1500541255553) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500541255553) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.schema)
                    |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |schema)
    |app.updater.user $ %{} :FileEntry
      :defs $ {}
        |log-in $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629572285339) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |log-in)
              |r $ %{} :Expr (:at 1629572285339) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |db)
                  |j $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |op-data)
                  |r $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |sid)
                  |v $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |op-id)
                  |x $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |op-time)
              |v $ %{} :Expr (:at 1629572285339) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |let-sugar)
                  |j $ %{} :Expr (:at 1629572285339) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1629572285339) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Expr (:at 1629572285339) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |[])
                              |j $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |username)
                              |r $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |password)
                          |j $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |op-data)
                      |j $ %{} :Expr (:at 1629572285339) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |maybe-user)
                          |j $ %{} :Expr (:at 1629572285339) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |->)
                              |j $ %{} :Expr (:at 1629572285339) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |:users)
                                  |j $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |db)
                              |r $ %{} :Expr (:at 1629572285339) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |vals)
                              |v $ %{} :Expr (:at 1629572285339) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |.to-list)
                              |x $ %{} :Expr (:at 1629572285339) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |find)
                                  |j $ %{} :Expr (:at 1629572285339) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |fn)
                                      |j $ %{} :Expr (:at 1629572285339) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |user)
                                      |r $ %{} :Expr (:at 1629572285339) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |and)
                                          |j $ %{} :Expr (:at 1629572285339) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |=)
                                              |j $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |username)
                                              |r $ %{} :Expr (:at 1629572285339) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |:name)
                                                  |j $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |user)
                  |r $ %{} :Expr (:at 1629572285339) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |update-in)
                      |j $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |db)
                      |r $ %{} :Expr (:at 1629572285339) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |[])
                          |j $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |:sessions)
                          |r $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |sid)
                      |v $ %{} :Expr (:at 1629572285339) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |fn)
                          |j $ %{} :Expr (:at 1629572285339) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |session)
                          |r $ %{} :Expr (:at 1629572285339) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |if)
                              |j $ %{} :Expr (:at 1629572285339) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |some?)
                                  |j $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |maybe-user)
                              |r $ %{} :Expr (:at 1629572285339) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |if)
                                  |j $ %{} :Expr (:at 1629572285339) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |=)
                                      |j $ %{} :Expr (:at 1629572285339) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |md5)
                                          |j $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |password)
                                      |r $ %{} :Expr (:at 1629572285339) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |:password)
                                          |j $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |maybe-user)
                                  |r $ %{} :Expr (:at 1629572285339) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |assoc)
                                      |j $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |session)
                                      |r $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |:user-id)
                                      |v $ %{} :Expr (:at 1629572285339) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |:id)
                                          |j $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |maybe-user)
                                  |v $ %{} :Expr (:at 1629572285339) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |update)
                                      |j $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |session)
                                      |r $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |:messages)
                                      |v $ %{} :Expr (:at 1629572285339) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |fn)
                                          |j $ %{} :Expr (:at 1629572285339) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |messages)
                                          |r $ %{} :Expr (:at 1629572285339) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |assoc)
                                              |j $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |messages)
                                              |r $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |op-id)
                                              |v $ %{} :Expr (:at 1629572285339) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |{})
                                                  |j $ %{} :Expr (:at 1629572285339) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |:id)
                                                      |j $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |op-id)
                                                  |r $ %{} :Expr (:at 1629572285339) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |:text)
                                                      |j $ %{} :Expr (:at 1629572285339) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |str)
                                                          |j $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text "|\"Wrong password for ")
                                                          |r $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |username)
                              |v $ %{} :Expr (:at 1629572285339) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |update)
                                  |j $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |session)
                                  |r $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |:messages)
                                  |v $ %{} :Expr (:at 1629572285339) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |fn)
                                      |j $ %{} :Expr (:at 1629572285339) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |messages)
                                      |r $ %{} :Expr (:at 1629572285339) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |assoc)
                                          |j $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |messages)
                                          |r $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |op-id)
                                          |v $ %{} :Expr (:at 1629572285339) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |{})
                                              |j $ %{} :Expr (:at 1629572285339) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |:id)
                                                  |j $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |op-id)
                                              |r $ %{} :Expr (:at 1629572285339) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |:text)
                                                  |j $ %{} :Expr (:at 1629572285339) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |str)
                                                      |j $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text "|\"No user named: ")
                                                      |r $ %{} :Leaf (:at 1629572285339) (:by |B1y7Rc-Zz) (:text |username)
        |log-out $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |log-out)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-data)
                  |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
                  |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |assoc-in)
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:sessions)
                      |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
                      |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:user-id)
                  |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
        |reset-mark $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1537033571304) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1537033571304) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1537033571304) (:by |root) (:text |reset-mark)
              |r $ %{} :Expr (:at 1537033579618) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1537033579618) (:by |root) (:text |db)
                  |j $ %{} :Leaf (:at 1537033579618) (:by |root) (:text |op-data)
                  |r $ %{} :Leaf (:at 1537033579618) (:by |root) (:text |sid)
                  |v $ %{} :Leaf (:at 1537033579618) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1537033579618) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1537033698440) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1537033699058) (:by |root) (:text |let)
                  |L $ %{} :Expr (:at 1537033699252) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1537033699435) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1537033703384) (:by |root) (:text |user-id)
                          |j $ %{} :Expr (:at 1537033703641) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1537033704553) (:by |root) (:text |get-in)
                              |j $ %{} :Leaf (:at 1537033705738) (:by |root) (:text |db)
                              |r $ %{} :Expr (:at 1537033706982) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1537033707157) (:by |root) (:text |[])
                                  |j $ %{} :Leaf (:at 1537033709874) (:by |root) (:text |:sessions)
                                  |r $ %{} :Leaf (:at 1537033711024) (:by |root) (:text |sid)
                                  |v $ %{} :Leaf (:at 1537033712828) (:by |root) (:text |:user-id)
                  |T $ %{} :Expr (:at 1537033584736) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1537033592665) (:by |root) (:text |assoc-in)
                      |j $ %{} :Leaf (:at 1537033584736) (:by |root) (:text |db)
                      |r $ %{} :Expr (:at 1537033584736) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1537033584736) (:by |root) (:text |[])
                          |j $ %{} :Leaf (:at 1537033715873) (:by |root) (:text |:users)
                          |r $ %{} :Leaf (:at 1537033717907) (:by |root) (:text |user-id)
                          |v $ %{} :Leaf (:at 1537033596321) (:by |root) (:text |:history-mark)
                      |v $ %{} :Leaf (:at 1537033599487) (:by |root) (:text |op-time)
        |sign-up $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629572297901) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |sign-up)
              |r $ %{} :Expr (:at 1629572297901) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |db)
                  |j $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |op-data)
                  |r $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |sid)
                  |v $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |op-id)
                  |x $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |op-time)
              |v $ %{} :Expr (:at 1629572297901) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |let-sugar)
                  |j $ %{} :Expr (:at 1629572297901) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1629572297901) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Expr (:at 1629572297901) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |[])
                              |j $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |username)
                              |r $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |password)
                          |j $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |op-data)
                      |j $ %{} :Expr (:at 1629572297901) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |maybe-user)
                          |j $ %{} :Expr (:at 1629572297901) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |find)
                              |j $ %{} :Expr (:at 1629572297901) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |vals)
                                  |j $ %{} :Expr (:at 1629572297901) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |:users)
                                      |j $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |db)
                              |r $ %{} :Expr (:at 1629572297901) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |fn)
                                  |j $ %{} :Expr (:at 1629572297901) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |user)
                                  |r $ %{} :Expr (:at 1629572297901) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |=)
                                      |j $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |username)
                                      |r $ %{} :Expr (:at 1629572297901) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |:name)
                                          |j $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |user)
                  |r $ %{} :Expr (:at 1629572297901) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |if)
                      |j $ %{} :Expr (:at 1629572297901) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |some?)
                          |j $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |maybe-user)
                      |r $ %{} :Expr (:at 1629572297901) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |update-in)
                          |j $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |db)
                          |r $ %{} :Expr (:at 1629572297901) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |[])
                              |j $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |:sessions)
                              |r $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |sid)
                              |v $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |:messages)
                          |v $ %{} :Expr (:at 1629572297901) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |fn)
                              |j $ %{} :Expr (:at 1629572297901) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |messages)
                              |r $ %{} :Expr (:at 1629572297901) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |assoc)
                                  |j $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |messages)
                                  |r $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |op-id)
                                  |v $ %{} :Expr (:at 1629572297901) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |{})
                                      |j $ %{} :Expr (:at 1629572297901) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |:id)
                                          |j $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |op-id)
                                      |r $ %{} :Expr (:at 1629572297901) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |:text)
                                          |j $ %{} :Expr (:at 1629572297901) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |str)
                                              |j $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text "|\"Name is taken: ")
                                              |r $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |username)
                      |v $ %{} :Expr (:at 1629572297901) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |->)
                          |j $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |db)
                          |r $ %{} :Expr (:at 1629572297901) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |assoc-in)
                              |j $ %{} :Expr (:at 1629572297901) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |[])
                                  |j $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |:sessions)
                                  |r $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |sid)
                                  |v $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |:user-id)
                              |r $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |op-id)
                          |v $ %{} :Expr (:at 1629572297901) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |assoc-in)
                              |j $ %{} :Expr (:at 1629572297901) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |[])
                                  |j $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |:users)
                                  |r $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |op-id)
                              |r $ %{} :Expr (:at 1629573440015) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1629573440995) (:by |B1y7Rc-Zz) (:text |merge)
                                  |L $ %{} :Leaf (:at 1629573446121) (:by |B1y7Rc-Zz) (:text |schema/user)
                                  |T $ %{} :Expr (:at 1629572297901) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |{})
                                      |j $ %{} :Expr (:at 1629572297901) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |:id)
                                          |j $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |op-id)
                                      |r $ %{} :Expr (:at 1629572297901) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |:name)
                                          |j $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |username)
                                      |v $ %{} :Expr (:at 1629572297901) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |:nickname)
                                          |j $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |username)
                                      |x $ %{} :Expr (:at 1629572297901) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |:password)
                                          |j $ %{} :Expr (:at 1629572297901) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |md5)
                                              |j $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |password)
                                      |y $ %{} :Expr (:at 1629572297901) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |:avatar)
                                          |j $ %{} :Leaf (:at 1629572297901) (:by |B1y7Rc-Zz) (:text |nil)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541255553) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.updater.user)
            |r $ %{} :Expr (:at 1500541255553) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:require)
                |r $ %{} :Expr (:at 1636982923137) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1636982923137) (:by |B1y7Rc-Zz) (:text |calcit.std.hash)
                    |j $ %{} :Leaf (:at 1636982923137) (:by |B1y7Rc-Zz) (:text |:refer)
                    |r $ %{} :Expr (:at 1636982923137) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1636982923137) (:by |B1y7Rc-Zz) (:text |md5)
                |v $ %{} :Expr (:at 1629573449043) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629573450866) (:by |B1y7Rc-Zz) (:text |app.schema)
                    |j $ %{} :Leaf (:at 1629573452444) (:by |B1y7Rc-Zz) (:text |:as)
                    |r $ %{} :Leaf (:at 1629573455019) (:by |B1y7Rc-Zz) (:text |schema)
    |app.util.dom $ %{} :FileEntry
      :defs $ {}
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1537032760294) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1537032760294) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1537032760294) (:by |root) (:text |app.util.dom)
  :users $ {}
    |B1y7Rc-Zz $ {} (:avatar nil) (:id |B1y7Rc-Zz) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
    |root $ {} (:avatar nil) (:id |root) (:name |root) (:nickname |root) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
