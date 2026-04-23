(define (range n m)
  (cond ((= n m) (list m))
        ((< n m) (cons n (range (+ n 1) m)))
        (else (cons n (range (- n 1) m)))))

(range 5 1)
