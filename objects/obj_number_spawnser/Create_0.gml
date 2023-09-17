number_xpos = [320, 448, 352, 416, 320, 448, 160, 384, 608];//eu to ficando louco
number_ypos = [96, 96, 288, 288, 416, 416, 576, 576, 576];//posisao y dos bagulhos sla vtnc
inst_id = array_create(9, 0)
correta = 0;
calculos = instance_create_layer(128, 800, "utilidades", obj_calcolos_1);
//criar numeros
function create_numbers(){
	var _i = 8;
	repeat(9){
		var _inst = instance_create_layer(number_xpos[_i], number_ypos[_i], "utilidades", obj_numbers);
		inst_id[_i] = _inst;
		_i--;	
	}
	show_debug_message(inst_id);
}

//resetar numeros coisas sla 
function reset_numbers(){
	var _i = 8;
	correta = irandom_range(0,8);
	show_debug_message(correta);
	repeat (9){
		if (_i = correta){
			inst_id[_i].valor = 999999999999;
		}else{
			inst_id[_i].valor = irandom_range(1,40);
		}
		_i--;
	}
}


function selecionar_operacao(){
		var _operacao = choose("soma", "subitracao", "multiplicacao", "divisao")
		numero_1 = irandom(100)
		numero_2 = irandom(100)
		if ( _operacao == "soma"){
			resposta = numero_1 + numero_2;
		}
		if ( _operacao == "subitracao"){
			resposta = numero_1 - numero_2;
		}
		if ( _operacao == "multiplicacao"){
			resposta = numero_1 * numero_2;
		}
		if ( _operacao == "divisao"){
			resposta = numero_1 / numero_2;
		}
		calculos.numero1 = numero_1;
		calculos.numero2 = numero_2;
		calculos.resposta = resposta;
}