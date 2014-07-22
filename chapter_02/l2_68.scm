(load "huffman.scm")

(define (element-of-set? x set)
  (cond [(null? set) #f]
        [(equal? x (car set)) #t]
        [else (element-of-set? x (cdr set))]))

(define (encode message tree)
  (if (null? message)
      '()
      (append (encode-symbol (car message) tree)
              (encode (cdr message) tree))))

(define (encode-symbol symbol tree)
  (define (branch-correct? branch)
    (if (leaf? branch)
      (equal? symbol (symbol-leaf branch))
      (element-of-set? symbol (symbols branch))))
  (let ([left (left-branch tree)]
        [right (right-branch tree)])
    (cond [(branch-correct? left)
           (if (leaf? left)
             '(0)
             (cons 0 (encode-symbol symbol left)))]
          [(branch-correct? right)
           (if (leaf? right)
             '(1)
             (cons 1 (encode-symbol symbol right)))]
          [else (error "symbol not in the tree")])))

(define sample-tree
  (make-code-tree (make-leaf 'A 4)
                  (make-code-tree
                    (make-leaf 'B 2)
                    (make-code-tree (make-leaf 'D 1)
                                    (make-leaf 'C 1)))))

(display (encode '(A D A B B C A) sample-tree))
(newline)
