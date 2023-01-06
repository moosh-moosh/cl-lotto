;;;; cl-lotto.lisp

(in-package #:cl-lotto)

(defun make-number-pool (n)
  "Return a vector of numbers from 1 to n+1."
  (range 1 (1+ n)))

(defun make-row (n number-pool)
  (take n (shuffle number-pool)))

(defun make-row-lotto ()
  (make-row 7 (make-number-pool 40)))

(defun print-row (row)
  (format nil "~{~a~^, ~}" (coerce row 'list)))
