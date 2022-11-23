(define (compose f g)
  (lambda (x) (f (g x))))

(define (double f)
  (compose f f))

(define (inc x)
  (+ x 1))

(define (square x)
  (* x x))

(define (repeated f n)
  (cond ((= n 1) f)
        ((even? n)(double (repeated f (/ n 2))))
        (else (compose f (repeated f (- n 1))))))

(define (repeated-iter f n)
  (if (= n 1)
      (lambda (x) (f x))
      (compose (lambda (x) (f x)) (repeated-iter f (- n 1)))))
