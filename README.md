# Butter

A collection of functions for Squirrel.

## Usage

Written in Squirrel 3.1 stable using the standard math lib.

### Math Constants

#### Butter.pi
The ratio of a circle's circumference to its diameter.</br>
This is stored as `3.14159265359`.

#### Butter.deg2rad
Degrees-to-radians conversion constant.</br>
This is stored as `0.0174532925`.

#### Butter.rad2deg
Radians-to-degrees conversion constant.</br>
This is stored as `57.2957795`.

### Math Functions

#### Butter.clamp(value, min, max)
Returns a value between a `min` and `max` (int/float).
```squirrel
Butter.clamp(1.3, 0.0, 1.0)	# returns 1.0
Butter.clamp(1.3, 0, 1)		# returns 1
```

#### Butter.min(a, b [, ...])
Returns smallest of two or more values.
```squirrel
Butter.min(1.3, 0.0, 1.0)	# returns 0.0
```

#### Butter.max(a, b [, ...])
Returns largest of two or more values.
```squirrel
Butter.clamp(1.3, 0.0, 1.0)	# returns 1.3
```

#### Butter.mod(a, b)
Returns the remainder of a division.
```squirrel
local value = (-1 % 13)	# returns -1
Butter.mod(-1, 13)		# returns 12
```

#### Butter.sign(value)
Returns 1 when `value` is positive or zero, -1 when the `value` is negative.
```squirrel
Butter.sign(-10.0)	# returns -1
Butter.sign(10.0)	# returns 1
```

#### Butter.distance(x1, y1, x2, y2)
Returns the distance (as a float) between (`x1`, `y1`) and (`x2`, `y2`).
```squirrel
Butter.distance(8, -2, 3, 9);	# 12.083
```

#### Butter.angle(x1, y1, x2, y2)
Returns the angle (in radians) between (`x1`, `y1`) and (`x2`, `y2`).
```squirrel
Butter.angle(10, 10, 20, 20);	# 0.7853981625
```

#### Butter.rad(angle)
Converts `angle` to radians using the Degrees-to-radians constant.
```squirrel
Butter.rad(90.0);	# 1.5708
```

### Random Functions

#### Butter.random([a, b])
Returns a random number between 0.0 and 1.0.
If `a` and `b` are supplied a random number between [`a`, `b`] is returned.

```squirrel
Butter.random()			# returns random float [0.0, 1.0]
Butter.random(1, 10)	# returns random float [1, 10]
```

### Type Checking Functions

#### Butter.isarray(t)
Returns true if `t` is of type "array".

#### Butter.isinteger(t)
Returns true if `t` is of type "integer".

#### Butter.isfloat(t)
Returns true if `t` is of type "float".

#### Butter.istable(t)
Returns true if `t` is of type "table".

#### Butter.isstring(t)
Returns true if `t` is of type "string".

## License

This library is free software; you can redistribute it and/or modify it under
the terms of the MIT license. See [LICENSE](LICENSE) for details.
