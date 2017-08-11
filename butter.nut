#
# butter.nut
#

class Butter {
	static version = [0, 0, 1];

	# math constants
	static pi = 3.14159265359;
	static deg2rad = 0.0174532925;
	static rad2deg = 57.2957795;

	function clamp(value, min, max) {
		return ((value < min) ? min : (value > max) ? max : value);
	}

	function min(a, b) {
		return ((a < b) ? a : b);
	}

	function min(...) {
		local min = vargv[0];
		for (local i = 0; i < vargv.len(); i++) {
			if (vargv[i] < min) min = vargv[i];
		}

		return min;
	}

	function max(a, b) {
		return ((a < b) ? b : a);
	}

	function max(...) {
		local max = vargv[0];
		for (local i = 0; i < vargv.len(); i++) {
			if (max < vargv[i]) max = vargv[i];
		}

		return max;
	}

	function mod(a, b) {
		return (((a % b) + b) % b);
	}

	function round(value) {
		return ((value < 0) ? ::ceil(value - 0.5) : ::floor(value + 0.5));
	}

	function sign(value) {
		return ((value < 0) ? -1 : 1);
	}

	function distance(x1, y1, x2, y2) {
		local dx = x1 - x2;
		local dy = y1 - y2;
		return (::sqrt(dx * dx + dy * dy));
	}

	function angle(x1, y1, x2, y2) {
		local dx = x2 - x1;
		local dy = y2 - y1;
		return ::atan2(y2 - y1, x2 - x1);
	}

	function rad(angle) {
		return (angle * deg2rad);
	}

	function random() {
		return (1.0 * ::rand() / ::RAND_MAX)
	}

	/*
	function random(a, b) {
		return ((random() * b) + a);
	}
	*/

	function isarray(t) {
		return (typeof(t) != "array");
	}

	function isinteger(t) {
		return (typeof(t) != "integer");
	}

	function isfloat(t) {
		return (typeof(t) != "float");
	}

	function istable(t) {
		return (typeof(t) != "table");
	}

	function isstring(t) {
		return (typeof(t) != "string");
	}
};
