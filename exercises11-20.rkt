; exercise 11
(define (distance-to-origin x y)
  (sqrt (+ (expt x 2) (expt y 2))))

; exercise 12
(define (cvolume x) (expt x 3))
(define (csurface x) (* 6 (expt x 2)))

; exercise 13
(define (string-first x)
  (if
   (> (string-length x) 0)
   (substring x 0 1)
   "Empty String!"))

; exercise 14
(define (string-last x)
  (if
   (> (string-length x) 0)
   (substring x (- (string-length x) 1))
   "Empty String!"))

; exercise 15
(define (==>. sunny friday)
   (or (not sunny) friday))

; exercise 16
(define (image-area x)
  (* (image-width x) (image-height x)))

; exercise 17
(define (image-classify x)
  (cond
    [(< (image-width x) (image-height x)) "tall"]
    [(> (image-width x) (image-height x)) "wide"]
    [(= (image-width x) (image-height x)) "square"]))

; exercise 18
(define (string-join string1 string2)
  (string-append string1 "_" string2))

; exercise 19
(define (string-insert str i)
  (if
   (>= (string-length str) i)
   (string-append (substring str 0 i) "_" (substring str i))
   "Out of Range"))

; exercise 20
(define (string-delete str i)
  (if
   (>= (string-length str) i)
   (string-append (substring str 0 (- i 1)) (substring str i))
   "Out of Range"))

(distance-to-origin 8 6)
(cvolume 4)
(csurface 4)
(string-first "hello")
(string-last "hello")
(==>. #true #false)
(image-area (rectangle 30 40 "solid" "red"))
(image-classify (rectangle 30 20 "solid" "red"))
(string-join "bom" "dia")
(string-insert "Hello" 3)
(string-delete "Hello" 3)
