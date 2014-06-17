(define (equal? list1 list2) 
  (cond ((and (not (pair? list1)) (not (pair? list2))) 
         (eq? list1 list2)) 
        ((and (pair? list1) (pair? list2)) 
         (and (equal? (car list1) (car list2)) (equal? (cdr list1) (cdr list2)))) 
        (else #f))) 


(display (equal? '(1 2 3) '(1 2 3)))
(newline)
(display (equal? '(1 2 '(1 2)) '(1 2 3)))
(newline)
(display (equal? '(1 2 '(1 2 3)) '(1 2 '(1 2 3))))
(newline)
