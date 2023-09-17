number_xpos = [320, 448, 352, 416, 320, 448, 160, 384, 608]
number_ypos = [96, 96, 288, 288, 416, 416, 576, 576, 576]

function _create_numbers(){
	var _i;
	_i = 0;
	repeat(9){
		var _inst = instance_create_layer(number_xpos[_i], number_ypos[_i], "utilidades", obj_numbers);
		_inst.valor = random_range(1, 40)
		_i++;
	}
}