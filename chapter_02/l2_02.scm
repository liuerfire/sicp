(define (x-point p) (car p))
(define (y-point p) (cdr p))
(define (make-point x y) (cons x y))


(define (start-segment seg) (car seg))
(define (end-segment seg) (cdr seg))
(define (make-segment s e) (cons s e))


(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")")
  (newline))

(define (average a b)
  (/ (+ a b) 2.0))

(define (midpoint-segment s)
  (let ((start (start-segment s))
        (end (end-segment s)))
    (make-point (average (x-point start) (x-point end))
                (average (y-point start) (y-point end)))))

(print-point (midpoint-segment (make-segment (make-point 1 2) (make-point 3 4))))
(print-point (midpoint-segment (make-segment (make-point -1 2) (make-point 3 -4))))
