#|
    Invert elements in a list

    Alejandra Tubilla Castellanos
    A01022960

|#

;function that inverts elements in a list
(define (invert data)
    (if (empty? data)
        empty
        (append 
            (invert (cdr data)) 
            (list (car data))
        )
    )
)


#|
    '(1 2 3 4)
    '(4 3 2) (1)
    '(4 3) (2)
    '(4 3)
    '() (4)
|#