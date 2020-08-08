; 文字列をASCIIのリストへ。
(defun str-code (str)
  (mapcar #'char-code
  (coerce str 'list)))

; ASCIIのリストを文字列に。
(defun dec-code (asc)
  (coerce (mapcar #'code-char
          asc)
  'string))

; 無視する文字のASCIIは無視して計算。
(defun ascii-shift (lst val)
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
    lst))

; strをval文字ずらす。
(defun solve (str val)
  (princ (dec-code (ascii-shift (str-code str) val))))

; strを1から26文字ずらした結果を表示
(defun solve-all (str)
  (let ((ascii (str-code str)))
    (loop for i
          from 1
          below 26
          do(progn
              ;何文字ずらしたか
              (princ i)
              (princ ">> ")

              (princ (dec-code (ascii-shift ascii i)))
              (fresh-line)))))
