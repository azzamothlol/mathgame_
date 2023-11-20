
draw_set_halign(fa_center);
draw_set_valign(fa_middle)
if (menumodo == 1){
	draw_sprite_stretched(spr_menu_opicoes_background, 0, menu_fundo_final_x, menu_fundo_final_y, largura_fundo_opcoes, altura_fundo_opcoes);
	for (var _i = 2 ; _i > -1; _i--) {
		if (_i = selected){
			draw_set_color(c_purple);
		}else{
			draw_set_color(c_white);
		}
		draw_text_transformed(menu_texto_x, menu_texto_inicial_y + (_i * menu_texto_offset), options[_i], 2, 2, 0);
		draw_set_color(c_white);
	}
	draw_circle(room_width/2, room_height/2, 2, true);
}
if (menumodo == 2){
	for (var _i = 3; _i > -1; _i--){
		var _sala_1quinto = room_width/5;
		var _xagora = (_sala_1quinto ) * (1 + _i);
		if (_i == selected){
			var _time = current_time/1000;
			scala = sine_between(_time, pi, 1.1, 1.5 );
			draw_sprite_ext(spr_scolhadejogo, _i, _xagora, room_height/2, scala, scala, 0, c_white, 1);
			draw_sprite_ext(spr_outline, _i, _xagora, room_height/2, scala, scala, 0, c_white, 1);
		}else{
			draw_sprite(spr_scolhadejogo, _i, _xagora, room_height/2);
		}
	}
}