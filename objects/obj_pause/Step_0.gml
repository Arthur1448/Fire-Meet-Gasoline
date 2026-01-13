pause_key = keyboard_check_pressed(vk_escape)

if(pause_key) global.pause = !global.pause

if(global.pause)
{
	audio_pause_all()
}
else
{
	audio_resume_all()
}