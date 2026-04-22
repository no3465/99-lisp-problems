; P14

#|
Example:
(dupli '(a b c c d))
(a a b b c c c c d d)

Base cases:
'() -> '()
'(a) -> '(a a)
|#

(define (dupli l)
  (cond ((null? l) l)
        (else (cons (car l)
                    (cons  (car l)
                           (dupli (cdr l)))))))

(dupli '())
(dupli '(a))
(dupli '(a b c c d))
