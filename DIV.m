#+NAVIGATION
#+TITLE
Integer division.
`a DIV b` = `INT( INT(a) / INT(b) )`, where `INT` rounds towards 0.
** Syntax
``` sbsyntax
a% DIV b%
```
** Examples
``` smilebasic
PRINT 5 DIV 2 '2
PRINT -5 DIV 2 '-2
PRINT 1 DIV 0.5 'divide by 0 error
```
** Possible Errors
|*Error|Cause|
|`Type mismatch`|Wrong argument type|
|`Divide by zero`|Tried to divide by 0 (arguments are converted to integers, so `10 DIV 0.5` throws a divide by 0 error)|
