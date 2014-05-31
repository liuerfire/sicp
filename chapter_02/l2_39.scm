(load "../common.scm")

(define fold-right accumulate)

(define (reverse1 sequence)
  (fold-right (lambda (x y) (append y (list x ))) '() sequence))
(define (reverse2 sequence)
  (fold-left (lambda (x y) (cons y x)) '() sequence))

(display (reverse1 '(1 2 3)))
(newline)
(display (reverse2 '(1 2 3)))
(newline)
