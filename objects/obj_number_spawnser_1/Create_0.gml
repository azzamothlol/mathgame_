//arrays das posoes de localizacao dos locais das opcoes
number_xpos = [320, 448, 352, 416, 320, 448, 160, 384, 608];//posicoes x
number_ypos = [96, 96, 288, 288, 416, 416, 576, 576, 576];//posicoes y
inst_id = array_create(9, 0)//criar array da id das opsoes 
calculos = instance_create_layer(160, 800, "utilidades", obj_calcolos_1)
correta_id = noone;
global.pontos_player_1 = 0;
global.dificuldade_player_1 = 1;
//inicializar selecoes
//function create_numbers(){
	var _i = 8;
	repeat(9){
		var _inst = instance_create_layer(number_xpos[_i], number_ypos[_i], "utilidades", obj_numbers_1);
		inst_id[_i] = _inst;
		_i--;	
	}
	show_debug_message(inst_id);
//}

function criar_poblemas(){
	var _num1, _num2, _num3, _operador_1,_operador_2, _aleatorizar, _perguntas_strings, _resposta;
	if (global.pontos_player_1 > 4){
		global.pontos_player_1 = 4;
	}
	switch (global.dificuldade_player_1){
		case 1:
	//criar um poblema matematico
	_num1= irandom(9)//gerar numero aleatorio entre 1 e 9
	_num2 = irandom(9)//gerar outro numero aleatorio entre 1 e 9
	_operador_1= choose("+", "-")//sececionar operador
	switch (_operador_1){
		case "+":
		_resposta = _num1 + _num2;
		break;
		case "-":
		_resposta = _num1 - _num2;
		break;
	}
	_perguntas_strings = (string(_num1) + _operador_1 + string(_num2));
	break;
	case 2:
		_operador_1 = choose("+", "-", "*" )//sececionar operador
		_num1= irandom(9)//gerar numero aleatorio entre 1 e 9
		_num2 = irandom(9)//gerar outro numero aleatorio entre 1 e 9
		switch (_operador_1){
		case "+":
		_resposta = _num1 + _num2;
		break;
		case "-":
		_resposta = _num1 - _num2;
		break;
		case "*":
		 _resposta = _num1 * _num2;
		break;
		}
		_perguntas_strings = (string(_num1) + _operador_1 + string(_num2));
	break;
	case 3:
	_operador_1 = choose("+", "-", "*", "/")
	_num1= irandom(9)//gerar numero aleatorio entre 1 e 9
	_num2 = irandom(9)//gerar outro numero aleatorio entre 1 e 9
		switch(_operador_1){
			case "+":
			_resposta = _num1 + _num2;
			break;
			case "-":
			_resposta = _num1 - _num2;
			break;
			case "*":
			_resposta = _num1 * _num2;
			break;
			case "/":
			_num1 = irandom_range(1, 9);
			_num2 = irandom_range(1, 9);
			while (_num1 mod _num2 = 0){
			_num1 = irandom_range(1, 9);
			_num2 = irandom_range(1, 9);
			}
			_resposta = _num1 / _num2;
			break;
		}
		_perguntas_strings = (string(_num1) + _operador_1 + string(_num2));
	break;
	case 4:
	_num1= irandom(9)//gerar numero aleatorio entre 1 e 9
	_num2 = irandom(9)//gerar outro numero aleatorio entre 1 e 9
	_num3 = irandom(9)
	_operador_1 = choose("+", "-", "*", "/")
	_operador_2 = choose("+", "-")
	switch (_operador_1){
		case "+":
		_resposta = _num1 + _num2;
		break;
		case "-":
		_resposta = _num1 - _num2;
		break;
		case "*":
		_resposta = _num1 * _num2;
		break;
		case "/":
			_num1 = irandom_range(1, 9);
			_num2 = irandom_range(1, 9);
			while (_num1 mod _num2 = 0){
			_num1 = irandom_range(1, 9);
			_num2 = irandom_range(1, 9);
			}
			_resposta = _num1 / _num2;
		break;
	}
	switch(_operador_2){
		case "+":
		_resposta =  _resposta - _num3;
		break;
		case "-":
		_resposta = _resposta - _num3;
		break;
	}
	_perguntas_strings = (string(_num1) + _operador_1 + string(_num2) +_operador_2+string(_num3));
	break
	}
	calculos.perguntas = _perguntas_strings;
	var _i = 8
	var _opcao_correta = irandom_range(0, 8);
	repeat(9){
		if (_i = _opcao_correta){
			inst_id[_i].valor = _resposta;
			correta_id = inst_id[_i];
		}else{
			inst_id[_i].sou_correta = false;
			var _aleatorizacao = irandom_range(-5, 5)
			if (_aleatorizacao = 0){
				_aleatorizacao = _aleatorizacao + choose(1, -1)
			}
			inst_id[_i].valor = _resposta + _aleatorizacao;
		}
		_i--;
	}
}

