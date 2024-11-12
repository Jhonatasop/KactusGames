/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// inherit the parent event
event_inherited()

//personalizando variaveis
// ele vai decidir se ele pode amdar para a direita ou esquerda
velh	= 5;
velv	= 0;
vel		= 5;
grav	= .3;

vel = choose(1, -1);

andando = choose(true, false);

vida_max = 5;
vida = vida_max;

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

tempo_decidir_andar = room_speed * 1

// No evento Create
pode_pular = true; // Indica se o boss pode pular
tempo_pular = room_speed * 2; // Tempo até decidir pular
forca_pulo = -10; // Força do pulo

// No evento Create do boss
boss_derrotado = false; // Marca se o boss foi derrotado
