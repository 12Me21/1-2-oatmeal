#+NAVIGATION
#+TITLE
Get the position of the circle pad.
** Syntax
``` sbsyntax
STICK [system%] OUT x#,y#
```
|*Input|Description|
|`system%`|Which 3DS to get input from, when multiplayer is enabled.
Optional; defaults to the current system|
|*Output|Description|
|`x#`,`y#`|The position of the circle pad.
[[http://kland.smilebasicsource.com/i/bzovg.png]]
(Note that the maximum distance is 0.875 and that the y axis is inverted)|
** Examples
Move a sprite with the circle pad:
``` smilebasic
SPSET 0,1434
VAR X,Y
WHILE 1
 VSYNC
 VAR SX,SY
 STICK OUT SX,SY
 X=X+SX
 Y=Y+SY
 SPOFS 0,X,Y
WEND
```
** See Also
+ [[STICKEX]] (C-stick)
