(define (print x)
  (display x)
  (newline)
  x)

(define tolerance 0.00001)

(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2))
       tolerance))
  (define (try guess depth)
    (define (report-guess guess)
      (display depth)
      (display " *** ")
      (print guess))
    (let ((next (f (report-guess guess))))
      (if (close-enough? guess next)
          next
          (try next (inc depth)))))
  (try first-guess 1))
