//forcar spawner a ficar nas cordenadas fora da sala 

for (var _i = room_width/32; _i = 0; _i--) {
    array[_i] = room_width - 32 * _i;
	show_debug_message(_i);
}
for (var _i = room_width/32; _i = 0; _i--){
	instance_create_layer(32, array[_i], "colisao", obj_colision)
	show_debug_message(_i);
}


