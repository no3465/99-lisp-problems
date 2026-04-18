; P06

(define (palindrome-check l)
  ; we could go about checking whether corresponding symbols
  ; in l and reversed l are equal or not
  ; but if we are already using reverse function why not also use
  ; equal?
  (equal? (reverse l) l))

(palindrome-check '(a))
(palindrome-check '(a b a))
(palindrome-check '(x a m a x))
(palindrome-check '(a a b a b a))