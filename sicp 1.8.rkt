#lang sicp


(define (cubert x)
  (define (square a)
    (* a a)
  )

  (define (cube a)
    (* (square a) a)
  )

  (define (average a b)
    (/ (+ a b) 3)
  )

  (define (improve guess x)
    (average (/ x (square guess)) (* 2 guess))
  )

  (define (good_enough guess x)
    (define t 0.0001)
    (< (abs (- (cube guess) x)) t)
  )

  (define (try guess x)
    (if (good_enough guess x ) guess (try (improve guess x) x))
  )
  (try 1 x)
)


(cubert 27)
