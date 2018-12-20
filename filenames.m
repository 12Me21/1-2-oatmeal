* SmileBASIC file paths
SB has two file types: text and data.
It is possible to have two files with the same name if one of them is a text file and the other is data.
The file type prefix tells SB which file (text or data) to load, as well as how to load it.

Text prefixes are:
|File Type|Description|Usage|
|`TXT`|Generic text file|`string$=LOAD(filename$)` - load text file into string
`SAVE filename$,string$` - save text string as a text file
`EXEC filename$` - (same as `PRG0`)
`USE filename$` - (same as `PRG0`)
|
|`PRG0`-`PRG3`|Program in slot|`LOAD filename$` - load text file into a program slot
`SAVE filename$` - save code in a program slot as a text file
`EXEC filename$` - load text file into a program slot and run it
`USE filename$` - load text file into a program slot and compile it|
|`PRG`|Same as `PRG0`|Same as `PRG0`|

Data prefixes are:

|`DAT`|Generic data file|`LOAD filename$,array[]` - load data file into array
`SAVE filename$,array[]` - save array as data file|
|`GRP0`-`GRP5`|Image file|`LOAD filename$` - load data file onto a graphics page
`SAVE filename$` - load data file onto a graphics page|
|`GRPF`|Font Image file|`LOAD filename$` - load data file onto the font graphics page
`SAVE filename$` - save the font graphics page into a data file|

Image files are data files containing a 512x512 array.

``` sbsyntax
[type:][project/]filename
```
|*Parameter|Description|
|`type`|File type.
Text: (TXT, PRG, PRG0, PRG1, PRG2, PRG3)
Data: (DAT, GRP0, GRP1, GRP2, GRP3, GRP4, GRP5, GRP6, GRPF)
Default: `PRG`
|
|`project`|project folder name. "" is [DEFAULT]. Up to 14 characters, including A-Z0-9@_.-
Default: current project|
|`filename`|name of file. Up to 14 characters, including A-Z0-9@_.-|

`TXT:EXAMPLE` and `PRG2:EXAMPLE` are the same file, but `DAT:EXAMPLE` is a different file.

The different prefixes tell [[LOAD]] and [[SAVE]] how to handle the data.

