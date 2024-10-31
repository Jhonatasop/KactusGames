/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//controlando o player
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
			

            // Verifica se a vida chegou a zero
            if (vida <= 0 )
            {
				morto =true;
                // Executa a ação de morte
                sprite_index = spr_player_dead; // Substitua pelo sprite de morte
				if (morto)
				{
	
					sprite_index = spr_player_dead;
					velh =0;
					alarm[0] = 180; // Aguardando 60 passos antes de reiniciar ou finalizar o jogo
					 // Desativa a possibilidade de tomar dano até que o alarme expire
					dano = false;
				}
                
               
                inv_timer = 0; // Desabilita o timer de invencibilidade
            }
        }
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

// Evento do alarme 0
if (alarm[0] == 0)
{
    instance_destroy(); // Remove o personagem atual, se necessário
    room_restart(); // Reinicia a sala ou qualquer outra lógica necessária
}



//combate

//if alarm[0] > 0 
//{
//	if image_alpha >= 1
//	{
//		alfa_hit = -0.05;
//	} 
//	else if image_alpha <=0
//	{
//		alfa_hit = 0.05;
//	}
//	
//	image_alpha += alfa_hit;
//}
//else
//{
//	image_alpha =1;
//}


