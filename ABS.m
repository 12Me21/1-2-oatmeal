#+NAVIGATION
#+TITLE
Returns the absolute value of a number (basically, this means removing the `-` sign).
`ABS(NaN)` is `NaN`.  `ABS(-2147483648)` is `-2147483648` due to the size of the integer space.
** Syntax
``` sbsyntax
ABS number# OUT absolute_value#
```
** Examples
``` smilebasic
PRINT ABS(10) '10
PRINT ABS(-10) '10
PRINT ABS(-1.5) '1.5
```