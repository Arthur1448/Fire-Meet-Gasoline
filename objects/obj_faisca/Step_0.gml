event_inherited();

var _inimigo = instance_place(x, y, obj_inimigo_simples)
var _bloco   = instance_place(x, y, obj_solido)

if(_inimigo)
{
	if(_inimigo.recebeu_gas)
	{
		_inimigo.pegando_fogo = true
	}
	instance_destroy()
}

if(_bloco)
{
	if(_bloco.recebeu_gas)
	{
		instance_create_layer(_bloco.x, _bloco.bbox_top, layer, obj_fogo)
	}
	instance_destroy()
}