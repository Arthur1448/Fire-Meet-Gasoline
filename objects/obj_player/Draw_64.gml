display_set_gui_size(1366, 768);

draw_sprite(spr_barra_fundo, 0, barra_hp_x, barra_hp_y)
draw_sprite_stretched(spr_barra_hp, 0, barra_hp_x, barra_hp_y, (hp / 100) * barra_hp_w, barra_hp_h)
draw_sprite(spr_borda_barra_hp, 0, barra_hp_x, barra_hp_y)

if(tipo_gas == 0)
{
	draw_sprite(spr_barra_fundo, 0, barra_gas_x, barra_gas_y)
	draw_sprite_stretched(spr_barra_gas_normal, 0, barra_gas_x, barra_gas_y, (gas[0] / 100) * barra_gas_w, barra_gas_h)
	draw_sprite(spr_borda_barra_gas_normal, 0, barra_gas_x, barra_gas_y)
}
else if(tipo_gas == 1)
{
	draw_sprite(spr_barra_fundo, 0, barra_gas_x, barra_gas_y)
	draw_sprite_stretched(spr_barra_gas_gosma, 0, barra_gas_x, barra_gas_y, (gas[1] / 100) * barra_gas_w, barra_gas_h)
	draw_sprite(spr_borda_barra_gas_gosma, 0, barra_gas_x, barra_gas_y)
}
else if(tipo_gas == 2)
{
	draw_sprite(spr_barra_fundo, 0, barra_gas_x, barra_gas_y)
	draw_sprite_stretched(spr_barra_gas_gelo, 0, barra_gas_x, barra_gas_y, (gas[2] / 100) * barra_gas_w, barra_gas_h)
	draw_sprite(spr_borda_barra_gas_gelo, 0, barra_gas_x, barra_gas_y)
}

//debug
draw_set_font(fnt_debug)
/*
if(tipo_gas == 0) draw_text(100, 200, "Fogo Normal")
else if(tipo_gas == 1) draw_text(100, 200, "Fogo Gosma")
else if(tipo_gas == 2) draw_text(100, 200, "Fogo Gelo")
*/
draw_set_font(-1)