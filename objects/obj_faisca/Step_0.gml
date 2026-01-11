event_inherited();

var _inimigo = instance_place(x, y, obj_inimigo_simples)
var _bloco   = instance_place(x, y, obj_solido)

if(_inimigo)
{

	instance_destroy()
}

if(_bloco)
{
	if(!_bloco.pegando_fogo) _bloco.tocar_fogo()
	instance_destroy()
}