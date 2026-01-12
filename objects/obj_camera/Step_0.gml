if(global.pause) exit

var _x = obj_player.x
x = lerp(x, _x, 0.5)

var _y = obj_player.y - 64
y = lerp(y, _y, 0.5)

camera_set_view_border(view_camera[0], 350, 250)
