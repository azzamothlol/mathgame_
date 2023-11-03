image_speed = 0;//velocidade da animaçao = 0
string_pergunta = "";//pergunta de agora
respostas = 0;//resposta da pergunta
teste = 0;
correta_agora = noone;
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


dificuldade_pergunta = 0;//variavel da dificuldade da pergunta a ser gerada
numero_da_pergunta = 0;//pergunta de agora
function criar_perguntas(){
	//selecionar dificuldade (mds essa parte da uma merda mas e o que vai ser pq nn sei como fazer melhor)
	/*
	if (numero_da_pergunta >= 30){
		dificuldade_pergunta = 4
	}
	if (numero_da_pergunta <= 29) and (numero_da_pergunta >= 17){
		dificuldade_pergunta = 3
	}
	if (numero_da_pergunta <= 16) and (numero_da_pergunta >= 8){
		dificuldade_pergunta = 2
	d
	*/
	if (numero_da_pergunta <= 7){
		dificuldade_pergunta = 1
	}
	
	//gerar perguntas dependendo da dificuldade
	var _numero1, _numero2, _numero3, _operador1, _operador2;
	switch (dificuldade_pergunta){
		case 1:
		//criar um poblema matematico de nivel basico(1)
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
		string_pergunta = (string(_numero1) + " " + _operador1 + " " + string(_numero2))
		show_debug_message(string_pergunta)
		case 2:
		
		case 3:
		
		case 4:
		
	}
}

function gerar_opcoes(){
	var _correta = irandom_range(0, 8);
	
	for (var _i = 8; _i > -1; _i--){
		var _aleatorizar = irandom_range(-9, 9);
		if (_aleatorizar = 0){
			_aleatorizar = choose(-1, 1);
		}
		if (_i = _correta){
			_aleatorizar = 0;
			correta_agora = opcoes_id_player_1[_correta]
		}
		
		opcoes_id_player_1[_i].valor = respostas + _aleatorizar;
		opcoes_id_player_2[_i].valor = respostas + _aleatorizar;
	}
}













