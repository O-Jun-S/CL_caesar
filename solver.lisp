(defparameter *ignore* nil)

; 文字列をASCIIのリストへ。
(defun str-code (str)
  (mapcar #'char-code
  (coerce str 'list)))

; ASCIIのリストを文字列に。
(defun dec-code (asc)
  (coerce (mapcar #'code-char
          asc)
  'string))

; 無視する文字のASCIIは無視して計算
(defun ascii-shift (lst val)
  (if (member lst *ignore*)
    lst
    (mapcar 
      (lambda (chr)
        (setq plused-ascii (+ chr val))
              (cond ((<= 65 chr 90)
                     (cond ((< plused-ascii 65) (incf plused-ascii 26)
                                                plused-ascii)
                           ((> plused-ascii 90) (decf plused-ascii 26)
                                                plused-ascii)
                           (t plused-ascii)))
                     ((<= 97 chr 122)
                      (cond ((< plused-ascii 97) (incf plused-ascii 26)
                                                 plused-ascii)
                            ((> plused-ascii 122) (decf plused-ascii 26)
                                                  plused-ascii)
                            (t plused-ascii)))
                     (t chr)))
      lst)))

; 無視する文字を追加
(defun add-ignore (ignore-str)
  (mapcar (lambda (x) (pushnew x *ignore*))
          (mapcar #'char-code (coerce ignore-str 'list)))
  *ignore*)

(defun solve (str val)
  (princ (dec-code (ascii-shift (str-code str) val))))
