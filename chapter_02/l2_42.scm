(load "../common.scm")

(define (queens board-size)
  (define (queen-cols k)
    (if (= k 0)
      (list empty-board)
      (filter
        (lambda (positions) (safe? k positions))
        (flatmap
          (lambda (rest-of-queens)
            (map (lambda (new-row)
                   (adjoin-position new-row k rest-of-queens))
                 (enumerate-interval 1 board-size)))
          (queen-cols (- k 1))))))
  (queen-cols board-size))

(define (adjoin-position new-row k rest-of-queens)
  (cons new-row rest-of-queens))

(define empty-board '())

(define (safe? k positions)
  (define queen-pos (car positions))
  (define (saft-iter top bot remain)
    (cond [(null? remain) #t]
          [(or (= (car remain) queen-pos)
               (= (car remain) top)
               (= (car remain) bot))
           #f]
          [else (saft-iter (- top 1) (+ bot 1) (cdr remain))]))
  (saft-iter (- queen-pos 1) (+ queen-pos 1) (cdr positions)))

(display (queens 4))
(newline)
(display (queens 8))
(newline)
