(define PEOPLE 120)
(define TICKET-COST 5.0)
(define PERF-COST 180)
(define COST-PER-ATTENDEE 0.04)
(define CENTS-VARIATION 0.1)
(define PEOPLE-PER-VARIATION 15)

(define (attendees ticket-price)
  (- PEOPLE (* (- ticket-price TICKET-COST) (/ PEOPLE-PER-VARIATION CENTS-VARIATION))))

(define (revenue ticket-price)
  (* ticket-price (attendees ticket-price)))

(define (cost ticket-price)
  (+ PERF-COST (* COST-PER-ATTENDEE (attendees ticket-price))))

(define (profit ticket-price)
  (- (revenue ticket-price)
     (cost ticket-price)))
