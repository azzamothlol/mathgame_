draw_self()
draw_set_color(c_red)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
if (mostrar_perguntas = true){
	draw_text_transformed(x, y - 5, string_pergunta, 1.40, 1.70, 0)
}

draw_set_color(c_white)



//if keyboard_check_pressed(vk_up){
//teste += .1;	
//}

//if keyboard_check_pressed(vk_down){
//teste -= .1;	
//}

//if keyboard_check_pressed(vk_up){
//teste += .1;	
//}

//if keyboard_check_pressed(vk_down){
//teste -= .1;	
//}

//draw_text(x, 200, teste)