#lang racket
;(define allWords (read-lines "linuxwords"))
(define (sevenLetter? str)
  (cond
       [(= (string-length str) 7)(contains? (string->list str)) ]
       [else #f]
  )

  )
(define (contains?  lst)
  (cond
    [(empty? lst)#t]
    [(equal? #\e (first lst))#f]
    [(equal? #\E (first lst))#f]
    [(equal? #\o (first lst))#f]
    [(equal? #\O (first lst))#f]
    [(equal? #\u (first lst))#f]
    [(equal? #\U (first lst))#f]
    [else (contains?  (rest lst))]
    )
  )
(define (NumberOfZzz lst)
  (cond
    [(empty? lst)0]
    [(equal? #\z (first lst))(+ 1 (NumberOfZzz (rest lst)))]
    [(equal? #\Z (first lst))(+ 1 (NumberOfZzz (rest lst)))]
    [else (NumberOfZzz (rest lst))]


    )


  )
(sevenLetter? "sasassd")
(NumberOfZzz (string->list"ZsaazzZZccz"))

