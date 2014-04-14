(define (process a b c)
  (cond ((and (>= a b) (>= b c)) (+ a b)) 
        ((and (>= a c) (>= c b)) (+ a c)) 
        ((and (>= b a) (>= a c)) (+ b a))
        ((and (>= b c) (>= c a)) (+ b c))
        ((and (>= c a) (>= a b)) (+ c a))
        ((and (>= c b) (>= b a)) (+ c b))
        )
  )

(display (process 1 2 3))
(display (process 3 2 1))
(display (process 1 3 2))
(display (process 2 1 3))
(display (process 2 3 1))
(display (process 3 1 2))
