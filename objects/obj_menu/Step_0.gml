
if (menumodo = 1){
	var _cima_baixo = keyboard_check_pressed(ord("W")) - keyboard_check_pressed(ord("S"));
	if (_cima_baixo != 0){
		selected = clamp(selected - _cima_baixo, 0, 2)
		show_debug_message(selected)
	}
	if (keyboard_check_pressed(vk_enter)){
		switch (selected){
			case 0:
			menumodo = 2;
			break
			case 1:
			room_goto(rm_teste_1)
			break
			case 2:
			game_end()
			break
		}
	}

	//menu_texto_x = menu_meio_x;
	//menu_texto_inicial_y = (menu_meio_y) - menu_texto_offset; 

	//menu_fundo_final_y = (menu_meio_y) - (altura_fundo_opcoes/2);
	//menu_fundo_final_x = menu_texto_x - (largura_fundo_opcoes/2);
	
}else if (menumodo == 2){
	var _cima_baixo = keyboard_check_pressed(ord("D")) - keyboard_check_pressed(ord("A"));
	if (_cima_baixo != 0){
		selected = clamp(selected + _cima_baixo, 0, 3)
		show_debug_message(selected)
	}
	if (keyboard_check_pressed(vk_enter)){
		switch (selected){
			case 0:
			room_goto(spr_player);
			break
			case 1:
			room_goto(rm_teste_1)
			break
			case 2:
			
			break
			case 3:
			
			break	
		}
	}
}