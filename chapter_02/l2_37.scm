(define (accumulate op initial sequence) 
  (if (null? sequence) 
    initial 
    (op (car sequence) 
        (accumulate op initial (cdr sequence)))))

(define (accumulate-n op init seqs)
  (if (null? (car seqs))
    '()
    (cons (accumulate op init (map car seqs))
          (accumulate-n op init (map cdr seqs)))))

(define (dot-product v w)
  (accumulate + 0 (map * v w)))

(define (matrix-*-vector m v) 
  (map (lambda (m) (dot-product m v)) m)) 

(define (transpose m)
  (accumulate-n cons '() m))

(define (matrix-*-matrix m n) 
  (let ((cols (transpose n))) 
   (map (lambda (row) (matrix-*-vector cols row)) m))) 

(display (dot-product (list 1 2 3) (list 4 5 6)))
(newline)
(display (matrix-*-vector '((1 2 3) (4 5 6)) '(1 2 3)))
(newline)
(display (transpose '((1 2 3) (4 5 6))))
(newline)
(display (matrix-*-matrix '((1 2 3) (4 5 6)) '((1 2 3) (4 5 6) (7 8 9))))
(newline)
