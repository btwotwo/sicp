; i - row, j - col
(define (pascal i j) 
    (if (or (= i j) (= j 1))
        1
        (+ (pascal (- i 1) j) (pascal (- i 1) (- j 1)))
    )   
)

; PS - this is the most naive implementation, I'm sure it can be improved somehow (by adding memoization which I think will be covered in future chapters)