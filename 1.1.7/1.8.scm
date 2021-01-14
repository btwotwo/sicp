(define (cubrt-iter prev-guess guess x)
    (
        if (good-enough? prev-guess guess)
            guess
            (cubrt-iter guess (improve guess x) x)
        
    )
)

(define (good-enough? prev-guess guess) 
    (< (abs (- guess prev-guess)) 0.0001)
)

(define (average x y z) (
    / (+ x y z ) 3
))

(define (improve guess x) (
    average (/ x (square guess)) guess guess
))

(define (cubrt x) 
    (cubrt-iter 0 1.0 x)
)