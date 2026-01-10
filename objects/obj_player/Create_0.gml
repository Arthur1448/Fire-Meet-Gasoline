event_inherited();

window_set_fullscreen(true)

hp      = 100
gas     = 100
vel     = 3
velPulo = 4
grv     = 0.25

no_chao = false

jumpTimer      = 0
jumpHoldFrames = 15
jumpCount      = 0
jumpMax        = 2

velDash   = 15
dashTimer = 0
dashCount = 0
dashMax   = 1

barra_hp_x = 100
barra_hp_y = 50
barra_hp_w = 72
barra_hp_h = 18

barra_gas_x = 100
barra_gas_y = 100
barra_gas_w = 72
barra_gas_h = 18

frameTimer = 0

function movimento_player()
{
	var _velh = xdir * vel
	if(abs(velh) < 0.25) velh = 0
	if(no_chao)
	{
		jumpCount = 0
		dashCount = 0
		if(jumpPress)
		{
			jumpCount += 1
			velv = -velPulo
			jumpTimer = jumpHoldFrames
		}
	}
	else
	{
		if(jumpCount == 0) jumpCount = 1
		if(jumpPress and jumpCount < jumpMax)
		{
			jumpTimer = jumpHoldFrames
			jumpCount += 1
			image_index = 0
		}
		if(!jumpHold) jumpTimer = 0
		if(jumpTimer > 0)
		{
			velv = -velPulo
			jumpTimer--
		}
		if(place_meeting(x, y - 1, obj_solido))
		{
			velv      = 2
			jumpTimer = 0
		}
		velv += grv
	}
	if(dash and dashCount < dashMax and gas >= 5)
	{
		dashCount += 1
		dashTimer = 10
		velh = image_xscale * velDash
		gas -= 5
	}
	if(dashTimer > 0) velv = 0
	dashTimer = max(dashTimer - 1, 0)
	velh = lerp(velh, _velh, 0.2)
}

function sprite_player()
{
	if(xdir != 0)
	{
		image_xscale = xdir
	}
	if(obj_mira.x > x) image_xscale = 1
	else image_xscale = -1
	if(dashTimer > 0)
	{
		sprite_index = spr_player_dash
	}
	else if(no_chao)
	{
		if(velh == 0 and xdir == 0)
		{
			muda_sprite(spr_player_idle)
			image_speed = 1
		}
		else
		{
			image_speed = abs(velh) / 2.5
			muda_sprite(spr_player_run)
		}
	}
	else
	{
		if(velv < 0)
		{
			muda_sprite(spr_player_jump)
		}
		else
		{
			muda_sprite(spr_player_fall)
		}
	}
}

function atirar_gasolina()
{
	instance_create_layer(x, y - 16, layer, obj_gasolina_normal)
	gas -= 5
}

function atirar_faisca()
{
	instance_create_layer(x, y - 16, layer, obj_faisca)
}

function definir_limites()
{
	if(velv > 4) velv = 4
	if(hp < 0) hp = 0
	if(hp > 100) hp = 100
	if(gas < 0) gas = 0
	if(gas > 100) gas = 100
}

function recuperar_gasolina()
{
	if(!rshoot) frameTimer += 1
	if(frameTimer > 60)
	{
		frameTimer = 0
		gas += 1
	}
}

function coletar_tanque()
{
	var _tanque = instance_place(x, y, obj_tanque)
	if(_tanque)
	{
		gas += 15
		instance_destroy(_tanque)
	}
}

