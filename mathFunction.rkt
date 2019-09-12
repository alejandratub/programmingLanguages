#|
    Math function

    Alejandra Tubilla Castellanos 
    A01022960
|#

;Function with different actions deppendingo on the input 
(define (f x)
    (cond 
    [(< x -1) (+ x 2)] ;if x < -1 then the function to execute is x + 2
    [( and (<= -1 x) (< x 0)) 1] ;if -1 <= x < 0 then 1
    [(>= x 0) (+ (- (* x x)) 1)]); if x >= 0 -x² + 1
)