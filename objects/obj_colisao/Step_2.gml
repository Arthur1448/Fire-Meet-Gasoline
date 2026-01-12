if(global.pause) exit

if(place_meeting(x + velh, y, obj_solido))
{
	while(!place_meeting(x + sign(velh), y, obj_solido))
	{
		x += sign(velh)
	}
}
else
{
	x += velh
}

if(place_meeting(x, y + velv, obj_solido))
{
	while(!place_meeting(x, y + sign(velv), obj_solido))
	{
		y += sign(velv)
	}
}
else
{
	y += velv
}