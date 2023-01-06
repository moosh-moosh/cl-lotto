;;;; cl-lotto.asd

(asdf:defsystem #:cl-lotto
  :description "Just something simple to learn how systems and packages work."
  :author "Ossi Pettersson <ossi@moosh.dev>"
  :license  "MIT"
  :version "0.0.1"
  :serial t
  :components ((:file "package")
               (:file "utils")
               (:file "cl-lotto")))
