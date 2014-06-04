(load "../common.scm")

(define (enumerate-interval i j)
  (if (> i j)
    '()
    (cons i (enumerate-interval (+ 1 i) j))))

(define (flatmap proc seq)
  (accumulate append '() (map proc seq)))

(define (unique-pairs n)
  (flatmap (lambda (i)
             (map (lambda (j) (list i j))
                  (enumerate-interval 1 (- i 1))))
           (enumerate-interval 2 n)))

(display (enumerate-interval 1 5))
(newline)
(display (unique-pairs 3))
(newline)
(display (unique-pairs 4))
(newline)
(display (unique-pairs 5))
(newline)
