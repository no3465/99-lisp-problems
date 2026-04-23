; P20

#|
If index is valid then the element at that index is removed.
Otherwise the list is returned unchanged.
|#

(define (remove-at l k)
  (cond ((null? l) l)
        ((= k 1) (cdr l))
        (else (cons (car l) (remove-at (cdr l) (- k 1))))))

(remove-at '(a b c d e) -1)
(remove-at '(a b c d e) 3)
(remove-at '(a b c d e) 10)
