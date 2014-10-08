AnimationTest
=============

An iOS app with a little blue square going around the screen for 4 seconds


###Test:
- Animate a small blue square along the edge of the screen.
	- Hint: You’ll want to use a path animation with the path of the bounds of the view (minus the size of the square.
	- Here is that C code for you ```orbit.path = CFAutorelease(CGPathCreateWithRect(boundsMinusSize, NULL));```


