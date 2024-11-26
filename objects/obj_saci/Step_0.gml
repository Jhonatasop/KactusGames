// Verificar se o boss está morto
if (morto)
{
    sprite_index = spr_saci_dead;
    
    // Sumir gradualmente após a animação
    if (image_speed <= 0)
    {
        image_alpha -= 0.01;
    }
    // Se sumiu totalmente, destruir instância
    if (image_alpha <= 0)
    {
        instance_destroy();
    }
    exit;
}

// Checar se está no chão
var _chao = place_meeting(x, y + 1, obj_chao);

if (_chao)
{
    tempo_decidir_andar -= 0.5;
    tempo_pular -= 0.5;

    if (tempo_decidir_andar <= 0)
    {
        andando = choose(true, false);
	
        if (andando)
        {
            velh = choose(vel, -vel);
        }

        tempo_decidir_andar = room_speed * 1;
    }

    if (tempo_pular <= 0)
    {
        velv = forca_pulo;
        pode_pular = false;
        tempo_pular = room_speed * 2;
    }

    if (velh != 0 && dano == false)
    {
        sprite_index = spr_saci_run;
        image_xscale = sign(velh);
    }

    if (place_meeting(x + velh, y, obj_chao))
    {
        velh *= -1;
    }

    if (pode_cair == false)
    {
        if (place_meeting(x + (velh * 10), y + 1, obj_chao) == false)
        {
            velh *= -1;
        }
    }
}
else
{
    velv += grav;

    if (velh != 0)
    {
        image_xscale = sign(velh);
    }
}

// Temporizador para lançar o poder a cada 3 segundos
if (timer_poder <= 0 && morto == false)
{
    // Calcular a direção para o jogador
    var direcao_para_jogador = point_direction(x, y, obj_player.x, obj_player.y);

    // Criar o poder quando o tempo expirar
    var poder = instance_create_layer(x, y, "inimigos", obj_poder_saci);
    poder.direction = direcao_para_jogador;  // Direção para o jogador
    poder.speed = 2;  // Velocidade mais lenta do poder

    // Alinhar a imagem com a direção calculada
    poder.image_angle = poder.direction;  // Alinha a imagem com a direção

    // Resetando o temporizador para 3 segundos
    timer_poder = 3 * room_speed;  // 3 segundos
}
else
{
    timer_poder--; // Decrementa o temporizador
}


// Verificar se está tomando dano
if (dano && morto == false)
{
    // Aplicar lógica de dano
    sprite_index = spr_saci_dano;

    if (vida > 0 && inv_timer <= 0)  // Verifica se está invencível
    {
        vida -= 1;
        dano = false;  // Resetando o estado de dano
        
        // Ativar invencibilidade temporária
        timer_dano = tempo_dano;
        inv_timer = inv_tempo;  // Resetando o timer de invencibilidade

        // Checar se vida chegou a 0
        if (vida <= 0)
        {
            boss_derrotado = true;
            morto = true;
            velh = 0;  // Parar movimento horizontal
			if (global.efeitos_habilitados = true){
				audio_play_sound(saci_morte,1,false)
			}
        }
    }
}

// Temporizador de dano e invencibilidade
if (timer_dano > 0)
{
    timer_dano--;
}
else
{
    dano = false;  // Garantir que o estado de dano é resetado após o tempo
}

if (inv_timer > 0)
{
    inv_timer--;
    image_alpha = 0.7; // Efeito de transparência durante invencibilidade
}
else
{
    image_alpha = 1;  // Restabelece a transparência após invencibilidade
}

// Lógica para fazer o Saci rir aleatoriamente

if (!morto)
{
    // Checa se o som atual terminou e o timer de risada expirou
    if (timer_risada <= 0 && global.efeitos_habilitados = true)
    {
        // Escolhe aleatoriamente uma das risadas
        var risada = choose(risada1, risada2, risada3, risada4, risada5, risada6, risada7, risada8, risada9);
        if (!audio_is_playing(risada)){
	        // Toca o som escolhido
	        audio_play_sound(risada, 1, false);
        
	        // Resetando o temporizador para o próximo intervalo de risada
	        timer_risada = room_speed * 5;  // Intervalo de 5 segundos entre risadas (ajuste conforme necessário)
		}
	}
    else
    {
        // Decrementa o temporizador de risada
        timer_risada--;
    }
}

