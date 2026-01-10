if(obj_player.image_xscale == 1) image_angle = direction
else image_angle = direction + 180

var _bloco = instance_place(x + sign(hspeed), y + sign(vspeed), obj_solido)

if(_bloco != noone)
{
	instance_destroy()
}

vspeed += 0.15