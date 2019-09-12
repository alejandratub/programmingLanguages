#|
    Next Day

    Alejandra Tubilla Castellanos
    A01022960

|#

(define (next_day date)

    ;Separate elements in the list recieved as parameter

    (define day (list-ref date 0)) ;element in position 0 of the list
    (define month (list-ref date 1)) ; element in position 1 of the list
    (define year (list-ref date 2)) ;element in position 2 of the list

    (cond 
        [(not (= month 2)) (notLeapYear day month year)] ;if it is not February it doesn't matter if it is a leap year or not
        [(and (= month 2) (not (leapYear? year))) (notLeapYear day month year)] ;if it is February and it is not a leap year 
        [(and (= month 2) (leapYear? year)) (leapYear day month year)] ;if it is February and it is a leap year
    )
    
)

;Function that validates if it is or not a leap year
(define (leapYear? year)
    (or (and (zero? (remainder year 4)) ;if the remainder of the division of the year by 4 = 0
           (not (zero? (remainder year 100)))) ;if the remainder of the division  of the year by 100 is not = 0
      (zero? (remainder year 400))) ; if the remiander of the division of the year by 400 = 0 

)

;Function that gets the next day of february if it is a leap Year
(define (leapYear day month year)
    (cond   
        ;Last day of the month
        [( and  (= month 2)(= day 29)) (list (- day 27) (+ month 1) year)];february

        ;Any other day of the month 
        [(and (= month 2) (<= day 28)) (list (+ day 1) month year)] ;february 

        )

)

;Function that gets the next day if the year is not leap year 
(define (notLeapYear day month year)
    (cond   

        ;Last days of the month

        [( and  (= month 1)(= day 31)) (list (- day 30) (+ month 1) year) ];january
        [( and  (= month 2)(= day 28)) (list (- day 27) (+ month 1) year)];february
        [( and  (= month 3)(= day 31)) (list (- day 30) (+ month 1) year) ];march
        [( and  (= month 4)(= day 30)) (list (- day 29) (+ month 1) year)];april
        [( and  (= month 5)(= day 31)) (list (- day 30) (+ month 1) year) ];may
        [( and  (= month 6)(= day 30)) (list (- day 29) (+ month 1) year)];june
        [( and  (= month 7)(= day 31)) (list (- day 30) (+ month 1) year) ];july
        [( and  (= month 8)(= day 31)) (list (- day 30) (+ month 1) year)];august
        [( and  (= month 9)(= day 30)) (list (- day 29) (+ month 1) year)];september
        [( and  (= month 10)(= day 31)) (list (- day 30) (+ month 1) year) ];october
        [( and  (= month 11)(= day 30)) (list (- day 29) (+ month 1) year)];november
        [( and  (= month 12)(= day 31)) (list (- day 30) 1 (+ year 1))];december

        ;Any other day

        [(and (= month 1) (<= day 30)) (list (+ day 1) month year)] ;january
        [(and (= month 2) (<= day 27)) (list (+ day 1) month year)] ;february
        [(and (= month 3) (<= day 30)) (list (+ day 1) month year)] ;march
        [(and (= month 4) (<= day 29)) (list (+ day 1) month year)] ;april
        [(and (= month 5) (<= day 30)) (list (+ day 1) month year)] ;may
        [(and (= month 6) (<= day 29)) (list (+ day 1) month year)] ;june
        [(and (= month 7) (<= day 30)) (list (+ day 1) month year)] ;july
        [(and (= month 8) (<= day 30)) (list (+ day 1) month year)] ;august
        [(and (= month 9) (<= day 29)) (list (+ day 1) month year)] ;september
        [(and (= month 10) (<= day 30)) (list (+ day 1) month year)] ;october
        [(and (= month 11) (<= day 29)) (list (+ day 1) month year)] ;november
        [(and (= month 12) (<= day 30)) (list (+ day 1) month year)] ;december  

    )

)