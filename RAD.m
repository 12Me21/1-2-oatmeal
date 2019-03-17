#+NAVIGATION
#+TITLE
Converts an angle from degrees to radians. The inverse of [[DEG]].
`RAD(x)` = `x * PI() / 180` (approximately).
** Syntax
``` sbsyntax
RAD degrees# OUT radians#
```
|*Input|Description|
|`degrees#`|An angle in degrees|
|*Output|Description|
|`radians#`|An angle measure in radians|
** Examples
``` smilebasic
PRINT RAD(-180) '-3.14159265
PRINT RAD(DEG(7)) '7
```
** See Also
+ [[DEG]]
