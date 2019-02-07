#+NAVIGATION
#+TITLE
Returns a power of /[[//en.wikipedia.org/wiki/E_(mathematical_constant)][e]]/.

Equivalent to `POW(2.7182818284590451, exponent#)`.
(The exponent is optional and defaults to 1, so `EXP()` returns /e/.)

`EXP(999)` is commonly used as a function that returns `inf`.
** Syntax
```sbsyntax
EXP [exponent#] OUT power#
```
|*Input|Description|
|`exponent#`|The exponent to raise /e/ to.|
|*Output|Description|
|`power#`|{/e/}^`exponent#`|
** Examples
```smilebasic
E = EXP()
PRINT EXP(12)
PRINT POW(E,12)
```
** See Also
+ [[POW]]
+ [[LOG]]
