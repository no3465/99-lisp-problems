; P05

(define (reverse-list l)
  (define (helper _l r)
    (if (null? _l)
        r
        (helper (cdr _l) (cons (car _l) r))))
  (helper l '()))

(reverse-list '())
(reverse-list '(a))
(reverse-list '(a b))
(reverse-list '(a b c))
(reverse-list '(a b c d e f)) 
