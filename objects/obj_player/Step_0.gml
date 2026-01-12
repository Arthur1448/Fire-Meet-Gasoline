if(global.pause)
{
	image_speed = 0
	exit
} else image_speed = 1

left      = keyboard_check(ord("A"))
right     = keyboard_check(ord("D"))
jumpPress = keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_space)
jumpHold  = keyboard_check(ord("W")) or keyboard_check(vk_space)
dash      = keyboard_check_pressed(vk_lshift)
rshoot    = mouse_check_button_pressed(mb_right)
lshoot	  = mouse_check_button_pressed(mb_left)
scrdown   = mouse_wheel_down()
scrup     = mouse_wheel_up()

restart   = keyboard_check_pressed(ord("R"))
if(restart) room_restart()

xdir = right - left

no_chao = place_meeting(x, y + 1, obj_solido)

movimento_player()

sprite_player()

if(abs(point_direction(x, y, obj_mira.x, obj_mira.y) - 90) > 5)
{
	if(rshoot and gas[tipo_gas] >= 5) atirar_gasolina()
	if(lshoot) atirar_faisca()
}

coletar_tanque()

recuperar_gasolina()

mudar_gasolina()

definir_limites()