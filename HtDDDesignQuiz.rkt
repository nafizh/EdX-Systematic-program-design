;; HtDD Design Quiz

;; Age is Natural
;; interp. the age of a person in years
(define A0 18)
(define A1 25)

#;
(define (fn-for-age a)
  (... a))

;; Template rules used:
;; - atomic non-distinct: Natural


; Problem 1:
; 
; Consider the above data definition for the age of a person.
; 
; Design a function called teenager? that determines whether a person
; of a particular age is a teenager (i.e., between the ages of 13 and 19).


;; Age -> Boolean
;; produce true if the person is a teenager (age is between 13 and 19)
(check-expect (teenager? 10) false)
(check-expect (teenager? 16) true)

;(define (teenager? a) false)  ;stub

; took template from Age

(define (teenager? a)
  (and (>= a 13) (<= a 19)))

; Problem 2:
; 
; Design a data definition called MonthAge to represent a person's age
; in months.


;; MonthAge is Natural
;; interp. the age of a person in months
(define MA1 36)
(define MA2 240)
#;
(define (fn-for-month-age ma)
  (... ma)) 

;; Template rules used:
;;  - atomic non-distinct: Natural


; Problem 3:
; 
; Design a function called months-old that takes a person's age in years 
; and yields that person's age in months.
; 


;; Age -> Natural
;; produce natural that is the person's age in months
(check-expect (months-old 10) (* 10 12))
(check-expect (months-old 15) (* 15 12))

;(define (months-old a) 0)  ;stub

; took template from Age

(define (months-old a)
  (* a 12))



; Problem 4:
; 
; Consider a video game where you need to represent the health of your
; character. The only thing that matters about their health is:
; 
;   - if they are dead (which is shockingly poor health)
;   - if they are alive then they can have 0 or more extra lives
; 
; Design a data definition called Health to represent the health of your
; character.
; 
; Design a function called increase-health that allows you to increase the
; lives of a character.  The function should only increase the lives
; of the character if the character is not dead, otherwise the character
; remains dead.

;; Data definitions:

;; Health is one of:
;;  - false
;;  - Natural
;; interp. false means dead, Natural (0 or more) means alive 

(define H1 false)
(define H2    10)
#;
(define (fn-for-health h)
  (cond [(false? h) (...)]
        [else (... h)]))

;; Template rules used:
;;  - one of: 2 cases
;;  - atomic distinct: false
;;  - atomic non-distinct: Natural

;; Function definition:

;; Health -> Natural
;; produce 0 if the character remains dead otherwise increase Health by 1
(check-expect (increase-health false) 0)
(check-expect (increase-health    10) (+ 10 1))

;(define (increase-health h) 0)  ;stub

;<use template from Health>

(define (increase-health h)
  (cond [(false? h) 0]
        [else (+ h 1)]))
