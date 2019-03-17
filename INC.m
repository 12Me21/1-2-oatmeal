#+NAVIGATION
#+TITLE
Adds a value to a variable. Works with both numbers and strings.
`INC variable, amount` is a shorter way of writing `variable = variable + amount` (similar to `variable +=​ amount` in other languages).
`INC` also works with strings, similar to [[PUSH]]. Unlike PUSH, INC will work on read-only strings.
** Syntax
``` sbsyntax
INC number_variable [, amount]
INC string_variable$, string$
```
|*Argument|Description|
|`number_variable`|A number variable|
|`amount`|The amount to add to `number_variable`. Optional; defaults to `1`|
|`string_variable$`|A string variable. If it holds a read-only string, a copy of that string will be made and assigned to the variable|
|`string$`|The string to append to `string_variable$`|
** Examples
``` smilebasic
X=13
INC X
PRINT X '14

S$="abc"
INC S$,"defg"
PRINT S$ 'abcdefg
```
``` smilebasic
A$="test"
TEST_PUSH A$ 'works
TEST_INC A$ 'works
TEST_PUSH "test" 'doesn't work!
TEST_INC "test" 'works

DEF TEST_INC S$
 INC S$,"ABC"
 PRINT S$
END

DEF TEST_PUSH S$
 PUSH S$,"ABC"
 PRINT S$
END
```
** See also
+ [[DEC]]
+ [[PUSH]]
#+NAVIGATION
