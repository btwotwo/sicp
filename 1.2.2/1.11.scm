; A function f is defined by the rule that f(n) = n if n<3 and f(n) = f(n - 1) + 2f(n - 2) + 3f(n - 3) if n>=3. 
; Write a procedure that computes f by means of a recursive process. Write a procedure that computes f by means of an iterative process.

;--- Resursive ---

(define (fr n) 
  (if (< n 3) n
      (+ (fr (- n 1)) (* 2 (fr (- n 2))) (* 3 (fr (- n 3))))
  )
)

; --- Iterative ---
(define (fi n) 
  (if (< n 3) n
             (f-iter 2 1 0 3 n)
  )
)

(define (f-iter a b c i n) 
    (if (= i n) (res a b c) 
                (f-iter (res a b c) a b (inc i) n)
    )
)

; (f-iter 2 1 0 3 4)
; (f-iter 4 2 1 4 4)
; (11)

(define (res a b c) 
  (+ a (* 2 b) (* 3 c))
)

(define (verify? n) (
  = (fr n) (fi n)
))

(define (inc n) (+ n 1))