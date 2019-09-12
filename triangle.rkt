#|
    Calculate triangle area

    Alejandra Tubilla Castellanos
    A01022960

|#

#|
s = ( a + b + c) / 2
area = sqrt ( s (s-a) (s-b) (s-c))
|#

;Calculate the area with the given sides
(define (area a b c )
    (sqrt(* 
        (/(+ a b c )2)
        (- (/(+ a b c )2) a) (- (/(+ a b c )2) b) (- (/(+ a b c )2) c)))
)

;Calculate S
(define (s a b c)
    (/(+ a b c )2)
)

;Calculate the area using s
(define (areaS a b c )
    (sqrt(* 
        (s a b c)
        (- (s a b c) a) (- (s a b c) b) (- (s a b c) c)))
)

