(define (union-set set1 set2)
  (cond [(null? set1) set2]
        [(null? set2) set1]
        [(= (car set1) (car set2))
         (cons (car set1) (union-set (cdr set1) (cdr set2)))]
        [(< (car set1) (car set2))
         (cons (car set1) (union-set (cdr set1) set2))]
        [else (car set2) (union-set set1 (cdr set2))]))

(display (union-set '(1 2 3 5 6) '(3 5 6 7 8)))
(newline)
