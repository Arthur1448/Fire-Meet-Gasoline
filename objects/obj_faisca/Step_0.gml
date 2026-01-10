event_inherited();

var _inimigo = instance_place(x, y, obj_inimigo_simples)

if(_inimigo)
{
	if(_inimigo.recebeu_gas) instance_destroy(_inimigo)
	instance_destroy()
}