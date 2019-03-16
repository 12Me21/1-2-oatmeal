#+NAVIGATION
#+TITLE
Checks the length of a string or array.
For multidimensional arrays, LEN returns the total number of items in the array. There is no way to find the number of dimensions in an array, or to check the size of a specific dimension.
** Syntax
``` sbsyntax
LEN string$ OUT leng​th%
LEN array[] OUT len​gth%
```
** Examples
``` smilebasic
PRINT LEN("test") '4
DIM A[7]
PRINT LEN(A) '7
DIM B[4,3]
PRINT LEN(B) '12
```
** Possible Errors
|*Error|Cause|
|Type mismatch|Wrong input/output type|
|Illegal function call|Wrong number of inputs/outputs|
