if keyboard_check_pressed(vk_enter){
	criar_perguntas()
	gerar_opcoes()
}
if keyboard_check(ord("Q")){
	if (place_meeting(correta_agora.x, correta_agora.y, obj_player_1)){
		criar_perguntas()
		gerar_opcoes()
	}
}








