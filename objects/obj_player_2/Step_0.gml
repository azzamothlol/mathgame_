//variaveis sla lol
var _xmove = (keyboard_check(ord("L")) - keyboard_check(ord("J")));// -1 0 1
var _on_ground = place_meeting(x, y+1, obj_colision);
var _key_jump = keyboard_check_pressed(ord("I"));
var _key_jumo_releace = keyboard_check_released(ord("I"));
//--------------------incremento da velocidade-------------------------------------
if (_xmove != 0){
	spd += spd_incriment;
	if spd >= spd_max{
		spd = spd_max
	}
}else{
	spd = max(spd - .5, 0)
}
//-------------------------------coyote time pulo----------------------------------------
if (_key_jump){
	coyote_time = coyote_time_max;
}
if (coyote_time > 0){
	coyote_time--;
	if (_on_ground){
		yspd = -15
		coyote_time = 0;
		ycale = 1.5;
		xcale = .5;
	}
}
if (_key_jumo_releace) and (sign(yspd) = -1){
	yspd = yspd/4
}
//--------------------calcular velocidade no eixo x e y----------------------------
hspd = _xmove * spd;
yspd = yspd + grv;//gravidade
//------------------------------------------colisao--------------------------------------------
//horizontal
if (place_meeting(x+hspd, y, obj_colision)){
	while (!place_meeting(x + sign(hspd), y, obj_colision)){
		x = x + sign(hspd)
	}
	hspd = 0;
}
x = x + hspd;
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