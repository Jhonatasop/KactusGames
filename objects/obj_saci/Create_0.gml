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

vida = 5;

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