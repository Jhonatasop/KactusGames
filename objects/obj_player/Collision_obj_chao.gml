/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
 morto = true;
sprite_index = spr_player_dead;
velh = 0; // Parar movimento horizontal
velv = 0; // Parar movimento vertical
alarm[0] = 180; // Configura o alarme para reiniciar ou destruir o objeto
dano = false; // Desativa a possibilidade de tomar dano
if (image_speed <= 0)
	{
		image_alpha -= 0.01;
	}
	if (morto && sprite_index == spr_player_dead && image_index >= image_number - 1)
	{
		image_speed = 0; // Pausar no último quadro da animação
		image_index = image_number - 1; // Garantir que esteja no último quadro
	}