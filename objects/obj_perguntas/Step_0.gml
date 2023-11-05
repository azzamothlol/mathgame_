//y = y + sine_wave(current_time / 1000, 1, 1, 0);
if (image_speed = 1) and (image_index > 16 ){
	image_speed = 0;
	image_index = 0;
	mostrar_perguntas = true
	audio_stop_sound(aldio)
}
if keyboard_check_pressed(vk_enter){
	image_speed = 1;
	criar_perguntas();
	gerar_opcoes();
	mostrar_perguntas = false
	numero_da_pergunta++;
	aldio = audio_play_sound(snd_roleta, 1, false)
}
if keyboard_check_pressed(ord("Q")){
	if (collision_point(correta_agora_1.x + 16, correta_agora_1.y +16, obj_player_1, false, true)  != noone){
		criar_perguntas();
		gerar_opcoes();
		image_speed = 1;
		mostrar_perguntas = false
		numero_da_pergunta++;
		aldio =audio_play_sound(snd_roleta, 1, false)
		global.player_1_pontos = clamp(global.player_1_pontos, 0, 20)
		global.player_1_pontos++;
		pontos.player_1_ponto = true;
		show_debug_message(pontos.player_1_ponto);
	}
}
if keyboard_check_pressed(ord("O")){
	if (collision_point(correta_agora_2.x + 16, correta_agora_2.y +16, obj_player_2, false, true)  != noone){
		criar_perguntas();
		gerar_opcoes();
		image_speed = 1;
		mostrar_perguntas = false
		numero_da_pergunta++;
		aldio = audio_play_sound(snd_roleta, 1, false)
		global.player_2_pontos = clamp(global.player_2_pontos, 0, 20)
		global.player_2_pontos++;
		pontos.player_2_ponto = true;
	}
}

//mano quero cagar
if (global.player_1_pontos <= 7) or (global.player_2_pontos <= 7){
	dificuldade_pergunta = 1
}
if (global.player_1_pontos <= 11) and (global.player_1_pontos >= 8) or (global.player_2_pontos <= 11) and (global.player_2_pontos >= 8){
	dificuldade_pergunta = 2
}
if (global.player_1_pontos <= 15) and (global.player_1_pontos >= 12) or (global.player_2_pontos <= 15) and (global.player_2_pontos >= 12){
	dificuldade_pergunta = 3
}
if (global.player_1_pontos >= 16) or (global.player_1_pontos >= 16){
	dificuldade_pergunta = 4
}




if keyboard_check_pressed(vk_up){dificuldade_pergunta++}
if keyboard_check_pressed(vk_down){dificuldade_pergunta--}