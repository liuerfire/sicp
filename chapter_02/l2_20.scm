(define (same-parity . args)
  (define (parity-iter l r p)
    (if (null? l)
      r
      (if (or (and (odd? (car l)) (odd? p)) (and (even? (car l)) (even? p)))
        (parity-iter (cdr l) (cons r (car l)) p)
        (parity-iter (cdr l) r p))))
  (parity-iter (cdr args) (car args) (car args)))

(display (same-parity 1 2 3 4 5 6 7))
(newline)
(display (same-parity 2 3 4 5 6 7))
(newline)
