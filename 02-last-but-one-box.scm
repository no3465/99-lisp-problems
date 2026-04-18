; P02
(define (last-but-one-box l)
  (if (or (null? l)
          (null? (cdr l))
          (null? (cdr (cdr l))))
      l
      (last-but-one-box (cdr l))))

(last-but-one-box '())
(last-but-one-box '(a))
(last-but-one-box '(a b c d))
(last-but-one-box '(a b))
