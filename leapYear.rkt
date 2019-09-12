#|
    Calculate if the year entered is a Leap Year

    Alejandra Tubilla Castellanos
    A01022960

|#

;function to calculate if a year is a Leap Year
(define (leap? year)
    (or (and (zero? (remainder year 4)) ;if the remainder of the division of the year by 4 = 0
           (not (zero? (remainder year 100)))) ;if the remainder of the division  of the year by 100 is not = 0
      (zero? (remainder year 400))) ; if the remiander of the division of the year by 400 = 0 

)


(define (leapYear? year)
    (if  ( and ((= 0 (remainder year 4) (> (remainder year 100) 0 )))) (display "SI") (display "NO"))
)

  