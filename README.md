# CL_caesar
Solve caesar crypto by Common Lisp.

# Demo

```bash
$ clisp
(load "solver.lisp")

# If you want to ignore some string, use add-ignore function.
# ignore "I" and "j".
(add-ignore "Ij")

(solve "abCdefGXyZ" 10)
-> klMnopQHiJ (stdout)
```
