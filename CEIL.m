#+NAVIGATION
#+TITLE
Rounds upwards to the nearest whole number (towards infinity).
** Syntax
``` sbsyntax
CEIL number# OUT whole_number#
CEIL integer% OUT integer%
```
|*Input|Description|
|`number#`|A real number|
|`whole_number#`|`number#`, rounded _up_ to the nearest whole number|
If the input is an integer, it will be returned, unchanged.
** Examples
``` smilebasic
PRINT CEIL(6.2) '7
PRINT CEIL(10.5) '11
PRINT CEIL(-2.5) '-2
```
Special cases:
|*Input|Output|
|-0|-0|
|infinity|infinity|
|-infinity|-infinity|
|NaN|NaN|
