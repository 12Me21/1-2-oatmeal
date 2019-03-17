#+NAVIGATION
#+TITLE
Sets the randomizer seed of one of the RNG channels.
** Syntax
``` sbsyntax
RANDOMIZE channel% [, seed%]
```
|*Input|Description|
|`channel%`|Channel number, 0 to 7|
|`seed%`|The seed to use. If 0 or omitted, a random seed is used|
** Examples
Seeded channels yielding the same result:
``` smilebasic
RANDOMIZE 0, 398
RANDOMIZE 1, 398

PRINT RND(0,1000) '353
PRINT RND(1,1000) '353 (tested on SB version 3.5.2, may differ in other releases)
```
** See Also
+ [[RND]]
+ [[RNDF]]
-----
** References
12Me21, "Random Numbers." [[https://smilebasicsource.com/page?pid=992]]
