(define (map proc items)
  (if (null? items)
    '()
    (cons (proc (car items))
          (map proc (cdr items)))))

(define (filter predicate seq)
  (cond ((null? seq) '())
        ((predicate (car seq))
         (cons (car seq)
               (filter predicate (cdr seq))))
        (else (filter predicate (cdr seq)))))

(define (accumulate op initial seq)
  (if (null? seq) initial
      (op (car seq)
	  (accumulate op initial (cdr seq)))))

(display (map (lambda (x) (* x x)) (list 1 2 3 4)))
(newline)
(display (filter odd? (list 1 2 3 4 5)))
(newline)
