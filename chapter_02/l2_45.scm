(define (split op1 op2)
  (lambda (p n)
    (if (= n 0)
      p
      (let ([smaller (s painter (- n 1))])
       (op1 p (op2 smaller smaller))))))
