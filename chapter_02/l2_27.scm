(define x (list (list 1 2) (list 3 4)))

(display (reverse x))
(newline)

(define (deep-reverse x)
  (reverse (map reverse x)))

(display (deep-reverse x))
(newline)
