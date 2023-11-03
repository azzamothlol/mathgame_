image_speed = 0;//velocidade da animaçao = 0
string_pergunta = "";//pergunta de agora
respostas = 0;//resposta da pergunta
teste = 0;
correta_agora_1 = noone;
correta_agora_2 = noone;
mostrar_perguntas = false;

//player 1 opcoes lmao
number_xpos_player_1 = [192, 320, 224, 288, 192, 320, 64, 448, 256];//posicoes x
number_ypos_player_1 = [96, 96, 288, 288, 416, 416, 640, 640, 544];//posicoes y
//criar opcoes player 1
for (var _i = 8; _i > -1; _i--){
	var _id_agora = instance_create_layer(number_xpos_player_1[_i], number_ypos_player_1[_i], "opcoes", obj_numbers_1);
	opcoes_id_player_1[_i] = _id_agora;
	show_debug_message(opcoes_id_player_1)
}

//player 2 opcoes lmao
number_xpos_player_2 = [928, 1056, 960, 1028, 928, 1056, 800, 1184,992];//posicoes x
number_ypos_player_2 = [96, 96, 288, 288, 416, 416, 640, 640, 544];//posicoes y
//criar opcoes player 2
for (var _i = 8; _i > -1; _i--){
	var _id_agora = instance_create_layer(number_xpos_player_2[_i], number_ypos_player_2[_i], "opcoes", obj_numbers_1);
	opcoes_id_player_2[_i] = _id_agora;
	show_debug_message(opcoes_id_player_2)
}


//==========================funçao criar perguntas=========================================


dificuldade_pergunta = 1;//variavel da dificuldade da pergunta a ser gerada
numero_da_pergunta = 0;//pergunta de agora

function criar_perguntas(){
	
	
	var _numero1, _numero2, _numero3, _operador1, _operador2;
	switch (dificuldade_pergunta){
	case 1:
	//criar um poblema matematico
	_numero1= irandom(9)//gerar numero aleatorio entre 1 e 9
	_numero2 = irandom(9)//gerar outro numero aleatorio entre 1 e 9
	_operador1= choose("+", "-")//sececionar operador
	switch (_operador1){
		case "+":
		respostas = _numero1 + _numero2;
		break;
		case "-":
		respostas = _numero1 - _numero2;
		break;
	}
	string_pergunta = (string(_numero1) +" "+_operador1 +" "+string(_numero2));
	break;
	case 2:
		_operador1 = choose("+", "-", "*" )//sececionar operador
		_numero1= irandom(9)//gerar numero aleatorio entre 1 e 9
		_numero2 = irandom(9)//gerar outro numero aleatorio entre 1 e 9
		switch (_operador1){
		case "+":
		respostas = _numero1 + _numero2;
		break;
		case "-":
		respostas = _numero1 - _numero2;
		break;
		case "*":
		 respostas = _numero1 * _numero2;
		break;
		}
		string_pergunta = (string(_numero1) +" "+ _operador1 +" "+ string(_numero2));
	break;
	case 3:
	_operador1 = choose("+", "-", "*", "/")
	_numero1= irandom(9)//gerar numero aleatorio entre 1 e 9
	_numero2 = irandom(9)//gerar outro numero aleatorio entre 1 e 9
		switch(_operador1){
			case "+":
			respostas = _numero1 + _numero2;
			break;
			case "-":
			respostas = _numero1 - _numero2;
			break;
			case "*":
			respostas = _numero1 * _numero2;
			break;
			case "/":
			_numero1 = irandom_range(1, 9);
			_numero2 = irandom_range(1, 9);
			while (_numero1 mod _numero2 != 0){
			_numero1 = irandom_range(1, 9);
			_numero2 = irandom_range(1, 9);
			}
			respostas = _numero1 / _numero2;
			break;
		}
		string_pergunta = (string(_numero1) +" "+ _operador1 +" "+ string(_numero2));
	break;
	case 4:
	_numero1= irandom(9)//gerar numero aleatorio entre 1 e 9
	_numero2 = irandom(9)//gerar outro numero aleatorio entre 1 e 9
	_numero3 = irandom(9)
	_operador1 = choose("+", "-", "*", "/")
	_operador2 = choose("+", "-")
	switch (_operador1){
		case "+":
		respostas = _numero1 + _numero2;
		break;
		case "-":
		respostas = _numero1 - _numero2;
		break;
		case "*":
		respostas = _numero1 * _numero2;
		break;
		case "/":
			_numero1 = irandom_range(1, 9);
			_numero2 = irandom_range(1, 9);
			while (_numero1 mod _numero2 != 0){
			_numero1 = irandom_range(1, 9);
			_numero2 = irandom_range(1, 9);
			}
			respostas = _numero1 / _numero2;
		break;
	}
	switch(_operador2){
		case "+":
		respostas =  respostas + _numero3;
		break;
		case "-":
		respostas = respostas - _numero3;
		break;
	}
	string_pergunta = (string(_numero1) +" "+ _operador1 +" "+ string(_numero2) +" "+_operador2+" "+string(_numero3));
	break
	}
}



function gerar_opcoes(){
	var _correta_1 = irandom_range(0,8)
	var _correta_2 = irandom_range(0,8)
	for (var _i = 8;_i > -1; _i-- ){
		 if (_i = _correta_1){
			 opcoes_id_player_1[_i].valor = respostas;
			 correta_agora_1 = opcoes_id_player_1[_i]
		 }else{
			 var _aleatorizar = irandom_range(-9, 9)
			 if (_aleatorizar = 0){
				_aleatorizar = choose(-2, -1, 1, 2) 
			 }
			 opcoes_id_player_1[_i].valor = respostas + _aleatorizar;
		 }
		 //poraaaaaaaaaaaaaaaaaaaaa
		  if (_i = _correta_2){
			 opcoes_id_player_2[_i].valor = respostas;
			 correta_agora_2 = opcoes_id_player_2[_i]
		 }else{
			 var _aleatorizar = irandom_range(-9, 9)
			 if (_aleatorizar = 0){
				_aleatorizar = choose(-2, -1, 1, 2) 
			 }
			 opcoes_id_player_2[_i].valor = respostas + _aleatorizar;
		 }
	}
}