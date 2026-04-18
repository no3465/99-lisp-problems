(define (compress _lst)
  (define (helper lst current)
    (cond
      ((null? lst) current)
      ((eqv? (car lst) (car current))
       (helper (cdr lst) current))
      (else
       (helper (cdr lst) (cons (car lst) current)))))
  (if (null? _lst)
      '()
      (reverse (helper (cdr _lst) (list (car _lst))))))

(compress '())
(compress '(a b b b c))
(compress '(a a a a b c c a a d e e e e))
