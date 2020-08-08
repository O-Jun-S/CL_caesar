# CL-caesar
Solve caesar crypto by Common Lisp.

# Demo

```common-lisp:REPL
(load "solver.lisp")

; If you are going to solve "RXMS{MNO}".
(solve-all "RXMS{MNO}")
```
returns
```
1>> SYNT{NOP}
2>> TZOU{OPQ}
3>> UAPV{PQR}
4>> VBQW{QRS}
5>> WCRX{RST}
6>> XDSY{STU}
7>> YETZ{TUV}
8>> ZFUA{UVW}
9>> AGVB{VWX}
10>> BHWC{WXY}
11>> CIXD{XYZ}
12>> DJYE{YZA}
13>> EKZF{ZAB}
14>> FLAG{ABC}
15>> GMBH{BCD}
16>> HNCI{CDE}
17>> IODJ{DEF}
18>> JPEK{EFG}
19>> KQFL{FGH}
20>> LRGM{GHI}
21>> MSHN{HIJ}
22>> NTIO{IJK}
23>> OUJP{JKL}
24>> PVKQ{KLM}
25>> QWLR{LMN}
```
FLAG{ABC} at 14th line looks like correct flag.

If you are going to solve long caesar-crypto.
Run solve-all with a word of the passage.
Then a correct word will be appear.
Then run solve with the passage, and line number that the word was appear.
