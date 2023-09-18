//iniciar numeros
//if (keyboard_check_pressed(ord("Q"))){
//	create_numbers();
//}
if (keyboard_check_pressed(ord("E"))){
	criar_poblemas();
}
var _i = 8; 
repeat(9){
	if (place_meeting(inst_id[_i].x, inst_id[_i].y, obj_player_1)) and (inst_id[_i].sou_correta = true) and (keyboard_check_pressed(ord("Q"))){
		criar_poblemas();
	}
	_i--;
}