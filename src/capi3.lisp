;;; This file was automatically generated by SWIG (http://www.swig.org).
;;; Version 4.0.2
;;;
;;; Do not make changes to this file unless you know what you are doing--modify
;;; the SWIG interface file instead.


(defpackage #:tesseract-capi/v3
  (:use #:cl #:cffi))

(in-package :tesseract-capi/v3)



;;;SWIG wrapper code starts here

(cl:defmacro defanonenum (cl:&body enums)
   "Converts anonymous enums to defconstants."
  `(cl:progn ,@(cl:loop for value in enums
                        for index = 0 then (cl:1+ index)
                        when (cl:listp value) do (cl:setf index (cl:second value)
                                                          value (cl:first value))
                        collect `(cl:defconstant ,value ,index))))

(cl:eval-when (:compile-toplevel :load-toplevel)
  (cl:unless (cl:fboundp 'swig-lispify)
    (cl:defun swig-lispify (name flag cl:&optional (package cl:*package*))
      (cl:labels ((helper (lst last rest cl:&aux (c (cl:car lst)))
                    (cl:cond
                      ((cl:null lst)
                       rest)
                      ((cl:upper-case-p c)
                       (helper (cl:cdr lst) 'upper
                               (cl:case last
                                 ((lower digit) (cl:list* c #\- rest))
                                 (cl:t (cl:cons c rest)))))
                      ((cl:lower-case-p c)
                       (helper (cl:cdr lst) 'lower (cl:cons (cl:char-upcase c) rest)))
                      ((cl:digit-char-p c)
                       (helper (cl:cdr lst) 'digit 
                               (cl:case last
                                 ((upper lower) (cl:list* c #\- rest))
                                 (cl:t (cl:cons c rest)))))
                      ((cl:char-equal c #\_)
                       (helper (cl:cdr lst) '_ (cl:cons #\- rest)))
                      (cl:t
                       (cl:error "Invalid character: ~A" c)))))
        (cl:let ((fix (cl:case flag
                        ((constant enumvalue) "+")
                        (variable "*")
                        (cl:t ""))))
          (cl:intern
           (cl:concatenate
            'cl:string
            fix
            (cl:nreverse (helper (cl:concatenate 'cl:list name) cl:nil cl:nil))
            fix)
           package))))))

;;;SWIG wrapper code ends here


(cl:defconstant MAX_PATH 4096)

(cl:defconstant TRUE 1)

(cl:defconstant FALSE 0)

(cffi:defcenum TessOcrEngineMode
	:OEM_TESSERACT_ONLY
	:OEM_CUBE_ONLY
	:OEM_TESSERACT_CUBE_COMBINED
	:OEM_DEFAULT)

(cffi:defcenum TessPageSegMode
	:PSM_OSD_ONLY
	:PSM_AUTO_OSD
	:PSM_AUTO_ONLY
	:PSM_AUTO
	:PSM_SINGLE_COLUMN
	:PSM_SINGLE_BLOCK_VERT_TEXT
	:PSM_SINGLE_BLOCK
	:PSM_SINGLE_LINE
	:PSM_SINGLE_WORD
	:PSM_CIRCLE_WORD
	:PSM_SINGLE_CHAR
	:PSM_SPARSE_TEXT
	:PSM_SPARSE_TEXT_OSD
	:PSM_COUNT)

(cffi:defcenum TessPageIteratorLevel
	:RIL_BLOCK
	:RIL_PARA
	:RIL_TEXTLINE
	:RIL_WORD
	:RIL_SYMBOL)

(cffi:defcenum TessPolyBlockType
	:PT_UNKNOWN
	:PT_FLOWING_TEXT
	:PT_HEADING_TEXT
	:PT_PULLOUT_TEXT
	:PT_EQUATION
	:PT_INLINE_EQUATION
	:PT_TABLE
	:PT_VERTICAL_TEXT
	:PT_CAPTION_TEXT
	:PT_FLOWING_IMAGE
	:PT_HEADING_IMAGE
	:PT_PULLOUT_IMAGE
	:PT_HORZ_LINE
	:PT_VERT_LINE
	:PT_NOISE
	:PT_COUNT)

(cffi:defcenum TessOrientation
	:ORIENTATION_PAGE_UP
	:ORIENTATION_PAGE_RIGHT
	:ORIENTATION_PAGE_DOWN
	:ORIENTATION_PAGE_LEFT)

(cffi:defcenum TessParagraphJustification
	:JUSTIFICATION_UNKNOWN
	:JUSTIFICATION_LEFT
	:JUSTIFICATION_CENTER
	:JUSTIFICATION_RIGHT)

(cffi:defcenum TessWritingDirection
	:WRITING_DIRECTION_LEFT_TO_RIGHT
	:WRITING_DIRECTION_RIGHT_TO_LEFT
	:WRITING_DIRECTION_TOP_TO_BOTTOM)

(cffi:defcenum TessTextlineOrder
	:TEXTLINE_ORDER_LEFT_TO_RIGHT
	:TEXTLINE_ORDER_RIGHT_TO_LEFT
	:TEXTLINE_ORDER_TOP_TO_BOTTOM)

(cffi:defcfun ("TessVersion" TessVersion) :string)

(cffi:defcfun ("TessDeleteText" TessDeleteText) :void
  (text :string))

(cffi:defcfun ("TessDeleteTextArray" TessDeleteTextArray) :void
  (arr :pointer))

(cffi:defcfun ("TessDeleteIntArray" TessDeleteIntArray) :void
  (arr :pointer))

(cffi:defcfun ("TessTextRendererCreate" TessTextRendererCreate) :pointer
  (outputbase :string))

(cffi:defcfun ("TessHOcrRendererCreate" TessHOcrRendererCreate) :pointer
  (outputbase :string))

(cffi:defcfun ("TessHOcrRendererCreate2" TessHOcrRendererCreate2) :pointer
  (outputbase :string)
  (font_info :int))

(cffi:defcfun ("TessPDFRendererCreate" TessPDFRendererCreate) :pointer
  (outputbase :string)
  (datadir :string))

(cffi:defcfun ("TessPDFRendererCreateTextonly" TessPDFRendererCreateTextonly) :pointer
  (outputbase :string)
  (datadir :string)
  (textonly :int))

(cffi:defcfun ("TessUnlvRendererCreate" TessUnlvRendererCreate) :pointer
  (outputbase :string))

(cffi:defcfun ("TessBoxTextRendererCreate" TessBoxTextRendererCreate) :pointer
  (outputbase :string))

(cffi:defcfun ("TessDeleteResultRenderer" TessDeleteResultRenderer) :void
  (renderer :pointer))

(cffi:defcfun ("TessResultRendererInsert" TessResultRendererInsert) :void
  (renderer :pointer)
  (next :pointer))

(cffi:defcfun ("TessResultRendererNext" TessResultRendererNext) :pointer
  (renderer :pointer))

(cffi:defcfun ("TessResultRendererBeginDocument" TessResultRendererBeginDocument) :int
  (renderer :pointer)
  (title :string))

(cffi:defcfun ("TessResultRendererAddImage" TessResultRendererAddImage) :int
  (renderer :pointer)
  (api :pointer))

(cffi:defcfun ("TessResultRendererEndDocument" TessResultRendererEndDocument) :int
  (renderer :pointer))

(cffi:defcfun ("TessResultRendererExtention" TessResultRendererExtention) :string
  (renderer :pointer))

(cffi:defcfun ("TessResultRendererTitle" TessResultRendererTitle) :string
  (renderer :pointer))

(cffi:defcfun ("TessResultRendererImageNum" TessResultRendererImageNum) :int
  (renderer :pointer))

(cffi:defcfun ("TessBaseAPICreate" TessBaseAPICreate) :pointer)

(cffi:defcfun ("TessBaseAPIDelete" TessBaseAPIDelete) :void
  (handle :pointer))

(cffi:defcfun ("TessBaseAPIGetOpenCLDevice" TessBaseAPIGetOpenCLDevice) :pointer
  (handle :pointer)
  (device :pointer))

(cffi:defcfun ("TessBaseAPISetInputName" TessBaseAPISetInputName) :void
  (handle :pointer)
  (name :string))

(cffi:defcfun ("TessBaseAPIGetInputName" TessBaseAPIGetInputName) :string
  (handle :pointer))

(cffi:defcfun ("TessBaseAPISetInputImage" TessBaseAPISetInputImage) :void
  (handle :pointer)
  (pix :pointer))

(cffi:defcfun ("TessBaseAPIGetInputImage" TessBaseAPIGetInputImage) :pointer
  (handle :pointer))

(cffi:defcfun ("TessBaseAPIGetSourceYResolution" TessBaseAPIGetSourceYResolution) :int
  (handle :pointer))

(cffi:defcfun ("TessBaseAPIGetDatapath" TessBaseAPIGetDatapath) :string
  (handle :pointer))

(cffi:defcfun ("TessBaseAPISetOutputName" TessBaseAPISetOutputName) :void
  (handle :pointer)
  (name :string))

(cffi:defcfun ("TessBaseAPISetVariable" TessBaseAPISetVariable) :int
  (handle :pointer)
  (name :string)
  (value :string))

(cffi:defcfun ("TessBaseAPISetDebugVariable" TessBaseAPISetDebugVariable) :int
  (handle :pointer)
  (name :string)
  (value :string))

(cffi:defcfun ("TessBaseAPIGetIntVariable" TessBaseAPIGetIntVariable) :int
  (handle :pointer)
  (name :string)
  (value :pointer))

(cffi:defcfun ("TessBaseAPIGetBoolVariable" TessBaseAPIGetBoolVariable) :int
  (handle :pointer)
  (name :string)
  (value :pointer))

(cffi:defcfun ("TessBaseAPIGetDoubleVariable" TessBaseAPIGetDoubleVariable) :int
  (handle :pointer)
  (name :string)
  (value :pointer))

(cffi:defcfun ("TessBaseAPIGetStringVariable" TessBaseAPIGetStringVariable) :string
  (handle :pointer)
  (name :string))

(cffi:defcfun ("TessBaseAPIPrintVariables" TessBaseAPIPrintVariables) :void
  (handle :pointer)
  (fp :pointer))

(cffi:defcfun ("TessBaseAPIPrintVariablesToFile" TessBaseAPIPrintVariablesToFile) :int
  (handle :pointer)
  (filename :string))

(cffi:defcfun ("TessBaseAPIInit1" TessBaseAPIInit1) :int
  (handle :pointer)
  (datapath :string)
  (language :string)
  (oem TessOcrEngineMode)
  (configs :pointer)
  (configs_size :int))

(cffi:defcfun ("TessBaseAPIInit2" TessBaseAPIInit2) :int
  (handle :pointer)
  (datapath :string)
  (language :string)
  (oem TessOcrEngineMode))

(cffi:defcfun ("TessBaseAPIInit3" TessBaseAPIInit3) :int
  (handle :pointer)
  (datapath :string)
  (language :string))

(cffi:defcfun ("TessBaseAPIInit4" TessBaseAPIInit4) :int
  (handle :pointer)
  (datapath :string)
  (language :string)
  (mode TessOcrEngineMode)
  (configs :pointer)
  (configs_size :int)
  (vars_vec :pointer)
  (vars_values :pointer)
  (vars_vec_size :pointer)
  (set_only_non_debug_params :int))

(cffi:defcfun ("TessBaseAPIGetInitLanguagesAsString" TessBaseAPIGetInitLanguagesAsString) :string
  (handle :pointer))

(cffi:defcfun ("TessBaseAPIGetLoadedLanguagesAsVector" TessBaseAPIGetLoadedLanguagesAsVector) :pointer
  (handle :pointer))

(cffi:defcfun ("TessBaseAPIGetAvailableLanguagesAsVector" TessBaseAPIGetAvailableLanguagesAsVector) :pointer
  (handle :pointer))

(cffi:defcfun ("TessBaseAPIInitLangMod" TessBaseAPIInitLangMod) :int
  (handle :pointer)
  (datapath :string)
  (language :string))

(cffi:defcfun ("TessBaseAPIInitForAnalysePage" TessBaseAPIInitForAnalysePage) :void
  (handle :pointer))

(cffi:defcfun ("TessBaseAPIReadConfigFile" TessBaseAPIReadConfigFile) :void
  (handle :pointer)
  (filename :string))

(cffi:defcfun ("TessBaseAPIReadDebugConfigFile" TessBaseAPIReadDebugConfigFile) :void
  (handle :pointer)
  (filename :string))

(cffi:defcfun ("TessBaseAPISetPageSegMode" TessBaseAPISetPageSegMode) :void
  (handle :pointer)
  (mode TessPageSegMode))

(cffi:defcfun ("TessBaseAPIGetPageSegMode" TessBaseAPIGetPageSegMode) TessPageSegMode
  (handle :pointer))

(cffi:defcfun ("TessBaseAPIRect" TessBaseAPIRect) :string
  (handle :pointer)
  (imagedata :pointer)
  (bytes_per_pixel :int)
  (bytes_per_line :int)
  (left :int)
  (top :int)
  (width :int)
  (height :int))

(cffi:defcfun ("TessBaseAPIClearAdaptiveClassifier" TessBaseAPIClearAdaptiveClassifier) :void
  (handle :pointer))

(cffi:defcfun ("TessBaseAPISetImage" TessBaseAPISetImage) :void
  (handle :pointer)
  (imagedata :pointer)
  (width :int)
  (height :int)
  (bytes_per_pixel :int)
  (bytes_per_line :int))

(cffi:defcfun ("TessBaseAPISetImage2" TessBaseAPISetImage2) :void
  (handle :pointer)
  (pix :pointer))

(cffi:defcfun ("TessBaseAPISetSourceResolution" TessBaseAPISetSourceResolution) :void
  (handle :pointer)
  (ppi :int))

(cffi:defcfun ("TessBaseAPISetRectangle" TessBaseAPISetRectangle) :void
  (handle :pointer)
  (left :int)
  (top :int)
  (width :int)
  (height :int))

(cffi:defcfun ("TessBaseAPIGetThresholdedImage" TessBaseAPIGetThresholdedImage) :pointer
  (handle :pointer))

(cffi:defcfun ("TessBaseAPIGetRegions" TessBaseAPIGetRegions) :pointer
  (handle :pointer)
  (pixa :pointer))

(cffi:defcfun ("TessBaseAPIGetTextlines" TessBaseAPIGetTextlines) :pointer
  (handle :pointer)
  (pixa :pointer)
  (blockids :pointer))

(cffi:defcfun ("TessBaseAPIGetTextlines1" TessBaseAPIGetTextlines1) :pointer
  (handle :pointer)
  (raw_image :int)
  (raw_padding :int)
  (pixa :pointer)
  (blockids :pointer)
  (paraids :pointer))

(cffi:defcfun ("TessBaseAPIGetStrips" TessBaseAPIGetStrips) :pointer
  (handle :pointer)
  (pixa :pointer)
  (blockids :pointer))

(cffi:defcfun ("TessBaseAPIGetWords" TessBaseAPIGetWords) :pointer
  (handle :pointer)
  (pixa :pointer))

(cffi:defcfun ("TessBaseAPIGetConnectedComponents" TessBaseAPIGetConnectedComponents) :pointer
  (handle :pointer)
  (cc :pointer))

(cffi:defcfun ("TessBaseAPIGetComponentImages" TessBaseAPIGetComponentImages) :pointer
  (handle :pointer)
  (level TessPageIteratorLevel)
  (text_only :int)
  (pixa :pointer)
  (blockids :pointer))

(cffi:defcfun ("TessBaseAPIGetComponentImages1" TessBaseAPIGetComponentImages1) :pointer
  (handle :pointer)
  (level TessPageIteratorLevel)
  (text_only :int)
  (raw_image :int)
  (raw_padding :int)
  (pixa :pointer)
  (blockids :pointer)
  (paraids :pointer))

(cffi:defcfun ("TessBaseAPIGetThresholdedImageScaleFactor" TessBaseAPIGetThresholdedImageScaleFactor) :int
  (handle :pointer))

(cffi:defcfun ("TessBaseAPIDumpPGM" TessBaseAPIDumpPGM) :void
  (handle :pointer)
  (filename :string))

(cffi:defcfun ("TessBaseAPIAnalyseLayout" TessBaseAPIAnalyseLayout) :pointer
  (handle :pointer))

(cffi:defcfun ("TessBaseAPIRecognize" TessBaseAPIRecognize) :int
  (handle :pointer)
  (monitor :pointer))

(cffi:defcfun ("TessBaseAPIRecognizeForChopTest" TessBaseAPIRecognizeForChopTest) :int
  (handle :pointer)
  (monitor :pointer))

(cffi:defcfun ("TessBaseAPIProcessPages" TessBaseAPIProcessPages) :int
  (handle :pointer)
  (filename :string)
  (retry_config :string)
  (timeout_millisec :int)
  (renderer :pointer))

(cffi:defcfun ("TessBaseAPIProcessPage" TessBaseAPIProcessPage) :int
  (handle :pointer)
  (pix :pointer)
  (page_index :int)
  (filename :string)
  (retry_config :string)
  (timeout_millisec :int)
  (renderer :pointer))

(cffi:defcfun ("TessBaseAPIGetIterator" TessBaseAPIGetIterator) :pointer
  (handle :pointer))

(cffi:defcfun ("TessBaseAPIGetMutableIterator" TessBaseAPIGetMutableIterator) :pointer
  (handle :pointer))

(cffi:defcfun ("TessBaseAPIGetUTF8Text" TessBaseAPIGetUTF8Text) :string
  (handle :pointer))

(cffi:defcfun ("TessBaseAPIGetHOCRText" TessBaseAPIGetHOCRText) :string
  (handle :pointer)
  (page_number :int))

(cffi:defcfun ("TessBaseAPIGetBoxText" TessBaseAPIGetBoxText) :string
  (handle :pointer)
  (page_number :int))

(cffi:defcfun ("TessBaseAPIGetUNLVText" TessBaseAPIGetUNLVText) :string
  (handle :pointer))

(cffi:defcfun ("TessBaseAPIMeanTextConf" TessBaseAPIMeanTextConf) :int
  (handle :pointer))

(cffi:defcfun ("TessBaseAPIAllWordConfidences" TessBaseAPIAllWordConfidences) :pointer
  (handle :pointer))

(cffi:defcfun ("TessBaseAPIAdaptToWordStr" TessBaseAPIAdaptToWordStr) :int
  (handle :pointer)
  (mode TessPageSegMode)
  (wordstr :string))

(cffi:defcfun ("TessBaseAPIClear" TessBaseAPIClear) :void
  (handle :pointer))

(cffi:defcfun ("TessBaseAPIEnd" TessBaseAPIEnd) :void
  (handle :pointer))

(cffi:defcfun ("TessBaseAPIIsValidWord" TessBaseAPIIsValidWord) :int
  (handle :pointer)
  (word :string))

(cffi:defcfun ("TessBaseAPIGetTextDirection" TessBaseAPIGetTextDirection) :int
  (handle :pointer)
  (out_offset :pointer)
  (out_slope :pointer))

(cffi:defcfun ("TessBaseAPIGetUnichar" TessBaseAPIGetUnichar) :string
  (handle :pointer)
  (unichar_id :int))

(cffi:defcfun ("TessBaseAPISetMinOrientationMargin" TessBaseAPISetMinOrientationMargin) :void
  (handle :pointer)
  (margin :double))

(cffi:defcfun ("TessPageIteratorDelete" TessPageIteratorDelete) :void
  (handle :pointer))

(cffi:defcfun ("TessPageIteratorCopy" TessPageIteratorCopy) :pointer
  (handle :pointer))

(cffi:defcfun ("TessPageIteratorBegin" TessPageIteratorBegin) :void
  (handle :pointer))

(cffi:defcfun ("TessPageIteratorNext" TessPageIteratorNext) :int
  (handle :pointer)
  (level TessPageIteratorLevel))

(cffi:defcfun ("TessPageIteratorIsAtBeginningOf" TessPageIteratorIsAtBeginningOf) :int
  (handle :pointer)
  (level TessPageIteratorLevel))

(cffi:defcfun ("TessPageIteratorIsAtFinalElement" TessPageIteratorIsAtFinalElement) :int
  (handle :pointer)
  (level TessPageIteratorLevel)
  (element TessPageIteratorLevel))

(cffi:defcfun ("TessPageIteratorBoundingBox" TessPageIteratorBoundingBox) :int
  (handle :pointer)
  (level TessPageIteratorLevel)
  (left :pointer)
  (top :pointer)
  (right :pointer)
  (bottom :pointer))

(cffi:defcfun ("TessPageIteratorBlockType" TessPageIteratorBlockType) TessPolyBlockType
  (handle :pointer))

(cffi:defcfun ("TessPageIteratorGetBinaryImage" TessPageIteratorGetBinaryImage) :pointer
  (handle :pointer)
  (level TessPageIteratorLevel))

(cffi:defcfun ("TessPageIteratorGetImage" TessPageIteratorGetImage) :pointer
  (handle :pointer)
  (level TessPageIteratorLevel)
  (padding :int)
  (original_image :pointer)
  (left :pointer)
  (top :pointer))

(cffi:defcfun ("TessPageIteratorBaseline" TessPageIteratorBaseline) :int
  (handle :pointer)
  (level TessPageIteratorLevel)
  (x1 :pointer)
  (y1 :pointer)
  (x2 :pointer)
  (y2 :pointer))

(cffi:defcfun ("TessPageIteratorOrientation" TessPageIteratorOrientation) :void
  (handle :pointer)
  (orientation :pointer)
  (writing_direction :pointer)
  (textline_order :pointer)
  (deskew_angle :pointer))

(cffi:defcfun ("TessPageIteratorParagraphInfo" TessPageIteratorParagraphInfo) :void
  (handle :pointer)
  (justification :pointer)
  (is_list_item :pointer)
  (is_crown :pointer)
  (first_line_indent :pointer))

(cffi:defcfun ("TessResultIteratorDelete" TessResultIteratorDelete) :void
  (handle :pointer))

(cffi:defcfun ("TessResultIteratorCopy" TessResultIteratorCopy) :pointer
  (handle :pointer))

(cffi:defcfun ("TessResultIteratorGetPageIterator" TessResultIteratorGetPageIterator) :pointer
  (handle :pointer))

(cffi:defcfun ("TessResultIteratorGetPageIteratorConst" TessResultIteratorGetPageIteratorConst) :pointer
  (handle :pointer))

(cffi:defcfun ("TessResultIteratorGetChoiceIterator" TessResultIteratorGetChoiceIterator) :pointer
  (handle :pointer))

(cffi:defcfun ("TessResultIteratorNext" TessResultIteratorNext) :int
  (handle :pointer)
  (level TessPageIteratorLevel))

(cffi:defcfun ("TessResultIteratorGetUTF8Text" TessResultIteratorGetUTF8Text) :string
  (handle :pointer)
  (level TessPageIteratorLevel))

(cffi:defcfun ("TessResultIteratorConfidence" TessResultIteratorConfidence) :float
  (handle :pointer)
  (level TessPageIteratorLevel))

(cffi:defcfun ("TessResultIteratorWordRecognitionLanguage" TessResultIteratorWordRecognitionLanguage) :string
  (handle :pointer))

(cffi:defcfun ("TessResultIteratorWordFontAttributes" TessResultIteratorWordFontAttributes) :string
  (handle :pointer)
  (is_bold :pointer)
  (is_italic :pointer)
  (is_underlined :pointer)
  (is_monospace :pointer)
  (is_serif :pointer)
  (is_smallcaps :pointer)
  (pointsize :pointer)
  (font_id :pointer))

(cffi:defcfun ("TessResultIteratorWordIsFromDictionary" TessResultIteratorWordIsFromDictionary) :int
  (handle :pointer))

(cffi:defcfun ("TessResultIteratorWordIsNumeric" TessResultIteratorWordIsNumeric) :int
  (handle :pointer))

(cffi:defcfun ("TessResultIteratorSymbolIsSuperscript" TessResultIteratorSymbolIsSuperscript) :int
  (handle :pointer))

(cffi:defcfun ("TessResultIteratorSymbolIsSubscript" TessResultIteratorSymbolIsSubscript) :int
  (handle :pointer))

(cffi:defcfun ("TessResultIteratorSymbolIsDropcap" TessResultIteratorSymbolIsDropcap) :int
  (handle :pointer))

(cffi:defcfun ("TessChoiceIteratorDelete" TessChoiceIteratorDelete) :void
  (handle :pointer))

(cffi:defcfun ("TessChoiceIteratorNext" TessChoiceIteratorNext) :int
  (handle :pointer))

(cffi:defcfun ("TessChoiceIteratorGetUTF8Text" TessChoiceIteratorGetUTF8Text) :string
  (handle :pointer))

(cffi:defcfun ("TessChoiceIteratorConfidence" TessChoiceIteratorConfidence) :float
  (handle :pointer))

(let ((pack (find-package :tesseract-capi/v3)))
  (do-all-symbols (sym pack) (when (eql (symbol-package sym) pack) (export sym))))



