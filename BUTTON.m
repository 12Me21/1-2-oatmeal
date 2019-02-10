#+NAVIGATION
#+TITLE
Checks which buttons are currently pressed.
(this page is unfinished)
** Syntax
```sbsyntax
BUTTON [[system%,] mode%] OUT buttons%
```
|*Input|Description|
|`system%`|Which 3DS to get input from (when local multiplayer is enabled)|
|`mode%`|{|*Value|Meaning|
|`0`|Buttons that are currently pressed|
|`1`|Start of press (Repeat enabled)|
|`2`|Start of press (Repeat disabled)|
|`3`|End of press|}|
|*Output|Description|
|`buttons%`|The buttons that were detected
{|*Bit|Value|Constant|Button|
|0|1|`#UP`|D-pad up|
|1|2|`#DOWN`|D-pad down|
|2|4|`#LEFT`|D-pad left|
|3|8|`#RIGHT`|D-pad right|
|4|16|`#A`|A|
|5|32|`#B`|B|
|6|64|`#X`|X|
|7|128|`#Y`|Y|
|8|256|`#L`|L|
|9|512|`#R`|R|
|10|1024|(none)|Select|
|11|2048|`#ZL`|ZL|
|12|4096|`#ZR`|ZR|}`XON EXPAD` must be used before ZL and ZR can be read.
|
** Examples
*** Detecting button presses
```smilebasic
IF BUTTON() AND #A THEN PRINT "A is pressed"

IF BUTTON() AND (#X OR #Y) THEN PRINT "X or Y is pressed"

IF BUTTON() AND (#L AND #R) THEN PRINT "L and R are pressed"
```
*** You can't say it's only a half
```smilebasic
WHILE 1
 VSYNC
 IF BUTTON(2) AND #A THEN INC A_PRESSES,0.5
 IF BUTTON(3) AND #A THEN A_PRESSES = CEIL(A_PRESSES)
 
 PRINT "A presses: ";A_PRESSES
WEND
```
** See also
+ [[BREPEAT]]
