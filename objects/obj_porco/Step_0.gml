/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (morto)
{
	sprite_index = spr_porco_dead;

	
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
	tempo_decidir_andar -= 0.5;
	
	//se o tempo acabou, eu decido se eu vou andar
	if (tempo_decidir_andar <= 0)
	{
		andando = choose(true, false);
		
		
		
		//escolhendo a direção se ele decidiu andar
		if (andando)
		{
			velh = choose (vel, -vel);
		}
		
		
		//resetando o tempo
		tempo_decidir_andar = room_speed * 2;
	}
	
	
	//controlando a animação do inimigo
	if (velh != 0 && dano == false)
	{
		sprite_index = spr_porco_run
		image_xscale = sign(velh);
	}
	else
	{
		sprite_index = spr_porco_idle
	}
	
	// se eu bater na parede, eu mudo de direção
	if (place_meeting(x + velh, y, obj_chao))
	{
	velh *= -1;
	}
	
	// se eu n posso cair, entao quando eu for cair, eu mudo de direção
	if (pode_cair == false)
	{
		if (place_meeting(x + (velh* 10), y + 1, obj_chao) == false)
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
if (dano && morto == false) {
    sprite_index = spr_porco_dano;
    velh = 0;

    // Tocar som apenas uma vez
    if (!som_tocado) {
        if (global.efeitos_habilitados && sprite_index == spr_porco_dano) {
            audio_play_sound(punch_1, 1, false);
        } else if (!global.efeitos_habilitados || sprite_index == spr_porco_dead || sprite_index == spr_porco_dano) {
            var som = audio_play_sound(punch_1, 0, false);
            audio_sound_gain(som, 0, 0);
        }

        // Marca o som como tocado
        som_tocado = true;
    }
} else {
    // Reseta a variável caso o dano termine
    som_tocado = false;
}