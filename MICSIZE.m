#+NAVIGATION
#+TITLE
Read-only variable, storing the number of samples in the mic buffer.
When the mic is disabled, has a value of 0.
Is set to its previous value when XON MIC is used.
Set to the number of samples being recorded when MICSTART is called.
** Examples
Check audio buffer size:
``` smilebasic
XON MIC
MICSTART 3,3,0 'recording 16 bit samples, in continuous mode
?MICSIZE '131056
MICSTART 3,1,0 '8 bit
?MICSIZE '262112
```
** See Also
+ [[MICPOS]]
+ [[MICSTART]]
+ [[PCMSIZE]]
-----
#+NAVIGATION
