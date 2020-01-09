;;; Copyright (c) 2004-2020 Yoshikatsu Fujita / LittleWing Company Limited.
;;; See LICENSE file for terms and conditions of use.

(define-library (scheme r5rs)
  (import (scheme base)
          (scheme load)
          (scheme eval)
          (scheme repl)
          (scheme lazy)
          (scheme inexact)
          (scheme complex)
          (scheme cxr)
          (scheme file)
          (scheme read)
          (scheme char)
          (scheme write)
          (only (rnrs r5rs) scheme-report-environment null-environment exact->inexact inexact->exact))
  (export *
          +
          -
          /
          <
          <=
          =
          >
          >=
          abs
          acos
          and
          angle
          append
          apply
          asin
          assoc
          assq
          assv
          atan
          begin
          boolean?
          caaaar
          caaadr
          caaar
          caadar
          caaddr
          caadr
          caar
          cadaar
          cadadr
          cadar
          caddar
          cadddr
          caddr
          cadr
          call-with-current-continuation
          let*
          letrec
          list
          list->vector
          list-tail
          load
          magnitude
          make-rectangular
          make-vector
          max
          memq
          min
          negative?
          not
          null?
          number?
          odd?
          open-output-file
          output-port?
          peek-char
          procedure?
          quote
          rational?
          read
          real-part
          remainder
          round
          scheme-report-environment
          set!
          set-cdr!
          sqrt
          string->list
          string->symbol
          string-ci<=?
          string-ci=?
          string-ci>?
          string-fill!
          string-ref
          string<=?
          string=?
          string>?
          substring
          symbol?
          truncate
          vector
          vector-fill!
          vector-ref
          vector?
          with-output-to-file
          write-char
          let-syntax
          letrec-syntax
          list->string
          list-ref
          list?
          log
          make-polar
          make-string
          map
          member
          memv
          modulo
          newline
          null-environment
          number->string
          numerator
          open-input-file
          or
          pair?
          positive?
          quasiquote
          quotient
          rationalize
          read-char
          real?
          reverse
          set-car!
          sin
          string
          string->number
          string-append
          string-ci<?
          string-ci>=?
          string-copy
          string-length
          string-set!
          string<?
          string>=?
          string?
          symbol->string
          tan
          values
          vector->list
          vector-length
          vector-set!
          with-input-from-file
          write
          zero?
          call-with-input-file
          call-with-values
          case
          cdaadr
          cdadar
          cdadr
          cddaar
          cddar
          cddddr
          cddr
          ceiling
          char-alphabetic?
          char-ci<?
          char-ci>=?
          char-downcase
          char-numeric?
          char-upcase
          char-whitespace?
          char<?
          char>=?
          char?
          close-output-port
          cond
          cos
          current-output-port
          define-syntax
          denominator
          do
          eof-object?
          equal?
          eval
          exact->inexact
          exp
          floor
          force
          if
          inexact->exact
          input-port?
          integer?
          lambda
          length
          call-with-output-file
          car
          cdaaar
          cdaar
          cdaddr
          cdar
          cddadr
          cdddar
          cdddr
          cdr
          char->integer
          char-ci<=?
          char-ci=?
          char-ci>?
          char-lower-case?
          char-ready?
          char-upper-case?
          char<=?
          char=?
          char>?
          close-input-port
          complex?
          cons
          current-input-port
          define
          delay
          display
          dynamic-wind
          eq?
          eqv?
          even?
          exact?
          expt
          for-each
          gcd
          imag-part
          inexact?
          integer->char
          interaction-environment
          lcm
          let))
