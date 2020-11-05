#lang sicp

(#%require rackunit)

(define (square x)(* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? next prev)
  (< (abs (- next prev)) 0.001))

(define (sqrt guess prev x)
  (if (good-enough? guess prev)
    	guess
	(sqrt (improve guess x) guess x)))

(check-equal? (round (sqrt 1 0.5 9)) 3)
