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

```common-lisp:REPL
; If you are going to solve "Pdana wna pdnaa wllhao.".
; Pickup a word. Pick "wllhao" now.
(solve-all "wllhao")
```
returns
```
1>> xmmibp
2>> ynnjcq
3>> zookdr
4>> apples
5>> bqqmft
6>> crrngu
7>> dssohv
8>> ettpiw
9>> fuuqjx
10>> gvvrky
11>> hwwslz
12>> ixxtma
13>> jyyunb
14>> kzzvoc
15>> laawpd
16>> mbbxqe
17>> nccyrf
18>> oddzsg
19>> peeath
20>> qffbui
21>> rggcvj
22>> shhdwk
23>> tiiexl
24>> ujjfym
25>> vkkgzn
```

"apples" at line 4th is correct word.
Correct passage will be appear when shift passage 4 letters.

```common-list:REPL
(solve "Pdana wna pdnaa wllhao." 4)
```
returns
```
There are three apples.
```
