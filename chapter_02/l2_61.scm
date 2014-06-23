(define (adjoin-set x set)
  (cond [(or (null? set) (< x (car set))) (cons x set)]
        [(= x (car set)) set]
        [else (cons (car set) (adjoin-set x (cdr set)))]))

(display (adjoin-set 5 '(1 2 3 6)))
(newline)
