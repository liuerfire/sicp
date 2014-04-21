(define (double n)
  (+ n n))

(define (halve n)
  (/ n 2))

(define (mul a b)
  (cond ((= b 0) 0)
        ((even? b) (double (mul a (halve b))))
        (else (+ a (mul a (- b 1))))))


(display (mul 3 2))
(display "\n")
(display (mul 3 3))
(display "\n")
(display (mul 3 4))
(display "\n")
(display (mul 4 5))
(display "\n")
(display (mul 4 6))
(display "\n")
(display (mul 5 7))
(display "\n")
