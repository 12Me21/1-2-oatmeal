#+NAVIGATION
* Dialog (1/2)
Display a dialog box on the lower screen.
** Syntax
```sbsyntax
DIALOG text$ [, [button_type%] [, title$ [, [timeout%]]]]
DIALOG text$ [, [button_type%] [, title$ [, [timeout%]]]] OUT result%
```
|*Input|Description|
|`text$`|The message to display in the dialog box. This will be displayed in a variable width font.
`CHR$(10)` and `CHR$(13)` can be used to add line breaks. If the text is too long to fit, it will be cut off at the bottom.|
|`button_type%`|Optional. (Defaults to 0) Controls the on-screen buttons that appear at the bottom of the textbox.
{|*Value|"No" Button|"Yes" Button|
|0|(none)|OK|
|1|No|Yes|
|2|Back|Next|
|3|Cancel|OK|
|4|Cancel|Run|
|5|(none)|Next|}Values between -1 and -15 can be used to control which buttons will end the textbox. (no buttons will display on the screen)
{|*Value|Button(s)|
|-1|A, B, X, Y|
|-2|D-pad|
|-4|L or R|
|-8|touch screen|}You can choose multiple options by adding the values. For example, -5 will allow A, B, X, Y, L, or R.|
|`title$`|Optional. Defaults to "`DIALOG`" Text to display at the top of the dialog box.
Text that is too long will be cut off with `...` at the end. Characters after a line break will not be displayed.|
|`timeout%`|Optional. Defaults to `0`. If this value is positive, the textbox will disappear automatically after that many seconds.
Negative values will count in frames (1/60 of a second) instead. 0 will cause the dialog box to stay forever (until a button is pressed)|
|*Output|Description|
|`result%`|The result of the dialog. This value is also stored in the system variable `RESULT`.
{|*Value|Meaning|
|1|User selected OK/Yes/Next/Run (or pressed A), or pressed one of the buttons specified by buttonType%|
|0|Dialog disappeared because the timeout period ended.|
|-1|User selected No/Back/Cancel (or pressed B)|}|
* Dialog (2/2)
Display a text input dialog box.
Allowed symbols are: `0-9`, `A-Z`, `-`, `_`, and `.`
This is meant for inputting file names.
** Syntax
```sbsyntax
DIALOG initial$, title$ [, max_length%] OUT text$
```
|*Input|Description|
|`initial$`|The initial value of the input box. If it is longer than `max_length%`, it will be cut off.
It is converted to uppercase, and an error will occur if it has any characters that are not allowed.|
|`title$`|The title of the textbox. The same as in the other forms of DIALOG.|
|`max_length%`|Optional. Defaults to 14. The maximum length of the input string. Can be between 1 and 14.|
|*Output|Description|
|`text$`|The inputted string. If the user presses B or [Back], it will return an empty string, and `RESULT` will be set to -1, otherwise `RESULT` is set to 1.|
