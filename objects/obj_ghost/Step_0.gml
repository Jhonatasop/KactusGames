// Verificar se o inimigo está morto
if (morto)
{
    sprite_index = spr_ghost_morte;

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

// Definir o raio de audição
var raio_audicao = 200; // Distância máxima para ouvir o som (ajuste conforme necessário)
var falloff_ref = 50;   // Distância para começar a diminuir o volume
var falloff_factor = 1; // Intensidade da queda do som

// Reprodução do som "ghostbreath" enquanto vivo e o jogador estiver próximo
if (!morto && global.efeitos_habilitados)
{
    var distancia_para_jogador = point_distance(x, y, obj_player.x, obj_player.y);

    if (distancia_para_jogador <= raio_audicao) // Se o jogador estiver dentro do raio
    {
        if (timer_som <= 0)
        {
            // Toca o som ajustado com base na distância
            audio_play_sound_at(ghostbreath, x, y, 0, falloff_ref, raio_audicao, falloff_factor, false, 1);
            timer_som = room_speed * 4; // Intervalo de 4 segundos (ajuste conforme necessário)
        }
        else
        {
            timer_som--; // Decrementa o temporizador
        }
    }
}


// Checar se está no chão
var _chao = place_meeting(x, y + 1, obj_chao);

if (_chao)
{
    tempo_decidir_andar -= 1;

    // Decisão de movimento
    if (tempo_decidir_andar <= 0)
    {
        andando = choose(true, false);

        // Escolhendo direção
        if (andando)
        {
            velh = choose(vel, -vel);
        }
        else
        {
            velh = 0;
        }

        // Resetar o tempo
        tempo_decidir_andar = room_speed * 2;
    }

    // Controlar a animação do inimigo
    if (velh != 0 && !dano)
    {	
        sprite_index = spr_ghost_idle;
        image_xscale = sign(velh);
    }
    else
    {
        sprite_index = spr_ghost_idle;
    }

    // Mudar de direção se colidir com uma parede
    if (place_meeting(x + velh, y, obj_chao))
    {
        velh *= -1;
    }

    // Prevenir quedas se não puder cair
    if (!pode_cair)
    {
        if (!place_meeting(x + (velh * 20), y + 1, obj_chao))
        {
            velh *= -1;
        }
    }
}
else
{
    // Aplicar gravidade se não estiver no chão
    velv += grav;

    if (velh != 0)
    {
        image_xscale = sign(velh);
    }
}

// Checar se está tomando dano
if (dano && !morto)
{
    sprite_index = spr_ghost_dano;


    if (vida > 0 && inv_timer <= 0) // Se não estiver invencível
    {
		velh = 0;
        vida -= 1;
        dano = false;

        // Ativar invencibilidade temporária
        inv_timer = tempo_dano;

        // Verificar se a vida chegou a 0
        if (vida <= 0)
        {
            morto = true;
            velh = 0;  // Parar movimento horizontal
            if (global.efeitos_habilitados)
            {
                audio_play_sound(ghost, 1, false);
            }
        }
    }
}

// Temporizador de dano e invencibilidade
if (inv_timer > 0)
{
    inv_timer--;
    image_alpha = 0.7; // Transparência durante invencibilidade
}
else
{
    image_alpha = 1; // Restaura a opacidade
}

// Temporizador para o sopro
if (!morto && tempo_sopro <= 0)
{
    // Criar o sopro
    var direcao_sopro = point_direction(x, y, obj_player.x, obj_player.y);
    var sopro = instance_create_layer(x, y, "inimigos", obj_ghost_sopro);
    sopro.direction = direcao_sopro;  // Direção em direção ao jogador
    sopro.image_angle = direcao_sopro;  // Ajustar o ângulo da sprite

    // Resetar o temporizador
    tempo_sopro = room_speed * 3;  // Resetar para 3 segundos
}
else
{
    tempo_sopro--;  // Reduzir o temporizador
}