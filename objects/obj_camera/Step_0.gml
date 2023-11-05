//variaveis lol
var _follow = noone;
var _xto, _yto;
var _offsetx = 0;
var _camera_speed = 10;

if (global.player_1_pontos = 20){
	_follow = obj_player_1
	follow_start = true
}
if (global.player_2_pontos = 20){
	_follow = obj_player_2
	follow_start = true;
}
if (follow_start = true) {
	cam_target_width = room_width/2;
	cam_target_heigth = room_height/2;
	cam_height = lerp(cam_height, cam_target_heigth, .1)
	cam_width = lerp(cam_width, cam_target_width, .1)
    camera_set_view_size(view_camera[0], cam_width, cam_height);
	camera_set_view_pos(view_camera[0], x - (cam_width * 0.5), y - (cam_height * 0.5));
} else {
    _follow = noone;
	cam_height = room_height;
	cam_width = room_width;
    camera_set_view_size(view_camera[0], cam_width, cam_height);
	camera_set_view_pos(view_camera[0], x - (cam_width * 0.5), y - (cam_height * 0.5));
}
//se existe o cara o player para sequir, sequir o player 
if (instance_exists(_follow)) {
    _xto = _follow.x;
    _yto = _follow.y;
} else {
    _yto = room_height / 2;
    _xto = room_width / 2;
}
_xto = clamp(_xto, 0 + cam_width/2, room_width - cam_width/2);
_yto = clamp(_yto, 0 + cam_height/2, room_height - cam_height/2);

x = lerp(x, _xto, .1)
y = lerp(y, _yto, .1)



