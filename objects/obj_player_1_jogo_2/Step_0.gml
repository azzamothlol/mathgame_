//verificar direcao onde do jogador
var _xmove = (keyboard_check(ord("D")) - keyboard_check(ord("A")));// -1 0 1
var _altura =  (keyboard_check(ord("W")) - keyboard_check(ord("S")));
//calcular velocidade 
if (_xmove != 0){
	velocidade += incremento_velocidade;
	if velocidade >= velocidade_maxima{
		velocidade = velocidade_maxima;
	}
}else{
	velocidade = max(velocidade - incremento_velocidade, 0)
}

xspd = (velocidade * _xmove);//adicionar velocidade ao xspd

x = x + xspd;
if (_altura != 0){
	if (_altura = 1){
		local = "cima";
	}else if (_altura = -1){
		local = "baixo";
	}
}

if (local = "cima"){
	target_y = posicao_cima;
}else if (local = "baixo"){
	target_y = posicao_baixo;
}
var _local_y = (lerp(y, target_y, .2))
y = _local_y;
mira.y = _local_y - 500;
mira.x = x;

