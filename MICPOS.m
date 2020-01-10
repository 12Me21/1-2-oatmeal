#+NAVIGATION
#+TITLE
Read-only variable, storing the write position in the mic buffer.
Ranges from 0 to [[MICSIZE]]-1, or -1 if [[MICSIZE]] is 0.
Updates approximately 2000 times per second.
Can be used as a more accurate timer than [[MILLISEC]].
** Examples
Display MICPOS with a sprite
``` smilebasic
XON MIC
MICSTART 3,3,0
SPSET 0,0
WHILE 1
 SPOFS 0,MICPOS/MICSIZE*400,
WEND
```
** See Also
+ [[MICSIZE]]
+ [[MICSTART]]
+ [[PCMPOS]]
-----
#+NAVIGATION
