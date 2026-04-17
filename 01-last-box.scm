; P01

(define (my-last l)
  (if (or (null? l)
          (null? (cdr l)))
      l
    (my-last (cdr l))))

(my-last '())
(my-last '(a))
(my-last '(a b c d e))