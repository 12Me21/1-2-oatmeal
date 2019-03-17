#+NAVIGATION
#+TITLE
Returns a random number between `0.0` and `1.0`, optionally using a seeded randomizer channel.
It is unknown whether `RNDF` can return `0` or `1` exactly.
The official manual says "greater than 0 and less than 1"[[1]], but similar functions in other languages tend to use the range `[0,1)` (greater than _or equal to_ 0, and less than 1).
** Syntax
``` sbsyntax
RNDF [channel%] OUT value#
```
|*Input|Description|
|`channel%`|Randomizer channel to use; 0 if omitted|
|*Output|Description|
|`value#`|A random number from 0 to 1|
** Examples
Display a random real number between 0.0 and 1.0:
``` smilebasic
PRINT RNDF()
```
** See Also
+ [[RND]]
+ [[RANDOMIZE]]
-----
** References
[[1]] SmileBoom, "Instruction List." [[http://smilebasic.com/en/reference/#math]]
12Me21, "Random Numbers." [[https://smilebasicsource.com/page?pid=992]]
