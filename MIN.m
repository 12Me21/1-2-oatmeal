#+NAVIGATION
#+TITLE
Finds the smallest number in a list or array.
** Syntax
```sbsyntax
MIN number_1, number_2 OUT minimum
MIN number_1, number_2, ... OUT minimum#
MIN array[] OUT minimum
```
|*Input|Description|
|`number_1`,`number_2`,...|List of numbers. Must have at least 2 items|
|`array[]`|A numerical array. Must have at least 1 item|
|*Output|Description|
|`minimum`,`minimum#`|The smallest number in the array/list. The type will be the same as the input if an array or two numbers were used, otherwise it will always be a float. |
** Examples
```smilebasic
PRINT MIN(7,4,8) '4
DIM A[3]
A[0]=7
A[1]=4
A[2]=8
PRINT MIN(A) '4
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
