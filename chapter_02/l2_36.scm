(load "../classic.scm")

(define (accumulate-n op init seqs)
  (if (null? (car seqs))
    '()
    (cons (accumulate op init (map car seqs))
          (accumulate-n op init (map cdr seqs)))))

(display (accumulate-n + 0 '((1 2 3) (4 5 6) (7 8 9) (10 11 12))))
(newline)
