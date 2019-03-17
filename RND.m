#+NAVIGATION
#+TITLE
Returns a random integer in `[0,range)` (`0` to `range-1`), using one of the randomizer channels.
** Syntax
``` sbsyntax
RND [ channel%, ] range% OUT value%
```
|*Input|Description|
|`channel%`|Randomizer channel to use; 0 if omitted|
|`range%`|The amount of values to choose from. 0 to 2147483647. RND returns 0 if range% is 0.|
|`value%`|A random number, from `0` to `range% - 1`|
** Examples
Print a random number from 1 to 6:
``` smilebasic
PRINT RND(6)+1
```
** See Also
+ [[RNDF]]
+ [[RANDOMIZE]]
-----
** References
12Me21, "Random Numbers." [[https://smilebasicsource.com/page?pid=992]]
