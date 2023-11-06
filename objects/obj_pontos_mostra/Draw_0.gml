draw_self()
/*
if keyboard_check_pressed(vk_up){xcale += 0.1}
if keyboard_check_pressed(vk_down){xcale -= 0.1}

if keyboard_check_pressed(vk_left){ycale += 0.1}
if keyboard_check_pressed(vk_right){ycale -= 0.1}

if keyboard_check_pressed(vk_down){ycale += 1}
if keyboard_check_pressed(vk_up){ycale -= 1}
*/
draw_set_color(c_black);
if (mostrar_pontos_1 = true){
	draw_text_transformed(597.4, 223, pontos_1, 1.8, 1.8, 0)
}
if (mostrar_pontos_2 = true){
	draw_text_transformed(683.7, 223, pontos_2, 1.8, 1.8, 0);
}
draw_set_color(c_white);


