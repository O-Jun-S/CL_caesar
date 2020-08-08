; String to ascii list.
(defun str-code (str)
  (mapcar #'char-code
  (coerce str 'list)))

; Ascii list to string.
(defun dec-code (asc)
  (coerce (mapcar #'code-char
          asc)
  'string))

; String shift function.
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

; Shift str for val.
(defun solve (str val)
  (princ (dec-code (ascii-shift (str-code str) val))))

; Shift str from 1 to 26.
(defun solve-all (str)
  (let ((ascii (str-code str)))
    (loop for i
          from 1
          below 26
          do(progn;
              (princ i)
              (princ ">> ")

              (princ (dec-code (ascii-shift ascii i)))
              (fresh-line)))))
