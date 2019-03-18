#+NAVIGATION
#+TITLE
Pauses a BGM track. Use [[BGMCONT]] to unpause.
** Syntax
``` sbsyntax
BGMPAUSE [channel% [, fade_time#]]
BGMPAUSE [check_channel%] OUT paused%
```
|*Input|Description|
|`channel%`|The BGM channel to pause. Default: all channels|
|`fade_time#`|The time (in seconds) for the music to fade out. 0 = instant. Default: 0|
|`check_channel%`|The BGM channel to check. Default: 0|
|*Output|Description|
|`paused%`|0: channel is not paused. 1: Channel is paused or fading _out_ (but not fading in)|
** Examples
``` smilebasic
BGMPLAY 0,3
BGMPAUSE 0,10 'song fades out over 10 seconds, and pauses
```
** See Also
+ [[BGMCONT]]
+ [[BGMCHK]]
