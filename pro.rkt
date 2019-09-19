#lang racket
(require 2htdp/batch-io)
;(define allWords (read-lines "linuxwords"))
(define (sevenLetterWithOutEIO lst)
  (cond
    [(empty? lst)""]
    [(sevenLetter? (first lst)) (string-append (first lst) ", " (sevenLetterWithOutEIO (rest lst)))]
    [else (sevenLetterWithOutEIO (rest lst))]

   )
  )
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
(define (NumberOfZzzHelper lst)
  (cond
    [(empty? lst)0]
    [else (+ (NumberOfZzz (string->list(first lst))) (NumberOfZzzHelper (rest lst))) ]
    

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
(sevenLetter? "assasmm")
(sevenLetter? "aesasa")
(NumberOfZzz (string->list"ZsaazzZZccz"))

;(NumberOfZzzHelper (read-lines "words.txt"))
(sevenLetterWithOutEIO (read-lines "words.txt"))
(NumberOfZzzHelper (read-lines "words.txt"))