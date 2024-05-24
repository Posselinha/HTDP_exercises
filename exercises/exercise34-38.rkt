; exercise 34
; strings to represent words
; string -> string
; given: "hello", expect: "h"
; given: "bom dia", expect: "b"
(define (string-first str)
  (substring str 0 1))

; exercise 35
; string -> string
; given: "hello", expect: "o"
; given: "bom dia", expect: "a"
(define (string-last str)
  (substring str (- (string-length str) 1) (string-length str)))

; exercise 36
; image -> int
; given: image(10 x 10), expect: 100
; given: image(100 x 100), expect: 10000
(define (image-area custom-image)
  (* (image-width custom-image) (image-height custom-image)))

; exercise 37
; string -> string
; given: "hello", expect: "ello"
; given: "rafael", expect: "afael"
(define (string-rest str)
  (substring str 1))

; exercise 38
; string -> string
; given "hello", expect: "hell"
; given "gabriel", expect: "gabrie"
(define (string-remove-last str)
  (substring str 0 (- (string-length str) 1)))
