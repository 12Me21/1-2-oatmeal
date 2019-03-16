#+NAVIGATION
#+TITLE
Fills an array with a value. If the value is a string, copies will be made.
For filling multidimensional arrays, see <Page explaining how arrays are treated as 1D>.

** Syntax
``` sbsyntax
FILL array[], value [, [start%] [, [leng​th%]]]
```
|* Parameter | Description |
| `array[]` | Array to fill |
| `value` | Value to fill the array with |
| `start%` | Position to start filling the array; if omitted, 0 |
| `length%` | Length of the region to fill; if omitted, the length of the array minus start%. Must be greater than 0 |
** Examples
``` smilebasic
DIM ARY[10]
FILL ARY,3,0,5 'the first 5 items in ARY are now 3
```
** Possible Errors
|*Error|Cause|
|Out of range|
+ `start%` is less than 0 or too big
+ `length%` is less than 1 or too big
+ `array` has a length of 0
|
|Type mismatch|
+ `array` is not an array of the same type as `value`
+ Wrong argument types
|
|Illegal function call|
+ Wrong number of inputs/outputs
|
|Overflow|
+ Tried to fill an integer array with a number which is too large to store as an integer
+ A value was passed to an integer parameter which is too large
|
** See also
+ [[COPY]]
