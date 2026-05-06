; P19 (rotate n places to the left)

(define (shift-left l)
  (append (cdr l) (list (car l))))

(define (shift-right l)
  (reverse (shift-left (reverse l))))

(define (rotate lst k)
  (if (or (= k 0) (null? lst))
      lst
      (if (< k 0)
          (rotate (shift-right lst) (+ k 1))
          (rotate (shift-left lst) (- k 1)))))


(rotate '(a b c d e f g h) 3)    ; d e f g h a b c
(rotate '(a b c d e f g h) -2)   ; g h a b c d e f