;;;; stream.import.scm - GENERATED BY CHICKEN 5.1.0 -*- Scheme -*-

(scheme#eval
  '(import-syntax
     (only r7rs
           begin
           cond-expand
           export
           import
           import-for-syntax
           include
           include-ci
           syntax-rules)
     scheme.base
     scheme.lazy))
(import
  (only r7rs
        begin
        cond-expand
        export
        import
        import-for-syntax
        include
        include-ci
        syntax-rules))
(##sys#register-compiled-module
  'stream
  'stream
  (scheme#list '(divisible? . stream#divisible?))
  '((stream-car . stream#stream-car)
    (stream-cdr . stream#stream-cdr)
    (stream-null? . stream#stream-null?)
    (the-empty-stream . stream#the-empty-stream)
    (stream-map . stream#stream-map)
    (stream-filter . stream#stream-filter)
    (stream-first . stream#stream-first)
    (stream-take . stream#stream-take)
    (stream-accumulate . stream#stream-accumulate)
    (stream-add . stream#stream-add)
    (stream-zip . stream#stream-zip)
    (integers-starting-from . stream#integers-starting-from)
    (prime-stream . stream#prime-stream)
    (prime? . stream#prime?)
    (nat-stream . stream#nat-stream)
    (stream-merge-weighted . stream#stream-merge-weighted)
    (stream-weighted-tuples . stream#stream-weighted-tuples))
  (scheme#list
    (scheme#cons 'cons-stream (syntax-rules () ((_ a b) (cons a (delay b)))))
    (scheme#cons
      '|\x04r7rsstream|
      (##sys#er-transformer (##core#lambda (x r c) (##core#undefined)))))
  (scheme#list))

;; END OF FILE
