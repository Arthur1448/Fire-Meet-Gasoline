if(speed != 0) velAntesDePausar = speed

if(global.pause)
{
	speed = 0
	exit
} else speed = velAntesDePausar

if(obj_player.image_xscale == 1) image_angle = direction
else image_angle = direction + 180

vspeed += 0.15