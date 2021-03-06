#+NAVIGATION
#+TITLE
This is a list of constants available in SmileBASIC as of version 3.6.0.

** Console Text Color
Constants for the console text color. To be used in conjuction with [[COLOR]].
|* Constant Name | Color     | Value |
| `#TBLACK`       | [[http://kland.smilebasicsource.com/i/ebtjt.png]] |     1 |
| `#TMAROON`      | [[http://kland.smilebasicsource.com/i/qikqw.png]] |     2 |
| `#TRED`         | [[http://kland.smilebasicsource.com/i/gjfzn.png]] |     3 |
| `#TGREEN`       | [[http://kland.smilebasicsource.com/i/djbuf.png]] |     4 |
| `#TLIME`        | [[http://kland.smilebasicsource.com/i/fstiy.png]] |     5 |
| `#TOLIVE`       | [[http://kland.smilebasicsource.com/i/jgksb.png]] |     6 |
| `#TYELLOW`      | [[http://kland.smilebasicsource.com/i/jmzug.png]] |     7 |
| `#TNAVY`        | [[http://kland.smilebasicsource.com/i/ltnfm.png]] |     8 |
| `#TBLUE`        | [[http://kland.smilebasicsource.com/i/xtyru.png]] |     9 |
| `#TPURPLE`      | [[http://kland.smilebasicsource.com/i/vbrvn.png]] |    10 |
| `#TMAGENTA`     | [[http://kland.smilebasicsource.com/i/czbfc.png]] |    11 |
| `#TTEAL`        | [[http://kland.smilebasicsource.com/i/xcfgj.png]] |    12 |
| `#TCYAN`        | [[http://kland.smilebasicsource.com/i/wyila.png]] |    13 |
| `#TGRAY`        | [[http://kland.smilebasicsource.com/i/exeah.png]] |    14 |
| `#TWHITE`       | [[http://kland.smilebasicsource.com/i/nguyp.png]] |    15 |
** Graphics Color
These are constants for onscreen graphics for SmileBASIC. These can be explicitly set in methods like [[GCOLOR]].
|* Constant Name | Color       | RGB Value          | Real Value |
| `#BLACK`        | [[http://kland.smilebasicsource.com/i/ebtjt.png]] | RGB(  0,  0,  0)       |  -16777216 |
| `#MAROON`       | [[http://kland.smilebasicsource.com/i/qikqw.png]] | RGB(128,  0,  0)     |   -8388608 |
| `#RED`          | [[http://kland.smilebasicsource.com/i/gjfzn.png]] | RGB(248,  0,  0)     |    -524288 |
| `#GREEN`        | [[http://kland.smilebasicsource.com/i/djbuf.png]] | RGB(  0,128,  0)     |   -1674448 |
| `#LIME`         | [[http://kland.smilebasicsource.com/i/fstiy.png]] | RGB(  0,248,  0)     |  -16713728 |
| `#OLIVE`        | [[http://kland.smilebasicsource.com/i/jgksb.png]] | RGB(128,128,  0)   |   -8355840 |
| `#YELLOW`       | [[http://kland.smilebasicsource.com/i/jmzug.png]] | RGB(248,248,  0)   |    -460800 |
| `#NAVY`         | [[http://kland.smilebasicsource.com/i/ltnfm.png]] | RGB(  0,  0,128)     |  -16777088 |
| `#BLUE`         | [[http://kland.smilebasicsource.com/i/xtyru.png]] | RGB(  0,  0,248)     |  -16776968 |
| `#PURPLE`       | [[http://kland.smilebasicsource.com/i/vbrvn.png]] | RGB(128,  0,128)   |   -8388480 |
| `#FUCHSIA`, `#MAGENTA` | [[http://kland.smilebasicsource.com/i/czbfc.png]] | RGB(248,  0,248) | -524040 |   
| `#TEAL`         | [[http://kland.smilebasicsource.com/i/xcfgj.png]] | RGB(  0,128,128)   |  -16744320 |
| `#AQUA`, `#CYAN`  | [[http://kland.smilebasicsource.com/i/wyila.png]] | RGB(  0,248,248)   |  -16713480 |
| `#GRAY`         | [[http://kland.smilebasicsource.com/i/exeah.png]] | RGB(128,128,128) |   -8355712 |
| `#WHITE`        | [[http://kland.smilebasicsource.com/i/nguyp.png]] | RGB(248,248,248) |    -460552 |
| `#SILVER`       | [[http://kland.smilebasicsource.com/i/dgfse.png]] | RGB(192,192,192) |   -4144960 |
** Button IDs
When getting values from [[BUTTON]](), these constants can be used to easily identify the IDs of the buttons.

```smilebasic
VAR X = BUTTON()
' Detect if the A button is currently being pushed down using #A.
IF X AND #A THEN PRINT "A button is being pushed down."
```

|* Constant Name | Button                          | Value |
| `#UP`           | Up on D-pad                     |     1 |
| `#DOWN`         | Down on D-pad                   |     2 |
| `#LEFT`         | Left on D-pad                   |     4 |
| `#RIGHT`        | Right on D-pad                  |     8 |
| `#A`            | A                               |    16 |
| `#B`            | B                               |    32 |
| `#X`            | X                               |    64 |
| `#Y`            | Y                               |   128 |
| `#L`            | L                               |   256 |
| `#R`            | R                               |   512 |
| `#ZR`           | ZR on Circle-Pad Pro or new 3DS |  2048 |
| `#ZL`           | ZL on Circle-Pad Pro or new 3DS |  4096 |

** Background Tiles Attributes
When setting a tiles in backgrounds, attributes can be applied to the tiles to have them appear differently. Is
used by adding them to tile IDs.

```smilebasic
' Place a background tile that is horizontally flipped and is rotated 90 degrees using constants.
BGPUT 0, 0, 0, 13 + #BGREVH + #BGROT90
```

|* Constant Name | Attribute Description | Value |
| #BGREVH       | Horizontal flip       | 16384 |
| #BGREVV       | Vertical flip         | 32768 |
| #BGROT0       | 0 degree rotation     |     0 |
| #BGROT90      | 90 degree rotation    |  4096 |
| #BGROT180     | 180 degree rotation   |  8192 |
| #BGROT270     | 270 degree rotation   | 12288 |
** Sprite Character Attributes
When setting the character for sprites, attributes can be applied to sprites to have them appear differently. Typically used with [[SPCHR]].

```smilebasic
' Use constants to define a sprite that is displayed and is flipped horizontally
SPCHR 0, 0, 0, 16, 16, #SPSHOW + #SPREVH
```

|* Constant Name | Attribute Description | Value |
| #SPREVH       | Horizontal flip       |     8 |
| #SPREVV       | Vertical flip         |    16 |
| #SPROT0       | 0 degree rotation     |     0 |
| #SPROT90      | 90 degree rotation    |     2 |
| #SPROT180     | 180 degree rotation   |     4 |
| #SPROT270     | 270 degree rotation   |     6 |
| #SPSHOW       | Display the sprite    |     1 |
** Sprite Animation Checks
These can be used to identify what types of animations are happening for a certain sprite with [[SPCHK]].
|* Constant Name | Animation Type    | Value |
| #CHKXY        | XY-coordinates    |     1 |
| #CHKZ         | Z-coordinates     |     2 |
| #CHKUV        | UV-coordinates    |     4 |
| #CHKI         | Definition number |     8 |
| #CHKR         | Rotation          |    16 |
| #CHKS         | Magnification XY  |    32 |
| #CHKC         | Display color     |    64 |
| #CHKV         | Variable          |   128 |
** ARYOP Operations
*Requires Sound Processing DLC*

These are constants that state the type of operation to be done with [[ARYOP]].

```smilebasic
' Use #AOPMUL constant to define doing multiplication between the arrays.
ARYOP #AOPMUL, OW, P1, P2
```
|* Constant Name | Operation Type       | Value |
| #AOPADD       | Addition             |     0 |
| #AOPSUB       | Subtraction          |     1 |
| #AOPMUL       | Multiplication       |     2 |
| #AOPDIV       | Division             |     3 |
| #AOPMAD       | Product-Sum          |     4 |
| #AOPLIP       | Linear interpolation |     5 |
| #AOPCLP       | Clamping             |     6 |
** FFTWFN Window Function Types
*Requires Sound Processing DLC*

These are constants that state the type of operation to be done with [[FFTWFN]].
|* Constant Name | Operation Type     | Value |
| #WFRECT       | Rectangular window |     0 |
| #WFHAMM       | Hamming window     |     1 |
| #WFHANN       | Hanning window     |     2 |
| #WFBLKM       | Blackman window    |     3 |
** BQPARAM Filtering Types
*Requires Sound Processing DLC*

These are constants that state the type of filtering to be done with [[BQPARAM]].
|* Constant Name | Filtering Type    | Value |
| #BQAPF        | All pass filter   |     0 |
| #BQLPF        | Low pass filter   |     1 |
| #BQHPF        | High pass filter  |     2 |
| #BQBPF        | Bandpass filter   |     3 |
| #BQBSF        | Band stop filter  |     4 |
| #BQLSF        | Low shelf filter  |     5 |
| #BQHSF        | High shelf filter |     6 |
| #BQPEQ        | Peaking equalizer |     7 |
** PCMVOL Channel Control
*Requires Sound Processing DLC*

These are constants to select the channel to control with [[PCMVOL]].

|* Constant Name | Channel | Value |
| #PVLEFT       | Left    |     0 |
| #PVRIGHT      | Right   |     1 |

#+NAVIGATION
