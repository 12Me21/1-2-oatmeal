#+NAVIGATION
#+TITLE
Calculates the square root of a number.
** Syntax
```sbsyntax
SQR number# OUT square_root#
```
** Examples
```smilebasic
PRINT SQR(16) '4
PRINT SQR(2) '1.41421356
PRINT SQR(7)*SQR(7) '7
```
** Errors
|*Error|Cause|
|`Out of range`|`number#` is less than 0|
|`Type mismatch`|Input was a string or array|
|`Illegal function call`|Wrong number of inputs/outputs|
