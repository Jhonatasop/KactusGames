/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//controlando o player

if (morto) return;

var _chao = place_meeting(x, y + 1, obj_chao);


var _left, _right, _jump;
_left = keyboard_check(inputs.left);
_right = keyboard_check(inputs.right);
_jump = keyboard_check_pressed(inputs.jump);

//só posso me controlar se eu nao tomei dano = se o timer do dano esta zerado
if (timer_dano <= 0)
{
	velh = (_right - _left) * vel;
}


//pulando
if (_chao)
{
	if (_jump)
	{
		velv = -vel_jump;
	}
	
	//se eu estou no chao e me movendo
	if (velh != 0)
	{
		//mudo a sprite
		sprite_index = spr_player_run;
		//faço ele olhar para onde estou indp
		image_xscale = sign(velh);
	}
	else
	{
	sprite_index = spr_player_idle;
	}
}
else //nao to no chao
{
	// mudando a sprite
	if (velv < 0)
	{
	sprite_index = spr_player_jump;
	}
	else
	{
		sprite_index = spr_player_fall;
		
		// se eu estou indo pára baixo, posso cair na cabeça do inimigo
		var _inimigo = instance_place(x, y + 5, obj_inimigo_pai);
		
		//se eu cai no inimigo
		if(_inimigo)
		{
			dano = false;
			// se o inimigo n ta morto
			if (_inimigo.morto == false)
			{
				//subo no ar, novamente
				velv= -vel_jump
			
				// avisando ao inimigo q ele tomou dano
				_inimigo.dano =true;
			}
		}
	}
	// gravidade
	velv	+= grav;
	if (velh != 0)
	{
		image_xscale = sign (velh);
	}
}

if (dano)
{
	sprite_index = spr_player_hurt;
	
	if (vida <=0)
	{
		sprite_index = spr_player_dead;
	}
	else
	{
		sprite_index = spr_player_hurt;
	}
}

// se o timer do dano e maior que 0, eu diminuo ele
if (timer_dano > 0)
{
	timer_dano--;
}
else
{
	//acabou o timer do dano 
	dano = false;
}
if (inv_timer > 0)
{
	inv_timer--;
	
	image_alpha = .7;
}
else
{
	image_alpha = 1;
}


// Tomando dano
var _inimigo = instance_place(x, y, obj_inimigo_pai);

if (_inimigo && inv_timer <= 0)
{
    if (_inimigo.morto == false && _inimigo.dano == false)
    {
        // Apenas tome dano se a vida for maior que zero
        if (vida > 0)
        {
            dano = true;

            // Valor do timer de dano
            timer_dano = tempo_dano;
            inv_timer = inv_tempo;
            vida -= 1; // Diminui a vida em 1
			velh = 0
			

            // Verifica se a vida chegou a zero
           if (vida <= 0 || sprite_index == spr_player_dead)
			{
			    morto = true;
			    sprite_index = spr_player_dead;
			    velh = 0; // Parar movimento horizontal
			    velv = 0; // Parar movimento vertical
			    alarm[0] = 90; // Configura o alarme para reiniciar ou destruir o objeto
			    dano = false; // Desativa a possibilidade de tomar dano
				global.token -= global.token_na_fase_atual; // Perde os tokens da fase atual
				global.token_na_fase_atual = 0; // Reseta os tokens da fase atual
				global.folhaencantada -= global.folhaencantada_na_fase_atual; // Perde os tokens da fase atual
				global.folhaencantada_na_fase_atual = 0; // Reseta os tokens da fase atual
				if (image_speed <= 0)
				{
					image_alpha -= 0.01;
				}
			}
			if (morto && sprite_index == spr_player_dead && image_index >= image_number - 1)
			{
			    image_speed = 0; // Pausar no último quadro da animação
			    image_index = image_number - 1; // Garantir que esteja no último quadro
			}

        }
    }
}
/// Evento Step

// Verifica se o jogador está no chão
if (place_meeting(x, y + 1, obj_chao)) {
    som_pode_tocar = true; // Permite que o som toque novamente
} else {
    som_pode_tocar = false; // Bloqueia o som quando o jogador está no ar
	
}

// Tocar som ao pressionar Enter, mas somente se puder tocar
if (keyboard_check_pressed(vk_enter)) { 
    if (som_pode_tocar && global.efeitos_habilitados) {
        var som = audio_play_sound(SFX_Jump_07, 0, false);
        audio_sound_gain(som, 0.3, 0); // Ajusta o volume do som para 30%
        som_pode_tocar = false; // Bloqueia o som até que o jogador toque o chão novamente
    } else if (som_pode_tocar == false){
		var som = audio_play_sound(SFX_Jump_07, 0, false);
        audio_sound_gain(som,0, 0); // Ajusta o volume do som para 30%
	}
}



// Se o timer do dano é maior que 0, diminua ele
if (timer_dano > 0)
{
    timer_dano--;
}
else
{
    // Acabou o timer de dano 
    dano = false;
}

if (inv_timer > 0)
{
    inv_timer--;
    image_alpha = 0.7; // Efeito de invencibilidade
}
else
{
    image_alpha = 1;
}



