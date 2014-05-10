(define (fringe x)
  (cond ((null? x) x)
        ((pair? x) (append (fringe (car x)) (fringe (cdr x))))
        (else (cons x '()))))

(display (fringe (list (list 1 2 3 4))))
(newline)
(display (fringe (list (list 1 2) (list 3 4))))
(newline)
