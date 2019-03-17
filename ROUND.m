#+NAVIGATION
#+TITLE
Rounds to the nearest whole number. `.5` is rounded up (away from 0).
** Syntax
``` sbsyntax
ROUND number# OUT whole_number#
ROUND integer% OUT integer%
```
|*Input|Description|
|`number#`|A real number|
|`whole_number#`|`number#`, rounded to the nearest whole number|
If the input is an integer, it will be returned, unchanged.
** Examples
``` smilebasic
PRINT ROUND(6.2) '6
PRINT ROUND(10.5) '11
PRINT ROUND(-2.5) '-3
```
|*Input|Output|
|-0.5|-1|
|0.5|1|
|1.5|2|
|-0|0|
|infinity|infinity|
|NaN|NaN|
