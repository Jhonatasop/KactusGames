/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
//movimentação
velh		= 0;
velv		= 0;
vel			= 3;
grav		= .3;
vel_jump	= 7;
morto		= false;

//combate
dano		= false;
tempo_dano	= room_speed * 1;
timer_dano	= 0;

inv_tempo	= room_speed * 2;
inv_timer	= 0;

vida_max = 5;
vida		 = vida_max;



inputs = {
	left	: ord("A"),
	right	: ord("D"),
	jump	: vk_space
}

/// Evento Create
tempo_ultimo_som = 0; // Momento do último som tocado
intervalo_som = 0.5; // Intervalo mínimo entre os sons em segundos (0.5s neste caso)

/// Evento Create
som_pode_tocar = true; // Controla se o som pode ser tocado
