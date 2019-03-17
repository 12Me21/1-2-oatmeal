#+NAVIGATION
#+TITLE
Rounds down to the nearest whole number (towards -infinity).
** Syntax
``` sbsyntax
FLOOR number# OUT whole_number#
FLOOR integer% OUT integer%
```
|*Input|Description|
|`number#`|A real number|
|`whole_number#`|`number#`, rounded _down_ to the nearest whole number|
If the input is an integer, it will be returned, unchanged.
** Examples
``` smilebasic
PRINT FLOOR(6.2) '6
PRINT FLOOR(10.5) '10
PRINT FLOOR(-2.5) '-3
```
Special cases:
|*Input|Output|
|-0|-0|
|infinity|infinity|
|-infinity|-infinity|
|NaN|NaN|
