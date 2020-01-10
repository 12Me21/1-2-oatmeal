#+NAVIGATION
#+TITLE
Get 1 sample from the mic buffer.
Mic must be enabled with [[XON MIC]] first, but [[MICDATA]] can still be used if the mic is enabled but not currently recording.
** Syntax
``` sbsyntax
MICSTART [position%] OUT sample%
```
|*Input|Description|
|`position%`|Position of sample to get. Defaults to [[MICPOS]].
Can't be negative, but treated as `position% MOD MICSIZE` if larger than `MICSIZE`.|
|*Output|Description|
|`sample%`|See [[MICSTART]] for sample formats.|
** Examples
``` smilebasic
XON MIC
MICSTART 3,3,0
WHILE 1
 ?MICDATA()
WEND
```
** Possible Errors
|*Error|Cause|
|`Mic is not available`|Mic is not enabled (Use [[XON MIC]] first)|
|`Out of range`|`position%` is negative|
|`Type mismatch`|Wrong argument type|
|`Illegal function call`|Wrong number of arguments|
** See Also
+ [[MICSTART]]
+ [[MICSAVE]]
-----
#+NAVIGATION
