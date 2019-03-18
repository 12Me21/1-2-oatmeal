#+NAVIGATION
#+TITLE
Unpauses a BGM track which was paused by [[BGMPAUSE]].
** Syntax
``` sbsyntax
BGMCONT [track% [, fade_time#]]
```
|*Input|Description|
|`track%`|The BGM track to unpause. Default: all tracks|
|`fade_time#`|The time (in seconds) for the music to fade in. 0 = instant. Default: 0|
** Examples
``` smilebasic
BGMPLAY 0,3
WAIT
BGMPAUSE 0
WAIT
BGMCONT 0,10 'song fades in over 10 seconds
```
** See Also
+ [[BGMPAUSE]]
