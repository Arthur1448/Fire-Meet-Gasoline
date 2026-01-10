if(xdir != 0) image_xscale = xdir

if(pegando_fogo) recebeu_gas = false

movimento_inimigo()

sprite_inimigo()

dar_dano()

if(pegando_fogo) pega_fogo()

if(recebeu_gas and !pegando_fogo) molhado()
else image_blend = -1