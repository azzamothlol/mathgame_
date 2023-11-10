if (jogador_1_ganha){
	var _xcale, _ycale
	_xcale = sine_between(current_time/1000, 1, 1, 1.5);
	_ycale = sine_between(current_time/1000, 1.2, 1, 1.5);
	draw_sprite_ext(spr_player_1_ganha, 1, x, y, _xcale, _ycale, 0, c_white, 1)
}
if (jogador_2_ganha){
	var _xcale, _ycale
	
	_xcale = sine_between(current_time/1000, 1, 1, 1.5);
	_ycale = sine_between(current_time/1000, 1.2, 1, 1.5);
	draw_sprite_ext(spr_player_2_ganha, 1, x, y, _xcale, _ycale, 0, c_white, 1)
}