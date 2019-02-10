#+NAVIGATION
#+TITLE
Returns the absolute value of a number.
`ABS(nan)` is `nan`, and `ABS(-2147483648)` is `-2147483648`.
** Syntax
```sbsyntax
ABS number OUT absolute_value
```
|*Input|Description|
|`number`|An integer or double|
|*Output|Description|
|`absolute_value`|The absolute value of `number`|
** Examples
```smilebasic
PRINT ABS(10) '10
PRINT ABS(-10) '10
PRINT ABS(-1.5) '1.5
```
** See also
+ [[SGN]]
