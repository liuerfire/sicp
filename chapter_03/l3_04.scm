(define (make-account balance password)
  (define count 0)
  (define (withdraw amount)
    (if (>= balance amount) (begin (set! balance (- balance amount)) balance)
      "Insufficient funds"))
  (define (deposit amount)
    (set! balance (+ balance amount)) balance)
  (define (dispatch p m)
    (if (not (eq? p password))
         (if (< count 4)
           (begin (set! count (+ count 1)) (lambda (x) "Incorrect password"))
           (lambda (x) call-the-cops)) 
         (begin (set! count 0)
                (cond [(eq? m 'withdraw) withdraw]
                      [(eq? m 'deposit) deposit]
                      [else (error "Unknown request -- MAKE-ACCOUNT" m)]))))
  dispatch)

(define call-the-cops "The cops will catch you! Run!! No! I have guns!")

(define acc (make-account 100 'hello))

(display ((acc 'hello 'withdraw) 40))
(newline)
(display ((acc 'hello 'deposit) 50))
(newline)

(display ((acc 'world 'deposit) 50))
(newline)
(display ((acc 'world 'deposit) 50))
(newline)
(display ((acc 'world 'deposit) 50))
(newline)
(display ((acc 'world 'deposit) 50))
(newline)
(display ((acc 'world 'deposit) 50))
(newline)
(display ((acc 'hello 'withdraw) 40))
(newline)
(display ((acc 'world 'deposit) 50))
(newline)