draw_sprite(spr_barra_fundo, 0, barra_hp_x, barra_hp_y)
draw_sprite_stretched(spr_barra_hp, 0, barra_hp_x, barra_hp_y, (hp / 100) * barra_hp_w, barra_hp_h)
draw_sprite(spr_borda_barra_hp, 0, barra_hp_x, barra_hp_y)

draw_sprite(spr_barra_fundo, 0, barra_gas_x, barra_gas_y)
draw_sprite_stretched(spr_barra_gas, 0, barra_gas_x, barra_gas_y, (gas / 100) * barra_gas_w, barra_gas_h)
draw_sprite(spr_borda_barra_gas, 0, barra_gas_x, barra_gas_y)