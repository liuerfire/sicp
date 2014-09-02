(define random-init 0)

(define (rand-update x) (+ 1 (* 2 x)))

(define rand
  (let ([x random-init])
   (define (dispatch message)
     (cond [(eq? message 'generate)
            (begin (set! x (rand-update x)) x)]
           [(eq? message 'reset)
            (lambda (new-value) (set! x new-value))]))
   dispatch))

(display (rand 'generate))
(newline)

(display (rand 'generate))
(newline)

((rand 'reset) 0)

(display (rand 'generate))
(newline)

(display (rand 'generate))
(newline)
