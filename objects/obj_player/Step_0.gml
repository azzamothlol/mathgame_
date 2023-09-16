//variaveis sla lol
var _xmove = (keyboard_check(ord("D")) - keyboard_check(ord("A")));// -1 0 1
//--------------------incremento da velocidade-------------------------------------
if (_xmove != 0){
    spd += spd_incriment;
    if spd >= spd_max{
        spd = spd_max
    }
}else{
    spd = 0;
}
//--------------------calcular velocidade no eixo x e y----------------------------
var _hspd = _xmove * spd; 
yspd = yspd - grv;
//--------------------colisao------------------------------------------------------------------

if place_meeting(x+_hspd, y, obj_wall){
	while (!place_meeting(x + sign(_hspd), y, obj_wall)){
		x = x + sign(_hspd)
	}
	_hspd = 0;
}
x = x + _hspd
	
if place_meeting(x, y + yspd, obj_wall){
	while (!place_meeting(x , y + sign(yspd), obj_wall)){
		y = y + sign(yspd)
	}
	yspd = 0;
}