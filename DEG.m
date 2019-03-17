#+NAVIGATION
#+TITLE
Converts an angle from radians to degrees.
`DEG(x)` = `x * 180 / PI()` (approximately).
** Syntax
``` sbsyntax
DEG radians# OUT degrees#
```
|*Input|Description|
|`radians#`|An angle measure in radians|
|*Output|Description|
|`degrees#`|An angle in degrees|
** Examples
``` smilebasic
PRINT DEG(PI()/2) '90
PRINT DEG(-PI()) '-180
PRINT DEG(RAD(14522)) '14522
```
** See Also
+ [[RAD]]
