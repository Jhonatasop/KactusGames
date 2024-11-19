/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// inherit the parent event
event_inherited()

//personalizando variaveis
// ele vai decidir se ele pode amdar para a direita ou esquerda
som_tocado = false;
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