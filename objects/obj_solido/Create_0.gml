tipo           = -1
frameTimerGas  = 0
frameTimerFogo = 0
pegando_fogo   = false
fogo = noone

function recebeu_gas(_tipo)
{
	tipo       = _tipo
	frameTimerGas = 0
}

function molhar()
{
	if(frameTimerGas < 120)
	{
		if(tipo == 0) image_blend = c_yellow
		else if(tipo == 1) image_blend = c_green
		else if(tipo == 2) image_blend = c_aqua
		frameTimerGas += 1
	}
	else 
	{
		image_blend = -1
		tipo = -1
		frameTimerGas = 0
	}
}

function tocar_fogo()
{
	pegando_fogo = true
	if(tipo == 0) fogo = instance_create_layer(x, bbox_top, layer, obj_fogo_normal)
	else if(tipo == 1) fogo = instance_create_layer(x, bbox_top, layer, obj_fogo_gosma)
	else if(tipo == 2) fogo = instance_create_layer(x, bbox_top, layer, obj_fogo_gelo)
}

function tempo_fogo()
{
	if(frameTimerFogo < 120)
	{
		pegando_fogo   = true
		frameTimerFogo += 1
	}
	else
	{
		frameTimerFogo = 0
		pegando_fogo   = false
		instance_destroy(fogo)
	}
}