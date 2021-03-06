#+NAVIGATION
#+TITLE
Get the touched position on the touch screen.
** Syntax
``` sbsyntax
TOUCH [system%] OUT touch_time%, touch_x%, touch_y%
```
|*Input|Description|
|`system%`|Which 3DS to get the information from, when multiplayer is enabled|
|`touch_time%`|The number of frames that the screen has been touched for, or 0 if it's not being touched|
|`touch_x%`, `touch_y%`|The position of the touch (in pixels). This will always be at least 5 away from the edge of the screen{
|*System|Touch Screen Resolution|Range|
|3DS|320x240|5,5 to 314,234|
|Wii U|Unknown (Depends on XSCREEN)|Unknown (Depends on XSCREEN)|
}|
** Examples
Control the position of a sprite using the touch screen
``` smilebasic
SPSET 0,0
WHILE 1
 TOUCH OUT TIME,X,Y
 IF TIME THEN SPOFS 0,X,Y
WEND
```
** See Also
+ [[BUTTON]]
+ [[XSCREEN]]
+ [[DISPLAY]]
