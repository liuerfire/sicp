(define (print-rat x)
  (newline)
  (display (number x))
  (display "/")
  (display (denom x))
  (newline))

(define (number x) (car x))
(define (denom x) (cdr x))

(define (make-rat n d)
  (define g (gcd n d))
  (if (< d 0)
    (cons (- (/ n g)) (- (/ d g)))
    (cons (/ n g) (/ d g))))

(print-rat (make-rat 3 4))
(print-rat (make-rat 5 -6))
(print-rat (make-rat 5 10))
(print-rat (make-rat -1 2))
(print-rat (make-rat -10 -20))
