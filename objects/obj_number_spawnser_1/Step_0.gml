//iniciar numeros
//if (keyboard_check_pressed(ord("Q"))){
//	create_numbers();
//}
if (keyboard_check_pressed(ord("E"))){
	criar_poblemas();
}
if  (keyboard_check_pressed(ord("Q"))){
		if (place_meeting(correta_id.x, correta_id.y, obj_player_1)){
		criar_poblemas()
		global.pontos_player_1++;
	}
}

if  (keyboard_check_pressed(ord("T"))){
	global.dificuldade_player_1++;
}
//if (global.pontos_player_1 < 3){
//	global.dificuldade_player_1 = 1
//}

//if (global.pontos_player_1 > 4){
//	global.dificuldade_player_1 = 1
//}
