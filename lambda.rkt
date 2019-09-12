
#| 
    Lambda functions
    
    Alejandra Tubilla Castellanos 
    A01022960
|#
(define sqare (lambda (x) (* x x)))

;map is a function that recieves antoher function as parameter

(define (plus_2 x)
 (+ x 2)
)

(map plus_2 '(4 87 2 7))

;By using lambda you do not have to declare the other function before

(map (lambda(x)(+ x 2)) '(4 87 2 7))