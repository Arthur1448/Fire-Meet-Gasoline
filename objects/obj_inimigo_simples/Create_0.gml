event_inherited();

vel    = 1
xdir   = -1

frameTimerDano = 0
frameTimerGas  = 0
frameTimerFogo = 0

recebeu_gas  = false
pegando_fogo = false

function movimento_inimigo()
{
	velh = vel * xdir
	var _distx = x - obj_player.x
	var _disty = y - obj_player.y
	if(abs(_distx) < 128 and abs(_disty) < 8)
	{
		if(abs(_distx) <= 24) xdir = 0
		else if(_distx > 0) xdir = -1
		else xdir = 1
	}
	else if(place_meeting(x + sign(velh), y, obj_solido))
	{
		xdir = -xdir
	}
}

function sprite_inimigo()
{
	if(xdir != 0) image_xscale = xdir
	if(pegando_fogo) muda_sprite(spr_inimigo_simples_fogo)
	else muda_sprite(spr_inimigo_simples)
}

function dar_dano()
{
	var _player = instance_place(x, y, obj_player)
	if(_player)
	{
		if(frameTimerDano == 0)
		{
			_player.hp -= 5
		}
		frameTimerDano += 1
		if(frameTimerDano > 30) frameTimerDano = 0
	}
	else frameTimerDano = 0
}

function molhado()
{
	image_blend = c_aqua
	if(frameTimerGas < 60)
	{
		frameTimerGas++
	}
	else 
	{
		recebeu_gas   = false
		frameTimerGas = 0
	}
}

function pega_fogo()
{
	if(frameTimerFogo < 100)
	{
		frameTimerFogo++
	}
	else
	{
		pegando_fogo   = false
		frameTimerFogo = 0
	}
}
