 if (vida > 0)
        {
            dano = true;

            // Valor do timer de dano
            timer_dano = tempo_dano;
            inv_timer = inv_tempo;
            vida -= 6; // Diminui a vida em 1
			

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