/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//checando se está no chão
var _chao = place_meeting(x, y + 1, obj_chao);

if (_chao)
{
	// checando se eu estou andando
	if (andando)
	{
		//se eu estou no chao, eu ando para um lado
		velh = vel;
	}
	
	
	//controlando a animação do inimigo
	if (velh != 0)
	{
		sprite_index = spr_ghost
		image_xscale = sign(velh);
	}
	else
	{
		sprite_index = spr_ghost
	}
}
else
{ //se eu n estou no chao, aplico gravidade
	velv += grav;
	
	velh = 0;
}

	if (velh != 0)
	{
		image_xscale = sign (velh)
	}
