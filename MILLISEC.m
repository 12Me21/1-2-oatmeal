#+NAVIGATION
#+TITLE
A variable storing the number of milliseconds since SmileBASIC was started. Never stops increasing. Will overflow if your 3DS is left on for ~25 days.
** Examples
``` smilebasic
VAR START=MILLISEC
WAIT 60
PRINT MILLISEC-START 'around 1000
```
** See Also
+ [[MAINCNT]]
