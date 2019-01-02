#+NAVIGATION
#+TITLE
+ Copy data between arrays or strings
+ Read DATA into an array
** Copy data between arrays or strings
``` sbsyntax
COPY dest [, dest_start%], source [[, source_start%], source_length%]
```
|* Parameter       | Description                                    |
| `dest`           | array or string to copy *to*. Strings and 1D arrays will be extended if there isn't enough room for the data |
| `dest_start%`    | starting position in dest_array                |
| `source`         | array or string to copy *from*                 |
| `source_start%`  | position in source_array to start copying from |
| `source_length%` | number of items to copy                        |
``` smilebasic
DIM A[10]
DIM B[0]
COPY B,A 'copy data from A to B
?LEN(B) '10
```
** Read data into an array
``` sbsyntax
COPY dest_array[] [, dest_start%], source_label$ [, source_length%]
```
|* Parameter       | Description                     |
| `dest_array[]`   | array to copy to. 1D arrays will be extended if there isn't enough room for the data |
| `dest_start%`    | starting position in dest_array |
| `source_label$`  | `DATA` label to copy from       |
| `source_length%` | number of items to copy         |
``` smilebasic
DIM A[3]
COPY A,@TEST
@TEST
DATA 10,20,30
```
** Version Information
*** 3.2.0
Fixed crash when COPY was called without any arguments [[#1]]
*** 3.5.2
COPY now allows the source length to be 0 [[#2]] [[#3]]
** References
[[1]] SmileBoom "Fixes in Ver. 3.2.0 (June 17, 2015)" [[http://smilebasic.com/debug/archive/]]
[[2]] SmileBoom "Bug Fixes in Ver. 3.5.2 (June 24, 2017)" [[http://smilebasic.com/en/debug/archive/]]
[[3]] SquareFingers "Empty COPY source array gives error." [[https://smilebasicsource.com/forum?ftid=1263]]
-----
#+NAVIGATION