(define (variable? x)
  (symbol? x))

(define (same-variable? v1 v2)
  (and (variable? v1) (variable? v2) (eq? v1 v2)))

(define (make-sum a1 a2)
  (list '+ a1 a2))

(define (make-product m1 m2)
  (list '* m1 m2))

(define (sum? x)
  (and (pair? x) (eq? (car x) '+)))

(define (addend s) (cadr s))
(define (augend s) (caddr s))

(define (product? x)
  (and (pair? x) (eq? (car x) '*)))

(define (multiplier p) (cadr p))
(define (multiplicand p) (caddr p))

(define (make-exponentiation e1 e2)
  (list '** e1 e2))

(define (base e) (cadr e))
(define (exponent) (caddr e))

(define (exponentiation? e)
  (and (pair? x) (eq? (car x) '**)))

(define (deriv expression var)
  (cond [(number? expression) 0]
        [(variable? expression)
         (if (same-variable? expression var) 1 0)]
        [(sum? expression)
         (make-sum (deriv (addend expression) var)
                   (deriv (augend expression) var))]
        [(product? expression)
         (make-sum
           (make-product (multiplier expression)
                         (deriv (multiplicand expression) var))
           (make-product (deriv (multiplier expression) var)
                         (multiplicand expression)))]
        [(exponentiation? expression)
         (make-product (make-product
                         (exponent expression)
                         (make-exponentiation (base expression) (make-sum (exponent expression) -1)))
                       (deriv (base expression) var))]
        [else (error "unknown expression type -- DERIV" expression)]))
