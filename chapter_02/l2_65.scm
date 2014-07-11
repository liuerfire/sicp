(load "tree.scm")
(load "set.scm")

(define (union-set-tree t1 t2)
  (let ([list1 (tree->list t1)]
        [list2 (tree->list t2)])
    (union-set list1 list2)))

(define (intersection-set-tree t1 t2)
  (let ([list1 (tree->list t1)]
        [list2 (tree->list t2)]
        )
    (intersection-set list1 list2)))

(define t1 (list->tree '(1 2 3 4 5)))
(define t2 (list->tree '(4 5 6 7 8)))

(display (union-set-tree t1 t2))
(newline)
(display (intersection-set-tree t1 t2))
(newline)
