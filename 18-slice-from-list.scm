; P18

(define (slice l m n)
  (cond ((null? l) l)
        ((= n 1) (cons (car l) '()))
        ((> m 1) (slice (cdr l) (- m 1) (- n 1)))
        (else (cons (car l)
                    (slice (cdr l) 1 (- n 1))))))

(slice '(a b c d e f g h i j k) 3 7)