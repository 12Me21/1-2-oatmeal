#+NAVIGATION
#+TITLE
Checks if a number is `inf` or `nan`.
** Syntax
```sbsyntax
CLASSIFY number# OUT group%
```
|*Input|Description|
|`number#`|A number|
|*Output|Description|
|`group%`|{|*Value|Meaning|
|`0`|Regular numbers|
|`1`|`inf` or `-inf`|
|`2`|`nan`|}|
** Examples
```smilebasic
PRINT CLASSIFY(10) '0 (normal)
PRINT CLASSIFY(EXP(999)) '1 (infinity)
PRINT CLASSIFY(EXP(999)*0) '2 (nan)
```
** Version Information
+ 3.1.0 - Added
