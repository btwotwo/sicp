(define (sqrt-iter prev-guess guess x)
    (
        if (new-good-enough? prev-guess guess)
            guess
            (sqrt-iter guess (improve guess x) x)
    )
)

(define (improve guess x)
    (average guess (/ x guess))
)

(define (average x y) (/ (+ x y) 2))

(define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.0001)
)

(define (new-good-enough? prev curr) 
    (< (abs (- prev curr)) 0.0001)
)

(define (sqrt x)
    (sqrt-iter 0 1.0 x)
)

(define (verify x) (square (sqrt x)))