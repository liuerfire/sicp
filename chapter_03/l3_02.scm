(define (make-monitored procedure)
  (define count 0)
  (define (p param)
    (cond [(eq? param 'how-many-calls?) count]
          [(eq? param 'reset-count) (set! count 0)]
          [else (begin (set! count (+ count 1))
                       (procedure param))]))
  p)

(define s (make-monitored sqrt))

(display (s 100))
(newline)

(display (s 'how-many-calls?))
(newline)

(display (s 10000))
(newline)

(display (s 'how-many-calls?))
(newline)

(s 'reset-count)
(display (s 'how-many-calls?))
(newline)

(display (s 10000))
(newline)

(display (s 'how-many-calls?))
(newline)
