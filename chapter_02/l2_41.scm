(load "../common.scm")

(define (triple-pairs n) 
  (flatmap (lambda (i) 
             (flatmap (lambda (j) 
                        (map (lambda (k) (list i j k)) 
                             (enumerate-interval 1 (- j 1)))) 
                      (enumerate-interval 1 (- i 1)))) 
           (enumerate-interval 1 n))) 

(define (specified-triple n s)
  (filter (lambda (l) (= s (+ (car l) (cadr l) (car (cdr (cdr l)))))) (triple-pairs n)))

(display (triple-pairs 4))
(newline)
(display (specified-triple 4 7))
(newline)
