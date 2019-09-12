#|
    Gets 3 grades and based on average displays if the student passes or not

    Alejandra Tubilla Castellanos 
    A01022960

|#

;Gets average based on the grades given 
(define (grades a b c)
     (if (< 69 (/ (+ a b c) 3)) (display "Aprobado") (display "Reprobado"))
)

;Gets average based on the users input
(define (Grades)
    (display "Enter 3 grades: ")
    (define grade1 (read))
    (define grade2 (read))
    (define grade3 (read))
     (if (< 69 (/ (+ grade1 grade2 grade3) 3)) (display "Aprobado") (display "Reprobado"))

)