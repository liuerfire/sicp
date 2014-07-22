(load "l2_68.scm")

(define (generate-huffman-tree pairs)
  (successive-merge (make-leaf-set pairs)))

(define (successive-merge leaves)
  (if (null? (cdr leaves))
    (car leaves)
    (successive-merge
      (adjoin-set (make-code-tree (car leaves) (cadr leaves))
                  (cddr leaves)))))

(define h-tree (generate-huffman-tree '((A 2) (B 1) (C 1))))
(display "------cut-------")
(newline)
(display (encode '(A) h-tree))
(newline)
(display (encode '(B) h-tree))
(newline)
(display (encode '(C) h-tree))
(newline)
(display (encode '(C B A) h-tree))
(newline)
