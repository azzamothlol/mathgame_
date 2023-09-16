//variaveis sla lol
var _xmove = (keyboard_check(ord("D")) - keyboard_check(ord("A")));// -1 0 1
var _on_ground = place_meeting(x, y+1, obj_colision);
var _key_jump = keyboard_check_pressed(ord("W"));
//--------------------incremento da velocidade-------------------------------------
if (_xmove != 0){
	spd += spd_incriment;
	if spd >= spd_max{
		spd = spd_max
	}
}else{
	spd = max(spd - spd_incriment, 0)
}
//-------------------------------coyote time pulo----------------------------------------
if (_key_jump){
	coyote_time = coyote_time_max;
}
if (coyote_time > 0){
	coyote_time--;
	if (_on_ground){
		yspd = -9
		coyote_time = 0;
		ycale = 1.5;
		xcale = .5;
	}
}
//--------------------calcular velocidade no eixo x e y----------------------------
var _hspd = _xmove * spd; 
yspd = yspd + grv;//gravidade
//------------------------------------------colisao--------------------------------------------
//horizontal
if (place_meeting(x+_hspd, y, obj_colision)){
	while (!place_meeting(x + sign(_hspd), y, obj_colision)){
		x = x + sign(_hspd)
	}
	_hspd = 0;
}
x = x + _hspd;
//vertical
if (place_meeting(x, y + yspd, obj_colision)){
	while (!place_meeting(x , y + sign(yspd), obj_colision)){
		y = y + sign(yspd)
	}
	yspd = 0;
}
y = y + yspd;


xcale = lerp(xcale, 1, .2);
ycale = lerp(ycale, 1, .2);

if (place_meeting(x, y + 1, obj_colision)) and (!place_meeting(x, yprevious + 1, obj_colision)) and (coyote_time = 0){
	xcale = 1.3;
	ycale = .6;
}




//eu vou me matar