event_inherited();

var _inimigo = instance_place(x, y, obj_inimigo_simples)
var _blocoy   = instance_place(x, y + vspeed, obj_solido)
var _blocox   = instance_place(x + hspeed, y, obj_solido)

if(_inimigo)
{
	_inimigo.recebeu_gas = true
	instance_destroy()
}

if(_blocoy and vspeed > 0)
{
	if(_blocoy.tipo == -1 and !_blocoy.pegando_fogo) _blocoy.recebeu_gas(tipo)
	instance_destroy()
}
else if(_blocox)
{
	instance_destroy()
}