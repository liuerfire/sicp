(load "../common.scm")

(define (enumerate-interval i j)
  (if (>= i j)
    (list j)
    (cons i (enumerate-interval (+ 1 i) j))))

(define (flatmap proc seq)
  (accumulate append '() (map proc seq)))

(define (unique-pairs n)
  (flatmap (lambda (i)
             (map (lambda (j) (list i j))
                  (enumerate-interval 1 (- i 1))))
           (enumerate-interval 2 n)))


(display (unique-pairs 5))
(newline)
