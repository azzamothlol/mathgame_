var _cima_baixo = keyboard_check_pressed(ord("W")) - keyboard_check_pressed(ord("S"));
if (_cima_baixo != 0){
	selected = clamp(selected - _cima_baixo, 0, 2)
	show_debug_message(selected)
}
if (keyboard_check(vk_enter)){
	switch (selected){
		case 0:
		room_goto(spr_player)
		break
		case 1:
		//nothing lmao 
		break
		case 2:
		game_end()
		break
	}
}
if (keyboard_check(vk_enter) and selected = 0){
	room_goto(spr_player);
}
