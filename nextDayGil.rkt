#|
    Find the next day from a given date 
    Gil's solution
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
(define (month-days month year)
    (case month 
    [(1 3 5 7 8 10 12) 31]
    [(4 6 9 11) 30]
    [(2)(if (leap? year) 29 28)])
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