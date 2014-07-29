(define (make-accumulator num)
  (lambda (x) 
    (set! num (+ x num)) num))

(define A (make-accumulator 5))

(display (A 10))
(newline)
(display (A 10))
(newline)
