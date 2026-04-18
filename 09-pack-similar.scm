; P09
; I have a feeling that this is a really bad solution

(define (pack l)
  (define (pack-helper _l r)
    (cond
      ((null? _l) r)
      ((and (not (null? r))
            (eqv? (car _l) (car (car r))))
       (pack-helper (cdr _l)
                    (cons (cons (car _l) (car r)) (cdr r))))
      (else
       (pack-helper (cdr _l)
                    (cons (list (car _l)) r)))))
  (reverse (pack-helper l '())))

(pack '())
(pack '(a b c d))
(pack '(a a a b b a c))
(pack '(a a a a b c c a a d e e e e))
