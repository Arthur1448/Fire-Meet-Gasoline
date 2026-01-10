window_set_cursor(cr_none)

var _x = mouse_x
x = lerp(x, _x, 0.3)
var _y = mouse_y
y = lerp(y, _y, 0.3)

var _camerax = obj_camera.x + (x - obj_camera.x) / 4
obj_camera.x = lerp(obj_camera.x, _camerax, 0.5)