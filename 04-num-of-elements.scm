; PO4

(define (num-of-elements l)
  (if (null? l)
      0
      (+ 1 (num-of-elements (cdr l)))))

; test examples
(num-of-elements '())
(num-of-elements '(a))
(num-of-elements '(a b))
(num-of-elements '(a b d c))
