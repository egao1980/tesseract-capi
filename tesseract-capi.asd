(defsystem "tesseract-capi"
  :version "0.1.0"
  :author "Nikolai Matiushev"
  :license "MIT"
  :depends-on ("cffi"
               "cl-ppcre")
  :components ((:module "src"
                :components
                ((:file "version")
                 (:file "main")
                 (:file "capi3")
                 (:file "capi4")
                 (:file "capi5")
                 (:file "library"))))
  :description "Tesseract C API wrapper"
  :in-order-to ((test-op (test-op "tesseract-capi/tests"))))
