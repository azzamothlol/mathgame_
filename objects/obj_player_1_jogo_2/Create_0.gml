//criar variaveis 

//posiçoes

posicao_baixo = 720;
posicao_cima = 640;

//variaveis velocidade

yspd = 0;
xspd = 0; 
velocidade = 0;
velocidade_maxima = 5;
incremento_velocidade = .5;

velocidade_troca = .5;//velocidade de troca de linha


local = "baixo";
target_y = posicao_baixo;


mira = instance_create_layer(x, y, "mira", obj_mira);