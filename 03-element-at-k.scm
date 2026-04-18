; P03

; 1 <= k <= length
(define (element-at l k)
  (cond ((null? l) l)
        ((= k 1) (car l))
        (else (element-at (cdr l) (- k 1)))))

(element-at '() 1)
(element-at '(a) 1)
(element-at '(a b) 2)
(element-at '(a b c) 4)
(element-at '(a b c d e f) 3)
