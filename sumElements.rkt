#|
    Sum all elements in a list

    Alejandra Tubilla Castellanos
    A01022960
|#


(define (sum_list list)
    (if (empty? list) 
        0
        (+ (first list) (sum_list (rest list)))
    )
)