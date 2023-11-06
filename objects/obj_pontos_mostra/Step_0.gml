//y = y - sine_wave(current_time / 1000, 1, .5, 0);



if (global.player_1_pontos <= 9){
	pontos_1 = ( "0"+" "+string(global.player_1_pontos))
}else if(global.player_1_pontos >= 10) and ((global.player_1_pontos <= 19)){
	pontos_1 = ("1" +" "+string(global.player_1_pontos - 10))
}else if (global.player_1_pontos = 20){
	pontos_1 = ("!" + " " + "!");
	//("!" + " " + "!" + " " + "!")
}

if (global.player_2_pontos <= 9){
	pontos_2 = ( "0"+" "+string(global.player_2_pontos))
}else if(global.player_2_pontos >= 10) and ((global.player_2_pontos <= 19)){
	pontos_2 = ("1" +" "+string(global.player_2_pontos - 10))
}else if (global.player_2_pontos = 20){
	pontos_2 = ("!" + " " + "!");
	//("!" + " " + "!" + " " + "!")
}



if (player_1_ponto = true){
	sprite_index = spr_new_points_counter_player_1;
	image_speed = 1;
	mostrar_pontos_1 = false;
	player_1_ponto = false;
}

if (player_2_ponto = true){
	sprite_index = spr_new_points_countre_player_2;
	image_speed = 1;
	mostrar_pontos_2 = false;
	player_2_ponto = false;
}

if keyboard_check_pressed(vk_up){global.player_2_pontos++}

if keyboard_check_pressed(vk_down){
	mostrar_pontos_1 = true;
	mostrar_pontos_2 = true;
}


