(defpackage :tesseract-capi/version
  (:use :cl
        :cffi
        :cl-ppcre)
  (:export :tesseract-version))

(in-package :tesseract-capi/version)

(cffi:defcfun ("TessVersion" TessVersion) :string)

(defun tesseract-version ()
  "Get Tesseract library version. Assumes that libtesseract is loaded."
  (cl-ppcre:split "\\.|-" (tessversion)))