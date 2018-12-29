#+NAVIGATION
#+TITLE
Get the current time, or read a time string
* Syntax
``` sbsyntax
TMREAD [time$] OUT hour%, minute%, second%
```
|*Input|Description|
|`time$`|A time string, in the form `HH:MM:SS`. If omitted, [[TIME$]] (the current time) is used.
Numbers must be padded with `0`s.
The time does not have to be valid; any numbers can be used|

|*Output|Description|
|`hour%`|Hours, in 24 hour form, `0` to `23`.|
|`minute%`|Minutes, `0` to `59`.|
|`second%`|Seconds, `0` to `59`.|
* Examples
``` smilebasic
TMREAD OUT H,M,S 'get the current time

TMREAD "99:99:99" OUT H,M,S ' returns 99,99,99
```
* See also
+ [[DTREAD]]
+ [[TIME$]]
+ [[MILLISEC]]