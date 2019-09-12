#|
    Find the next day from a given date 
    Gil's solution

    Alejandra Tubilla Castellanos
    A01022960
|#


(define (leap? year)
    (if (and 
           (= (remainder year 4)0) 
            (or 
                (not ( = (remainder year 100) )))
                (= (remainder year 400)))
    #t
    #f)
)

(define (next-day date)
    (let* 
        (   [day (car date)]
            [month (cadr date)]
            [year (caddr date)])
            [max_days (month-days month year)]
    )
    (if (= day max_days)
        (if ( = month 12)
            (list 1 1 (+ year 1))
            (list 1 (+ month 1) year))
            (list (+ day 1) month year))
)