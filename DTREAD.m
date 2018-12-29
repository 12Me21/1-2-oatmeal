#+NAVIGATION
#+TITLE
Get the current date, or read a date string
* Syntax
``` sbsyntax
DTREAD [date$] OUT year%, month%, day% [, weekday%]
```
|*Input|Description|
|`date$`|A date string, in the form `YYYY/MM/DD`. If omitted, [[DATE$]] (the current date) is used.
Numbers must be padded with `0`s.
If the weekday is being calculated, the date must be valid and not earlier than 1753.
Otherwise, any numbers can be used.|

|*Output|Description|
|`year%`|The year.|
|`month%`|The month, `1` to `12`.|
|`day%`|The day, `1` to `31`.|
|`weekday%`|The day of the week, `0` to `6` (starting on Sunday).|
* Examples
``` smilebasic
DTREAD OUT Y,M,D 'get the current date

DTREAD "2014/05/22" OUT Y,M,D,WD ' returns 2014,5,22,4
DTREAD "9999/99/99" OUT Y,M,D ' returns 9999,99,99
DTREAD "9999/99/99" OUT Y,M,D,WD ' error
```
* See also
+ [[TMREAD]]
+ [[DATE$]]