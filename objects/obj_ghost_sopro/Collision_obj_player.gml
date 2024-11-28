if (other.object_index == obj_player)
{
    other.dano = true;        // Marca o jogador como atingido
    other.timer_dano = room_speed * 1; // Temporizador de dano do jogador
    instance_destroy();       // Destroi o projétil
}
