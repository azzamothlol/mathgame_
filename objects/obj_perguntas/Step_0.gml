if keyboard_check_pressed(vk_enter){
	criar_perguntas()
	gerar_opcoes()
}
if keyboard_check(ord("Q")){
	if (collision_point(correta_agora.x + 16, correta_agora.y +16, obj_player_1, false, true)  != noone){
		criar_perguntas();
		gerar_opcoes();

	}
		show_debug_message("coisa")
		show_debug_message(correta_agora.x);
		show_debug_message(correta_agora.y);
}







