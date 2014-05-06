(define (reverse-list l)
  (define (list-iter l result)
    (if (null? l)
      result
      (list-iter (cdr l) (cons (car l) result))))
  (list-iter l '()))

(display (reverse-list (list 1 2 3 4 5)))
(newline)
(display (reverse-list (list 10 9 8 7 6)))
(newline)
