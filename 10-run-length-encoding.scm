; P10

#|
Use the result of problem P09 to implement the so-called run-length encoding data compression method. Consecutive duplicates of elements are encoded as lists (N E) where N is the number of duplicates of the element E.

Example:
* (encode '(a a a a b c c a a d e e e e))
((4 A) (1 B) (2 C) (2 A) (1 D)(4 E))
|#

(define (encode _l)
  (define (helper l r)
    (cond
      ((null? l) r)
      ((and (not (null? r))
            (eqv? (car l) (car (cdr (car r)))))
       (helper (cdr l)
               (cons (cons (+ 1 (car (car r))) (cdr (car r))) (cdr r))))
      (else (helper (cdr l)
                    (cons (cons 1 (list (car l))) r)))))
  (reverse (helper _l '())))

(encode '())
(encode '(a))
(encode '(a b))
(encode '(a b c c))
(encode '(a a a a b c c a a d e e e e))