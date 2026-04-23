; P21

; k >= 1
(define (insert-at atom l k)
  (cond ((null? l) (list atom))
        ((= k 1) (cons atom l))
        (else (cons (car l) (insert-at atom (cdr l) (- k 1))))))

(insert-at 'alfa '(a b c d e) 3)