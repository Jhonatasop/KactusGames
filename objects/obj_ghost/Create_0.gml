/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// inherit the parent event
event_inherited()

//personalizando variaveis
// ele vai decidir se ele pode amdar para a direita ou esquerda
vel = choose(1, -1);

andando = choose(true, false);

if (andando)
{
	if (andando)
		{
			velh = choose (vel, -vel);
		}
		else
		{
			velh = 0;
		}
}

tempo_decidir_andar = room_speed * 3

dano = false;
inv_timer = 0;
tempo_dano = room_speed * 1.5;
timer_poder = 0;
timer_som = room_speed * 0.4;

vida_max = 2;
vida = vida_max;

// Temporizador do sopro
tempo_sopro = room_speed * 3;  // Intervalo entre sopros (3 segundos)