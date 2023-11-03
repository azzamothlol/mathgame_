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
	}
}

if keyboard_check_pressed(vk_up){dificuldade_pergunta++}
if keyboard_check_pressed(vk_down){dificuldade_pergunta--}
