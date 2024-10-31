/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (morto)
{
	sprite_index = spr_morcego_dead;
	
	//sumindo se acabou a animação
	if (image_speed <= 0)
	{
		image_alpha -= 0.01;
	}
	//se eu sumi totalmente, eu me destruo
	if (image_alpha <= 0)
	{
		instance_destroy();
	}
	
	exit;
}
//checando se está no chão
var _chao = place_meeting(x, y + 1, obj_chao);

if (_chao)
{
	//vou diminuir o tempo de decidir andar
	tempo_decidir_andar -= 1;
	
	//se o tempo acabou, eu decido se eu vou andar
	if (tempo_decidir_andar <= 0)
	{
		andando = choose(true, false);
		
		
		
		//escolhendo a direção se ele decidiu andar
		if (andando)
		{
			velh = choose (vel, -vel);
		}
		else
		{
			velh = 0;
		}
		
		//resetando o tempo
		tempo_decidir_andar = room_speed * 2;
	}
	
	
	//controlando a animação do inimigo
	if (velh != 0 && dano == false)
	{
		sprite_index = spr_morcego
		image_xscale = sign(velh);
	}
	else
	{
		sprite_index = spr_morcego
	}
	
	// se eu bater na parede, eu mudo de direção
	if (place_meeting(x + velh, y, obj_chao))
	{
	velh *= -1;
	}
	
	// se eu n posso cair, entao quando eu for cair, eu mudo de direção
	if (pode_cair == false)
	{
		if (place_meeting(x + (velh* 20), y + 1, obj_chao) == false)
		{
			//se eu n posso cair e n estou tocando no chao, eu mudo de direção
			velh *= -1;
		}
	}
}
else
{ //se eu n estou no chao, aplico gravidade
	velv += grav;
	
	//velh = 0;

	if (velh != 0)
	{
		image_xscale = sign (velh)
	}
}
//checando se eu estou tomando dano
if (dano && morto == false)
{
	sprite_index = spr_morcego_dmg
	velh = 0;
}
