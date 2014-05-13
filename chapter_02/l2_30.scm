(define (square x)
  (* x x))

(define (square-list item)
  (map (lambda (x) (* x x)) item))

(define (square-tree tree)
  (cond ((null? tree) '())
        ((not (pair? tree)) (square tree))
        (else (cons (square-tree (car tree))
                    (square-tree (cdr tree))))))

(define (square-tree-2 tree)
  (map (lambda (sub-tree)
         (if (pair? sub-tree)
           (square-tree-2 sub-tree)
           (square sub-tree)))
       tree))


(display (square-tree (list 1 (list 2 (list 3 4) 5) (list 6 7))))
(newline)
(display (square-tree-2 (list 1 (list 2 (list 3 4) 5) (list 6 7))))
(newline)
