w = display_get_width()
h = display_get_height()

if(global.pause)
{
	draw_set_alpha(0.6)
	draw_set_colour(c_black)
	draw_rectangle(0, 0, w, h, false)
	draw_set_alpha(1)
	draw_set_colour(-1)
	draw_set_font(fnt_menu)
}
