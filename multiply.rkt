#|
    Multiply two numbers by using cicles 
    (only sums)

    Alejandra Tubilla Castellanos
    A01022960

|#

(define (multiply a b)
    (if (= b 1)
        a
        (+ a (multiply a (- b 1))) ;recursive function 
    )
)

;Recursion with tail

;entry for the tail recursion version
(define (multiply_2 a b)
    (multiply_tail a b 0)
)

(define (multiply_tail a b result)
    (if (<= b 1)
        result
        (multiply_tail a (- b 1) (+ result a))
    )
)


;Function using cases
(define (multiply_3 a b)
    (case b
        [(0) 0] ; if b = 0 return 0
        [(1) a] ; if b = 1 return a
        [else  (+ a (multiply a (- b 1))) ]
    )
)