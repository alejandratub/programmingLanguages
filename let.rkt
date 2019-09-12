
#|
    Let Example

    Alejandra Tubilla Castellanos 
    A01022960

|#


(let 
; declare variables
;You can only use the variables inside this brackets
(
    ;it can be any type of variable
    [a 82]
    [b -12]
)
;Expression where the variables are used
(+ a b)
)

;Outside the let, variables no longer exist




(let* ; to use the already declared variables to declare other variables
(
    [a 82]
    [b -12]
    [c (+ a b)]
)
(* a b c)
)

(define (quadratic a b c)
    (let* 
        ([d (- (* b b) (* 4 a c))])
    
        (list 
            (/ (+(-d) (sqrt d)) (*2 a))
            (/ (-(-d) (sqrt d)) (*2 a))
        )
    )
)
