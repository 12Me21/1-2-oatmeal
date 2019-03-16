#+NAVIGATION
#+TITLE
Finds the largest number in a list or array.
** Syntax
```sbsyntax
MAX number_1, number_2 OUT maximum
MAX number_1#, number_2#, ... OUT maximum#
MAX array[] OUT maximum
```
|*Input|Description|
|`number_1`,`number_2`,...|List of numbers. Must have at least 2 items|
|`array[]`|A numerical array. Must have at least 1 item|
|*Output|Description|
|`maximum`,`maximum#`|The largest number in the array/list. The type will be the same as the input if an array or two numbers were used, otherwise it will always be a float. |
** Examples
```smilebasic
PRINT MAX(7,4,8) '8
DIM A[3]
A[0]=7
A[1]=4
A[2]=8
PRINT MAX(A) '8
```
** Possible Errors
|*Error|Cause|
|Type mismatch|
+ The list of numbers has fewer than 2 items or a value which isn’t a number
+ A string array was used
|
|Illegal function call|
+ Wrong number of inputs/outputs
+ The input array has a length of 0
|
