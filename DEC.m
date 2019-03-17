#+NAVIGATION
#+TITLE
Subtracts a value from a variable.
`DEC variable, amount` is a shorter way of writing `variable = variable - amount` (similar to `variable -=​ amount` in other languages).
** Syntax
``` sbsyntax
DEC number_variable [, amount]
```
** Examples
``` smilebasic
X=13
DEC X
PRINT X '12
DEC X,10
PRINT X '2
```
** Possible Errors
|*Error|Cause|
|Type mismatch|Wrong argument type|
|Syntax error|
+ Wrong number of arguments
+ First argument is not a variable
+ Other syntax error
|
** See Also
+ [[INC]]
