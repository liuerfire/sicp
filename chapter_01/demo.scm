(define pi 3.14159)

(define radius 10)

(display (* pi (* radius radius)))


(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (-x))
        )
  )
