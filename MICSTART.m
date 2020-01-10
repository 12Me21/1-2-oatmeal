#+NAVIGATION
#+TITLE
Start recording audio.
The mic must be enabled with [[XON MIC]] first.
[[MICSIZE]] will be set to the number of samples that can fit in the sample buffer.
While recording, [[MICPOS]] will be set to the write position in the buffer (starts at 0).
[[MICSTOP]] or [[XOFF MIC]] will stop the recording.
** Syntax
``` sbsyntax
MICSTART sample_rate%, sample_format%, length#
```
|*Input|Description|
|`sample_rate%`|{|*Value|Samples per second|
|`0`|8182|
|`1`|10909⅓|
|`2`|16364|
|`3`|32728|
}Note: sample rates in the official manual are incorrect
The 3DS records audio at 32728 (not 327{_30_} or 327{_6_}8) samples per second, and lower sample rates are obtained by dividing this rate by 2, 3, or 4.
|
|`sample_format%`|{|*Value|Format|Min|Zero|Max|
|`0`|8 bit unsigned|0|128|255|
|`1`|16 bit unsigned|0|32768|65535|
|`2`|8 bit signed|-128|0|127|
|`3`|16 bit signed|-32678|0|32767|
}|
|`length#`|{Length to record, in seconds.
If 0, the mic will record continuously into a circular buffer with [[MICSIZE]] samples.
(Most of the time, you will use this mode)
Otherwise, it will record for that many seconds before stopping. The number of samples is calculated using incorrect rounded sample rates.
The maximum values appear to be hardcoded and don't actually allow the full buffer to be used.
|*Sample rate|Multiplier|Max seconds (8 bit)|(16 bit)|
|8182|8180|32|16|
|10909.3|10910|24|12|
|16364|16360|16|8|
|32728|32730|8|4|
}When the recording ends, MICPOS is set to MICSIZE-1
If `length#` is NaN, it records for 0 seconds and MICSIZE is set to 0. MICPOS is set to 0 but quickly changes to -1|
** Examples
Start recording at the highest quality setting:
``` smilebasic
XON MIC
MICSTART 3,3,0
WHILE 1
 ?MICDATA(MICPOS)
WEND
```
** Possible Errors
|*Error|Cause|
|`Mic is not available`|Mic is not enabled (Use [[XON MIC]] first)|
|`Out of range`|Argument out of range|
|`Type mismatch`|Wrong argument type|
|`Illegal function call`|Wrong number of arguments|
** See Also
+ [[MICSAVE]]
+ [[MICDATA]]
-----
#+NAVIGATION
