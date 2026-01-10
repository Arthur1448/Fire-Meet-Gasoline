event_inherited();

var _inimigo = instance_place(x, y, obj_inimigo_simples)

if(_inimigo)
{
	_inimigo.recebeu_gas = true
	instance_destroy()
}