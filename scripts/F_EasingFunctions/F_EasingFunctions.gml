/// @description EasingFunctions()
/// usage: global.EASING = new EasingFunctions()
//			global.EASING.inout_cubic(0.42)
function EasingFunctions() constructor {
	static c1 = 1.70158;
	static c2 = c1 * 1.525;
	static c3 = c1 + 1;
	static c4 = 2 * pi / 3;
	static c5 = 2 * pi / 4.5;
	static n1 = 1 / 2.75;
	static n2 = 2 / 2.75;
	static n3 = 2.5 / 2.75;
	static d1 = 1.5 / 2.75;
	static d2 = 2.25 / 2.75;
	static d3 = 2.625 / 2.75;
	
	linear = function(x) { return x; }
	/// sine
	in_sine = function(x) { return 1 - cos(x * pi * 0.5); };
	out_sine = function(x) { return sin(x * pi * 0.5); };
	inout_sine = function(x) { return 0.5 - cos(x * pi) * 0.5; };
	// quad
	in_quad = function(x) { return power(x, 2); };
	out_quad = function(x) { return 1 - power(1 - x, 2); };
	inout_quad = function(x) { return (x < 0.5)?(2 * power(x,2)):(1 - power(-2 * x + 2, 2) * 0.5); };
	// cubic
	in_cubic = function(x) { return power(x, 3); };
	out_cubic = function(x) { return 1 - power(1 - x, 3); };
	inout_cubic = function(x) { return (x < 0.5)?(4 * power(x,3)):(1 - power(-2 * x + 2, 3) * 0.5); };
	// quart
	in_quart = function(x) { return power(x, 4); };
	out_quart = function(x) { return 1 - power(1 - x, 4); };
	inout_quart = function(x) { return (x < 0.5)?(8 * power(x,4)):(1 - power(-2 * x + 2, 4) * 0.5); };
	// quint
	in_quint = function(x) { return power(x, 5); };
	out_quint = function(x) { return 1 - power(1 - x, 5); };
	inout_quint = function(x) { return (x < 0.5)?(16 * power(x,5)):(1 - power(-2 * x + 2, 5) * 0.5); };
	// expo
	in_expo = function(x) { return (x == 0)? 0 : (power(2, 10 * x - 10)); };
	out_expo = function(x) { return (x == 1)? 1 : (1 - power(2, -10 * x)); };
	inout_expo = function(x) { return (x == 0)? 0 :((x == 1)? 1 : ((x < 0.5)? (power(2, 20 * x - 10) * 0.5): (1 - power(2, -20 * x + 10) * 0.5))); };
	// circ
	in_circ = function(x) { return 1 - sqrt(1 - power(x, 2)); };
	out_circ = function(x) { return sqrt(1 - power(x - 1, 2)) };
	inout_circ = function(x) { return (x < 0.5)?(0.5 - 0.5 * sqrt(1 - power(2 * x, 2))):(sqrt(1 - power(-2 * x + 2, 2)) * 0.5 + 0.5); };
	// back
	in_back = function(x) { return c3 * power(x, 3) - c1 * power(x, 2) };
	out_back = function(x) { return 1 + c3 * power(x - 1, 3) + c1 * power(x - 1, 2); };
	inout_back = function(x) { return (x < 0.5)? ((power(2 * x, 2) * ((c2 + 1) * 2 * x - c2)) * 0.5): ((power(2 * x - 2, 2) * ((c2 + 1) * (x * 2 - 2) + c2) + 2) * 0.5); };
	// elastic
	in_elastic = function(x) { return (x == 0)? 0: ((x == 1)? 1: (-power(2, 10 * x - 10) * sin((x * 10 - 10.75) * c4))); };
	out_elastic = function(x) { return (x == 0)? 0: ((x == 1)? 1: (power(2, -10 * x) * sin((x * 10 - 0.75) * c4) + 1)); };
	inout_elastic = function(x) { return (x == 0)? 0: ((x == 1)? 1: ((x < 0.5)? (-0.5 * power(2, 20 * x - 10) * sin((20 * x - 11.125) * c5)): (1 + 0.5 * power(2, -20 * x + 10) * sin((20 * x - 11.125) * c5)))) };
	// bounce
	in_bounce = function(x) { return 1 - out_bounce(1 - x); };
	out_bounce = function(x) {
		if (x < n1) {
			return 7.5625 * power(x, 2);
		} else if (x < n2) {
			x -= d1;
			return 7.5625 * power(x, 2) + 0.75;
		} else if (x < n3) {
			x -= d2;
			return 7.5625 * power(x, 2) + 0.9375;
		} else {
			x -= d3;
			return 7.5625 * power(x, 2) + 0.984375;
		}
	};
	inout_bounce = function(x) { return (x < 0.5)? (0.5 - out_bounce(1 - 2 * x) * 0.5): (0.5 + out_bounce(2 * x - 1) * 0.5) };
}