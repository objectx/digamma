#!nobacktrace
;;; Copyright (c) 2004-2020 Yoshikatsu Fujita / LittleWing Company Limited.
;;; See LICENSE file for terms and conditions of use.

(library (digamma assert)
  (export unsupported-option assert-argument)
  (import (core) (rnrs))

  (define unsupported-option
    (lambda (x)
      (syntax-case x ()
        (name (error (syntax->datum #'name) "option not supported on this operating system")))))

  (define-syntax assert-argument
    (lambda (x)
      (syntax-case x ()
        ((_ who n variable expect test . irritants)
         (let ((n (datum n)) (expect (datum expect)))
           (with-syntax ((msg (if n
                                  (format "expected ~a, but got ~~s, as argument ~a" expect n)
                                  (format "expected ~a, but got ~~s" expect))))
             (if (identifier? #'test)
                 #'(or (test variable) (assertion-violation 'who (format msg variable) . irritants))
                 #'(or test (assertion-violation 'who (format msg variable) . irritants))))))
        (_
         (syntax-violation 'assert-arguemnt "expected 5 clauses (assert-arguemnt <position> <who> <variable> <expect> <test>)" x)))))

  ) ;[end]
