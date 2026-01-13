event_inherited();

window_set_fullscreen(!window_get_fullscreen())

if(!fullscreen)
{
	sprite_index = spr_botao_tela_cheia
	fullscreen = true
}
else
{
	sprite_index = spr_botao_janela
	fullscreen = false
}