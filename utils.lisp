(in-package #:utils)

(defun nshuffle (vec)
  "Destructive Fisher-Yates shuffle."
  (loop :for i :downfrom (1- (length vec)) :to 1
        :for other := (random (1+ i))
        :do (unless (= i other)
              (rotatef (aref vec i)
                       (aref vec other))))
  vec)

(defun shuffle (vec)
  "Shuffle the vector VEC. Does not modify VEC."
  (nshuffle (copy-seq vec)))

(defun range (x &optional y)
  (let* ((start (if y x 0))
         (end (or y x))
         (vec (make-array (- end start) :fill-pointer 0)))
    (loop :for i :from start :below end
          :do (vector-push i vec))
    vec))

(defun take (n vec)
  "Take first N elements from VEC."
  (if (> n (length vec))
      vec
      (subseq vec 0 n)))
