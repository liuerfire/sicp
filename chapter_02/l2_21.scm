(define (square-list items)
  (if (null? items)
    '()
    (cons (* (car items) (car items))
          (square-list (cdr items)))))

(define (square-list-2 item)
  (map (lambda (x) (* x x)) item))

(display (square-list (list 1 2 3 4)))
(newline)

(display (square-list-2 (list 1 2 3 4)))
(newline)
