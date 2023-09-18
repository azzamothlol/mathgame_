//arrays das posoes de localizacao dos locais das opcoes
number_xpos = [320, 448, 352, 416, 320, 448, 160, 384, 608];//posicoes x
number_ypos = [96, 96, 288, 288, 416, 416, 576, 576, 576];//posicoes y
inst_id = array_create(9, 0)//criar array da id das opsoes 
calculos = instance_create_layer(160, 800, "utilidades", obj_calcolos_1)

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
	//criar um poblema matematico
	var _num1 = irandom(9)//gerar numero aleatorio entre 1 e 9
	var _num2 = irandom(9)//gerar outro numero aleatorio entre 1 e 9
	var _operador = choose("+", "-", "*")//sececionar operador
	var _resposta;
	switch (_operador){
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
	
	show_debug_message(_num1);
	show_debug_message(_num2);
	show_debug_message(_operador);
	show_debug_message(_resposta);
	calculos.num1 = _num1;
	calculos.num2 = _num2;
	calculos.operador = _operador;
	calculos.resposta = _resposta;
	show_debug_message(calculos.num1);
	show_debug_message(calculos.num2);
	show_debug_message(calculos.operador);
	show_debug_message(calculos.resposta);
	
	var _i = 8
	var _opcao_correta = irandom_range(0, 8);
	repeat(9){
		if (_i = _opcao_correta){
			inst_id[_i].valor = _resposta;
			inst_id[_i].sou_correta = true;
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

