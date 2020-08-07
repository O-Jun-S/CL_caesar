# CL_caesar
Solve caesar crypto by Common Lisp.

# Demo

```bash
$ clisp
(load "solver.lisp")

# If you want to ignore some string, use add-ignore function.
# ignore "{" and "}".
(add-ignore "{}")

(solve "FLAG{testflag}" -3)
CI>D{qbpqci^d}  # stdout
```
