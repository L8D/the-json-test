(ns main-clj.core
  (:gen-class)
  (:require [clojure.data.json :as json]))

(defn print-players [data]
  (doseq [player (data :players)]
    (println (str (player :name) " is level " (player :level)))))

(defn write-data [data]
  (->> (with-out-str (json/pprint data :escape-slash false))
       (#(str % "\n"))
       (spit "../data.json")))

(defn -main
  [& args]
  (let [data (json/read-str (slurp "../data.json") :key-fn keyword)]
    (print-players data)
    (write-data data)))
