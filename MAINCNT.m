#+NAVIGATION
#+TITLE
A variable storing the number of frames that have passed since SmileBASIC was started. It does not increase during sleep mode or on the 3DS home menu.
** Examples
``` smilebasic
VAR START=MAINCNT
WAIT 60
PRINT MAINCNT-START '60
```
** See Also
+ [[WAIT]]
+ [[MILLISEC]]
