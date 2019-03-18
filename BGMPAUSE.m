#+NAVIGATION
#+TITLE
Pauses a BGM track. Use [[BGMCONT]] to unpause.
The track must be currently playing, but if [[BGMSTOP]] is used while a song is paused, it will remain in the paused state.
** Syntax
``` sbsyntax
BGMPAUSE [channel% [, fade_time#]]
BGMPAUSE [channel%] OUT paused%
```
|*Input|Description|
|`channel%`|The BGM channel to pause or check. Default: channel 0|
|`fade_time#`|The time (in seconds) for the music to fade out. Default: instant|
|*Output|Description|
|`paused%`|0: channel is not paused. 1: Channel is paused or fading _out_ (but not fading in)|
** Examples
``` smilebasic
BGMPLAY 0,3
BGMPAUSE 0,10 'song fades out over 10 seconds, and pauses
```
Stopping a song while it is paused:
``` smilebasic
BGMPLAY 3
BGMPAUSE
BGMSTOP
PRINT BGMPAUSE() '1
```
** See Also
+ [[BGMCONT]]
+ [[BGMCHK]]
