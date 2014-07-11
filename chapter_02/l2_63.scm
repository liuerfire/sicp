(load "tree.scm")

(define (tree->list-1 tree)
  (if (null? tree)
    '()
    (append (tree->list-1 (left-branch tree))
            (cons (entry tree)
                  (tree->list-1 (right-branch tree))))))

(define (tree->list-2 tree)
  (define (copy-to-list tree result-list)
    (if (null? tree)
      result-list
      (copy-to-list (left-branch tree)
                    (cons (entry tree)
                          (copy-to-list (right-branch tree) result-list)))))
  (copy-to-list tree '()))

(define t (adjoin-set 1 '(2 () ())))
(define t (adjoin-set 3 t))
(display (tree->list-1 t))
(newline)
(display (tree->list-2 t))
(newline)
