#+NAVIGATION
#+TITLE
Draw a circle, arc, or the outline of a sector.
** Syntax
``` sbsyntax
GCIRCLE center_x%, center_y%, radius% [, color%]
GCIRCLE center_x%, center_y%, radius% , start_angle%, end_angle% [, sector_flag% [, color%]]
```
|*Input|Description|
|`center_x%`, `center_y%`|The center of the circle|
|`radius%`|The radius|
|`color%`|The color. If omitted, the color set by [[GCOLOR]] will be used|
|`start_angle%`, `end_angle%`|The start/end angles of the arc. It will be drawn counterclockwise from `start_angle%` to `end_angle%`
[[http://kland.smilebasicsource.com/i/zatel.png]]|
|`sector_flag%`|If this is not 0, lines will be drawn from the ends of the arc to the center|
** Examples
Drawing a filled circle
``` smilebasic
DEF FILLCIRCLE X,Y,RADIUS,COL
 GCIRCLE X,Y,RADIUS,RGB(0,0,0,8)
 GFILL X,Y,COL,RGB(0,0,0,8)
 GCIRCLE X,Y,RADIUS,COL
END
```
** See Also
+ [[GLINE]]
+ [[GCOLOR]]
+ [[GPAINT]]
-----
#+NAVIGATION
