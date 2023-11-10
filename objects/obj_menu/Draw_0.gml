draw_set_halign(fa_center);
for (var _i = 2 ; _i > -1; _i--) {
	if (_i = selected){
		draw_set_color(c_yellow);
	}else{
		draw_set_color(c_white);
	}
	draw_text_transformed(room_width/2, (room_height/2 - 7) + (_i * 36), options[_i], 2, 2, 0);
	draw_set_color(c_white);
}
