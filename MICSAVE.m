#+NAVIGATION
#+TITLE
Copy data from the mic buffer into an array.
Does not require mic to be enabled or recording.
Note: even though the mic records into a circular buffer, MICSAVE does not wrap if the range goes past the end of the buffer,
so you will need to use it twice to copy all the data.
** Syntax
``` sbsyntax
MICSAVE [[position%,] length%,] array%[]
```
|*Input|Description|
|`position%`|Position to start copying from. Defaults to 0.
Range: 0 to [[MICSIZE]]-1|
|`length%`|Number of samples to copy. Defaults to [[MICSIZE]].
Range: 1 to [[MICSIZE]]-`position%`|
|`array%`|Array to store samples in. 1 dimensional arrays will be extended if too short.
See [[MICSTART]] for sample formats|
** Examples
Record for 4 seconds and save the samples to an array
``` smilebasic
XON MIC
MICSTART 3,3,4
WAIT 4*60
DIM A[0]
MICSAVE A
```
** Possible Errors
|*Error|Cause|
|`Out of range`|An argument was out of range|
|`Type mismatch`|Wrong argument type, or a multidimensional array with a length less than `length%` was used|
|`Illegal function call`|Wrong number of arguments|
** See Also
+ [[MICSTART]]
+ [[MICDATA]]
-----
#+NAVIGATION
