draw_self();
draw_set_halign(fa_center);
for (var _i = 2 ; _i > -1; _i--) {
	if (_i = selected){
		draw_set_color(c_yellow);
	}else{
		draw_set_color(c_white);
	}
	draw_text (room_width/2, room_height/2 + (_i * 30), options[_i]);
	draw_set_color(c_white);
}
