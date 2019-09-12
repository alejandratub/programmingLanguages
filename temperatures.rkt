#|
    Temperatures 

    Alejandra Tubilla Castellanos
    A01022960

|#

;Convert celsius to fahrenheit
(define (celsius temperature) 
    (+ (* temperature 1.8)32)
)

;Convert fahrenheit to celsius
(define (fahrenheit temperature)
    (/ (- temperature 32 )1.8)
)
