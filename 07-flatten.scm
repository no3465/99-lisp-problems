#lang scheme

(define (my-flatten _lst)
  (define (helper lst result)
    (cond
      ((null? lst) result)
      ((list? (car lst))
       (helper (cdr lst)
                   (helper (car lst) result)))
      (else
       (helper (cdr lst) (cons (car lst) result)))))
  (reverse (helper _lst '())))

(my-flatten '())
(my-flatten '(a (b (c d) e)))

#|
(equal? (my-flatten '(a (b (c d) e))) '(a b c d e))
(equal? (my-flatten '()) '())
(equal? (my-flatten '(1 2 3)) '(1 2 3))
(equal? (my-flatten '(1 (2 3) 4)) '(1 2 3 4))
(equal? (my-flatten '((1 2) (3 4))) '(1 2 3 4))
(equal? (my-flatten '(1 (2 (3 (4))) 5)) '(1 2 3 4 5))
(equal? (my-flatten '((1 (2)) ((3 4) 5))) '(1 2 3 4 5))
(equal? (my-flatten '((()))) '())
(equal? (my-flatten '(a (b c) (d (e f)))) '(a b c d e f))
(equal? (my-flatten '((1) 2 ((3) (4 (5))))) '(1 2 3 4 5))
(equal? (my-flatten '(((1 2) 3) ((4)) 5)) '(1 2 3 4 5))
|#