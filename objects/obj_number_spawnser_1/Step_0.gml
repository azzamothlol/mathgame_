if (keyboard_check_pressed(ord("Q"))){
	if (place_meeting(correta_agora_id.x, correta_agora_id.y, obj_player_1 )){
		refresh_question();
		audio_play_sound(snd_option_correct, 1, false);
	}
}
if (keyboard_check_pressed(vk_shift)){
	refresh_question();
	audio_play_sound(snd_option_correct, 1, false);
}