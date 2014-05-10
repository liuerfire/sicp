(define (same-parity . args)
  (define (parity-iter l r p)
    (if (null? l)
      r
      (if (or (and (odd? (car l)) (odd? p)) (and (even? (car l)) (even? p)))
        (parity-iter (cdr l) (cons r (car l)) p)
        (parity-iter (cdr l) r p))))
  (parity-iter (cdr args) (car args) (car args)))

; better way
(define (same-parity-2 a . l)
  (let ((ev (remainder a 2)))
    (filter (lambda (x) (= ev (remainder x 2))) l)))


(display (same-parity 1 3 4 5 6 7))
(newline)

(display (same-parity-2 1 2 3 4 5 6 7))
(newline)
