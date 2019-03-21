#+NAVIGATION
#+TITLE
Reads a key from the keyboard input buffer.
If multiple keys are pressed before using INKEY$, calling INKEY$ will return one of them each time it is called.
If the buffer is empty, it returns an empty string.
** Syntax
``` sbsyntax
INKEY$ OUT Key$
```
`Key$` is a string with a length of 0 or 1.
|*Special Keys|`Key$`|
|Backspace|`CHR$(8)`|
|Enter|`CHR$(13)`|
The delete key cannot be detected.
** Examples
Display key presses:
``` smilebasic
WHILE 1
 VSYNC
 VAR K$=INKEY$()
 IF K$!="" THEN PRINT K$
WEND
```
** See Also
+ [[INPUT]]
