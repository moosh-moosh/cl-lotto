;;;; package.lisp

(defpackage #:cl-lotto
  (:use #:cl #:utils))

(defpackage #:utils
  (:use #:cl)
  (:export :range
           :shuffle
           :take))
