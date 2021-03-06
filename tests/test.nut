::dofile("../butter.nut");

function test_equals(a, b) {
	if (typeof(a) != typeof(b)) { return false; }
	return (a == b);
}

function equals(result, expected) {
	local passed = test_equals(result, expected);
	if (passed) {
		print("passed\n");
	} else {
		print(format("Expected %s got %s\n", expected.tostring(), result.tostring()));
	}
}

function dotests(t) {
	foreach(k, slot in t) {
		print(format("testing [%s]\n", k));
		t[k]();
		print("\n");
	}

}

local test = {};

test["butter.clamp"] <- function() {
	equals(Butter.clamp(5, 1, 10),		5);
	equals(Butter.clamp(12, 1, 10),		10);
	equals(Butter.clamp(-1, 3, 10),		3);
	equals(Butter.clamp(-1, -10, 10),	-1);
	equals(Butter.clamp(-12, -1, 10),	-1);
}

test["butter.min"] <- function() {
	equals(Butter.min(5, 9),					5);
	equals(Butter.min(0, 9),					0);
	equals(Butter.min(-5, 9),					-5);
	equals(Butter.min(-5, -9),				-9);
	equals(Butter.min(5, 9, 8),				5);
	equals(Butter.min(7, 9, 8, 3.3),	3.3);
}

test["butter.max"] <- function() {
	equals(Butter.max(5, 9),					9);
	equals(Butter.max(0, 9),					9);
	equals(Butter.max(-5, 9),					9);
	equals(Butter.max(-5, -9),				-5);
	equals(Butter.max(5, 9, 8),				9);
	equals(Butter.max(7, 9, 8, 3.3),	9);
}

test["butter.mod"] <- function() {
	equals(Butter.mod(-1, 13),					12);
	equals(Butter.mod(24, 12),					0);
}

test["butter.sign"] <- function() {
  equals(Butter.sign(-10),	-1);
  equals(Butter.sign(10),		1);
  equals(Butter.sign(0),		1);
}

test["butter.round"] <- function() {
  equals(Butter.round(1.0),		1.0);
	equals(Butter.round(1.25),	1.0);
	equals(Butter.round(1.5),		2.0);
	equals(Butter.round(-1.0),	-1.0);
	equals(Butter.round(-1.25),	-1.0);
	equals(Butter.round(-1.5),	-2.0);
}

test["butter.sign"] <- function() {
  equals(Butter.sign(-10),	-1);
  equals(Butter.sign(10),	1);
  equals(Butter.sign(0),	1);
}

test["butter.distance"] <- function() {
  equals(Butter.distance(5, 10, 5, 10),		0.0);
  equals(Butter.distance(2, 0, 5, 0),			3.0);
  equals(Butter.distance(5, 5, 1, 2),			5.0);
}

test["butter.rad"] <- function() {
  equals(Butter.rad(0),			(0.0 * 0.0174532925));
  equals(Butter.rad(45),		(45.0 * 0.0174532925));
  equals(Butter.rad(90),		(90.0 * 0.0174532925));
  equals(Butter.rad(135),		(135.0 * 0.0174532925));
}

test["butter.degrees"] <- function() {
  equals(Butter.rad(0),			(0.0 * 0.0174532925));
  equals(Butter.rad(45),		(45.0 * 0.0174532925));
  equals(Butter.rad(90),		(90.0 * 0.0174532925));
  equals(Butter.rad(135),		(135.0 * 0.0174532925));
}

test["butter.angle"] <- function() {
  equals(Butter.angle(5, 10, 5, 10),		(0.0 * 0.0174532925));
	equals(Butter.angle(10, 10, 20, 20),	(45.0 * 0.0174532925));
	equals(Butter.angle(10, 10, 10, 30),	(90.0 * 0.0174532925));
}

test["butter.random"] <- function() {
	equals(typeof(Butter.random()),		"float");
}

test["butter.random(a, b)"] <- function() {
	# equals(typeof(Butter.random__(0, 10)),		"float");
}

test["butter.isarray"] <- function() {
	equals(typeof([]),		"array");
}

test["butter.isinteger"] <- function() {
	equals(typeof(0),		"integer");
}

test["butter.isfloat"] <- function() {
	equals(typeof(0.0),		"float");
}

test["butter.istable"] <- function() {
	equals(typeof({}),		"table");
}

test["butter.isstring"] <- function() {
	equals(typeof(""),		"string");
}

dotests(test);
