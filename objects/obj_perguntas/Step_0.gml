if (image_speed = 1) and (image_index > 16 ){
	image_speed = 0;
	image_index = 0;
	mostrar_perguntas = true
}
if keyboard_check_pressed(vk_enter){
	image_speed = 1;
	criar_perguntas();
	gerar_opcoes();
	mostrar_perguntas = false
	numero_da_pergunta++;
	audio_play_sound(snd_roleta, 1, false)
}
if keyboard_check_pressed(ord("Q")){
	if (collision_point(correta_agora_1.x + 16, correta_agora_1.y +16, obj_player_1, false, true)  != noone){
		criar_perguntas();
		gerar_opcoes();
		image_speed = 1;
		mostrar_perguntas = false
		numero_da_pergunta++;
		audio_play_sound(snd_roleta, 1, false)
		player_1_pontos = clamp(player_1_pontos, 0, 20)
		player_1_pontos++;
	}
}
if keyboard_check_pressed(ord("O")){
	if (collision_point(correta_agora_2.x + 16, correta_agora_2.y +16, obj_player_2, false, true)  != noone){
		criar_perguntas();
		gerar_opcoes();
		image_speed = 1;
		mostrar_perguntas = false
		numero_da_pergunta++;
		audio_play_sound(snd_roleta, 1, false)
		player_2_pontos = clamp(player_2_pontos, 0, 20)
		player_2_pontos++;
	}
}

//mano quero cagar
if (player_1_pontos <= 7) or (player_2_pontos <= 7){
	dificuldade_pergunta = 1
}
if (player_1_pontos <= 11) and (player_1_pontos >= 8) or (player_2_pontos <= 11) and (player_2_pontos >= 8){
	dificuldade_pergunta = 2
}
if (player_1_pontos <= 15) and (player_1_pontos >= 12) or (player_2_pontos <= 15) and (player_2_pontos >= 12){
	dificuldade_pergunta = 3
}
if (player_1_pontos >= 16) or (player_1_pontos >= 16){
	dificuldade_pergunta = 4
}




if keyboard_check_pressed(vk_up){dificuldade_pergunta++; show_debug_message(dificuldade_pergunta)}
if keyboard_check_pressed(vk_down){dificuldade_pergunta--}