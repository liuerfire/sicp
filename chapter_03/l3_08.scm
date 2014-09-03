(define (g y)
  (define (f x)
    (let ([z y])
     (set! y x)
     z))
  f)

(define f (g 0))

;(display (+ (f 0) (f 1)))
;(newline)
(display (+ (f 1) (f 0)))
(newline)
