#+NAVIGATION
#+TITLE
Returns the sign of a number (-1, 0, or 1).
** Syntax
``` sbsyntax
SGN number# OUT sign%
```
|* Parameter | Description                   |
| `number#`  | The number to get the sign of |
|* Output    | Description                   |
| `sign%`    | {|* Sign | Numbers       |
                | `1`   | positive, NaN |
                | `0`   | `0`, `-0`     |
                | `-1`  | negative      |}   |
** Examples
``` smilebasic
PRINT SGN(10) '1
PRINT SGN(-EXP(999)) '-1
```
-----
#+NAVIGATION