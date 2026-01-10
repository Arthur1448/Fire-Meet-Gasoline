recebeu_gas = false
frameTimer  = 0

function molhado()
{
	if(frameTimer < 120)
	{
		frameTimer++
	}
	else
	{
		frameTimer = 0
		recebeu_gas = false
	}
}