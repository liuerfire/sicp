(define (left-branch mobile)
  (car mobile))

(define (right-branch mobile)
  (cdr mobile))

(define (branch-length branch)
  (car branch))

(define (branch-structure branch)
  (cdr branch))

(define (total-weight mobile)
  (if (pair? mobile)
    (+ (total-weight (branch-structure (left-branch mobile)))
       (total-weight (branch-structure (right-branch mobile))))
    mobile))

(define (balance mobile)
  (if (not (pair? mobile))
    #f
    (and (balance (branch-structure (left-branch mobile)))
         (balance (branch-structure (right-branch mobile)))
         (= (* (branch-length (left-branch mobile))
               (total-weight (branch-structure (left-branch mobile))))
            (* (branch-length (right-branch mobile))
               (total-weight (branch-structure (right-branch mobile))))))))
