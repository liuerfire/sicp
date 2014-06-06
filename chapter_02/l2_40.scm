(load "../common.scm")

(define (unique-pairs n)
  (flatmap (lambda (i)
             (map (lambda (j) (list i j))
                  (enumerate-interval 1 (- i 1))))
           (enumerate-interval 2 n)))

(define (prime-sum? pair)
  (prime? (+ (car pair) (cadr pair))))

(define (prime-sum-pairs n)
  (filter (lambda (pair) (prime-sum? pair))
          (unique-pairs n)))

(display (unique-pairs 3))
(newline)
(display (prime-sum-pairs 3))
(newline)

(display (unique-pairs 4))
(newline)
(display (prime-sum-pairs 4))
(newline)

(display (unique-pairs 5))
(newline)
(display (prime-sum-pairs 5))
(newline)

(display (unique-pairs 6))
(newline)
(display (prime-sum-pairs 6))
(newline)
