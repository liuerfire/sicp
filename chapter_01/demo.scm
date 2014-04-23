(define pi 3.14159)

(define radius 10)

(display (* pi (* radius radius)))

(display "\n")

(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- 0 x))))

(display (abs -1))

(display "\n")

(define plus4 (lambda (a) (+ a 4)))
(display (plus4 4))

(display "\n")

(define x 5)
(display (+ (let ((x 3))
             (+ x (* x 10)))
            x))
(display "\n")
