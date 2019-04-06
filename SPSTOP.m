#+NAVIGATION
#+TITLE
Pauses a sprite. While paused, no [[SPANIM]] animations will play (including ones started after SPSTOP was called) until the sprite is unpaused with [[SPSTART]], when all animations will continue playing.
It is not possible to directly check if a sprite is paused, but [[SPCHK]] will return `0` even if there are animations set.
SPSTOP does not end currently playing animations. To end an animation, you should set the value of the property that is being animated. (For example, calling [[SPROT]] will stop the angle of that sprite from animating)
** Syntax
``` sbsyntax
SPSTOP [sprite%]
```
|*Input|Description|
|`sprite%`|The management number of the sprite to stop animations on.
If omitted, all sprites in the current display will be paused.|
** Examples
The animation will pause halfway through for 1 second, then continue
``` smilebasic
SPSET 0,0
SPANIM 0,"XY",-60*2,200,200 'move sprite to (200,200) in 2 seconds.

WAIT 60
SPSTOP

WAIT 60
SPSTART
```
SPSTOP/SPSTART can be used to synchronize animations with the framerate of your game [more information needed here]
** See Also
+ [[SPANIM]]
+ [[SPSTART]]
+ [[SPCHK]]
