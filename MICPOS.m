#+NAVIGATION
#+TITLE
Read-only variable, storing the write position in the mic buffer.
Ranges from 0 to [[MICSIZE]]-1.
Set to 0 when the mic is disabled.
When a recording ends (without MICSTOP), it is set to MICSIZE-1.
MICPOS is updated after every statement, but the 3DS records 16 samples at a time so it's always 1 less than a multiple of 16.
The maximum update rate is 32728/16 = 2039.25 times per second, so it can be used as a more accurate timer than [[MILLISEC]].
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
