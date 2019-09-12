#|
    Using input/output functions to create interface

    Alejandra Tubilla Castellanos
    A01022960

|#

;Function that recieves input from user
(define (ui)
    (display "Enter number 1: ")
    (define num1 (read))
    (display "Enter number 2: ")
    (define num2 (read))
    (define result (* num1 num2))
    (display "The result is: ")
    (display result)
)