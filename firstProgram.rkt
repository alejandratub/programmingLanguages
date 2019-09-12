#|
First Program in Racket
    valid estensions: .rkt or .scm

    Alejandra Tubilla Castellanos
    A01022960

        NOTE: to run:
                racket
                (load "firstProgram.rkt")
                (greeting "Alejandra") 
|#

;Create a greeting function
(define (greeting name) 
   ( display (string-append "Hello " name "!"))
)


#|
 CAR: returns first element in list (first)
 CDR: returns the elements in a list except for the first one (rest)

 CADR: they execute form left to right = (car (cdr '( (1 2 3) (a b c) (7 8 9) ) ) )
|#

(car 
    (car
        (cdr '( (1 2 3) (a b c) (7 8 9) )
         ) 
    )
)

(car
    (car 
    '(1 2 3)
    )
)
#|
  CONS: adds an element to the list
  APPEND: joins two lists
|#

(cons ' ( x y z ) ' ( (1 2 3) (a b c) (7 8 9) ))

(append '( (1 2 3) (a b c) (7 8 9) ) '((x y z)))

;Breaks down and rebuilds the list
(append (list
    (car '( (1 2 3) (a b c) (7 8 9))) (cdr '( (1 2 3) (a b c) (7 8 9)))
    ))

#|
 foldl : takes all the elements in the list and applys the operand to all of them with a base number
 map:  applies the function to all the elements in the list
|#

;doubles all elements in the list
(map double ( 4 7 2 4 9 12))

;multiplies all elements in the list with 1 as base number
(foldl * 1 '(1 2 3 4 5 6 ))