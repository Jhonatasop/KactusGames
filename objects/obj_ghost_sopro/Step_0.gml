// Movimento contínuo
x += lengthdir_x(speed, direction);
y += lengthdir_y(speed, direction);

// Destruir após tempo definido
tempo_vida--;
if (tempo_vida <= 0)
{
    instance_destroy();
}

// Detectar colisão com o jogador
if (place_meeting(x, y, obj_player))
{
    with (obj_player)
    {
        // Aplicar dano ao jogador
        vida -= other.dano;
    }
    instance_destroy();  // Destruir o sopro após atingir o jogador
}