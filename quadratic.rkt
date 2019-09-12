#| 
    Quadratic ecuations

    Alejandra Tubilla Castellanos 
    A01022960

|#

#|************CORRECT AND FINAL ATTEMPT***************|#

;Function with all parts to the quadratic ecuation 
(define (quadratic a b c)
    (if (equal? a 0) ;If a == 0
        (-(/ c b)) ;Solve the equation
            (list ;otherwise
                (/(-(- b)(sqrt(-(* b b)(* 4 a c))))(* a 2)) ;get x1
                (/(+(- b)(sqrt(-(* b b)(* 4 a c))))(* a 2)) ;get x2
            )
    )
)


#|***************FIRST ATTEMPT************************|#
;Equation to solve if a == 0
(define (noA b c)
 (-(/ c b))
)

;Equation to solve if a != 0
(define (withApositive a b c)
    (/(+(- b)(sqrt(-(* b b)(* 4 a c))))(* a 2))
)

;Equation to solve if a != 0
(define (withAnegative a b c)
    (/(-(- b)(sqrt(-(* b b)(* 4 a c))))(* a 2))
)

;Function to display the results
(define (withA a b c)
    (display "x1 = ")
    (display (withApositive a b c)) ; calls function with +
    (display (string-append "\n" "x2 = ")) 
    (display (withAnegative a b c)) ; calls function with -
)

;Function with the condition to call the correct functions
(define (quadraticA a b c)
    (if (equal? a 0) (noA b c ) (withA a b c))
    
)

