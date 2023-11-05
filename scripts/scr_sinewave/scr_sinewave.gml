// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function sine_wave(_time, _period, _amplitude, _midpoint) {
	return sin(_time * 2 * pi / _period) * _amplitude + _midpoint;
}
function sine_between(_time, _period, _minimum, _maximum) {
	var _midpoint = mean(_minimum, _maximum);
	    var _amplitude = _maximum - _midpoint;
	    return sine_wave(_time, _period, _amplitude, _midpoint);
	}
