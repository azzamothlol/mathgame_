//arrays das posoes de localizacao dos locais das opcoes
number_xpos = [320, 448, 352, 416, 320, 448, 160, 384, 608];//posicoes x
number_ypos = [96, 96, 288, 288, 416, 416, 576, 576, 576];//posicoes y
calculos = instance_create_layer(160, 800, "utilidades", obj_calcolos_1)
perguntas_strings = array_create(9, "")//array que ira cinter as perguntas que devem ser utilizadas no decorrer do jogo
respostas = array_create(20, 0);
id_corretas = array_create(20, 0);
inst_id = array_create(9, noone)//criar array da id das opsoes 
correta_agora_id= noone;
global.pontos_player_1 = -1;
global.dificuldade_player_1 = 1;

//criar opçoes e guardar a id deles em um array 
var _i = 8;
repeat(9){
	var _inst = instance_create_layer(number_xpos[_i], number_ypos[_i], "utilidades", obj_numbers_1);
	inst_id[_i] = _inst;
	_i--;	
}

var _num1, _num2, _num3, _operador_1,_operador_2, _aleatorizar, _perguntas_strings, _resposta, _i2;
_i2 = 19
repeat(20){
	if (_i2 >= 16){
		global.dificuldade_player_1 = 1
	}
	if (_i2 <= 15) and (_i2 >= 12){
		global.dificuldade_player_1 = 2
	}
	if (_i2 <= 11) and (_i2 >= 8){
		global.dificuldade_player_1 = 3
	}
	if (_i2 <= 7){
		global.dificuldade_player_1 = 4
	}
	var _escreve = irandom_range(0, 8);
	id_corretas[_i2] = inst_id[_escreve];
	switch (global.dificuldade_player_1){
	case 1:
	//criar um poblema matematico
	_num1= irandom(9)//gerar numero aleatorio entre 1 e 9
	_num2 = irandom(9)//gerar outro numero aleatorio entre 1 e 9
	_operador_1= choose("+", "-")//sececionar operador
	switch (_operador_1){
		case "+":
		respostas[_i2] = _num1 + _num2;
		break;
		case "-":
		respostas[_i2] = _num1 - _num2;
		break;
	}
	perguntas_strings[_i2] = (string(_num1) + _operador_1 + string(_num2));
	break;
	case 2:
		_operador_1 = choose("+", "-", "*" )//sececionar operador
		_num1= irandom(9)//gerar numero aleatorio entre 1 e 9
		_num2 = irandom(9)//gerar outro numero aleatorio entre 1 e 9
		switch (_operador_1){
		case "+":
		respostas[_i2] = _num1 + _num2;
		break;
		case "-":
		respostas[_i2] = _num1 - _num2;
		break;
		case "*":
		 respostas[_i2] = _num1 * _num2;
		break;
		}
		perguntas_strings[_i2] = (string(_num1) + _operador_1 + string(_num2));
	break;
	case 3:
	_operador_1 = choose("+", "-", "*", "/")
	_num1= irandom(9)//gerar numero aleatorio entre 1 e 9
	_num2 = irandom(9)//gerar outro numero aleatorio entre 1 e 9
		switch(_operador_1){
			case "+":
			respostas[_i2] = _num1 + _num2;
			break;
			case "-":
			respostas[_i2] = _num1 - _num2;
			break;
			case "*":
			respostas[_i2] = _num1 * _num2;
			break;
			case "/":
			_num1 = irandom_range(1, 9);
			_num2 = irandom_range(1, 9);
			while (_num1 mod _num2 != 0){
			_num1 = irandom_range(1, 9);
			_num2 = irandom_range(1, 9);
			}
			respostas[_i2] = _num1 / _num2;
			break;
		}
		perguntas_strings[_i2] = (string(_num1) + _operador_1 + string(_num2));
	break;
	case 4:
	_num1= irandom(9)//gerar numero aleatorio entre 1 e 9
	_num2 = irandom(9)//gerar outro numero aleatorio entre 1 e 9
	_num3 = irandom(9)
	_operador_1 = choose("+", "-", "*", "/")
	_operador_2 = choose("+", "-")
	switch (_operador_1){
		case "+":
		respostas[_i2] = _num1 + _num2;
		break;
		case "-":
		respostas[_i2] = _num1 - _num2;
		break;
		case "*":
		respostas[_i2] = _num1 * _num2;
		break;
		case "/":
			_num1 = irandom_range(1, 9);
			_num2 = irandom_range(1, 9);
			while (_num1 mod _num2 != 0){
			_num1 = irandom_range(1, 9);
			_num2 = irandom_range(1, 9);
			}
			respostas[_i2] = _num1 / _num2;
		break;
	}
	switch(_operador_2){
		case "+":
		respostas[_i2] =  respostas[_i2] + _num3;
		break;
		case "-":
		respostas[_i2] = respostas[_i2] - _num3;
		break;
	}
	perguntas_strings[_i2] = (string(_num1) + _operador_1 + string(_num2) +_operador_2+string(_num3));
	break
	}
	_i2--;
}

numero_pergunta = 19;

function refresh_question(){ 
	var _correta, _a, _randomiador;
	_correta = id_corretas[numero_pergunta]
	calculos.perguntas = perguntas_strings[numero_pergunta];
	_a = 8;
	global.pontos_player_1++;
	repeat (9){
		if (inst_id[_a] = _correta){
			inst_id[_a].valor = respostas[numero_pergunta];
			correta_agora_id = inst_id[_a];
		}else{
			_randomiador = irandom_range(-5, 5);
			if (_randomiador = 0){
				_randomiador = choose(-1, 1)
			}
			inst_id[_a].valor = respostas[numero_pergunta] + _randomiador;  
		}
		_a--;
	}
	numero_pergunta--;
}
refresh_question();
//ew34wste