(in-package :tesseract-capi)

(cffi:define-foreign-library tesseract
  (:darwin (:or 
            "libtesseract.5.dylib" 
            "libtesseract.4.dylib" 
            "libtesseract.3.dylib" 
            "libtesseract.dylib"))
  (:linux (:or 
           "libtesseract.5.so" 
           "libtesseract.4.so"
           "libtesseract.3.so" 
           "libtesseract.so"))
  (t (:default 
       "libtesseract-5"
       "libtesseract-4"
       "libtesseract-3"
       "libtesseract")))

(cffi:use-foreign-library tesseract)

(let* ((package-name 
        (case (car (tesseract-capi/version:tesseract-version))
          (3  :tesseract-capi/v3)
          (4  :tesseract-capi/v4)
          (otherwise :tesseract-capi/v5)))
       (package (find-package package-name)))
  (do-all-symbols (sym package) 
    (when (eql (symbol-package sym) package) 
      (progn
        (shadowing-import sym)
        (export sym)))))



