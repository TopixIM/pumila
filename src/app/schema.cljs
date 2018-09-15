
(ns app.schema )

(def database {:sessions {}, :users {}})

(def message {:id nil, :text "", :time 0, :kind :mood})

(def notification {:id nil, :kind nil, :text nil})

(def router {:name nil, :title nil, :data {}, :router nil})

(def session
  {:user-id nil,
   :id nil,
   :nickname nil,
   :router {:name :home, :data nil, :router nil},
   :messages {}})

(def user
  {:name nil,
   :id nil,
   :nickname nil,
   :avatar nil,
   :password nil,
   :moods {},
   :archived {},
   :history-mark 0})
