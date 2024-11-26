/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// inherit the parent event
event_inherited()

// Personalizando variáveis
velh = 0;
velv = 0;

// Aumentar a velocidade e garantir movimento contínuo
vel = choose(2, -2); // Velocidade inicial maior, escolhendo entre positivo e negativo
velh = vel;          // Velocidade horizontal sempre ativa

vida_max = 8;
vida = vida_max;

// Tempo de movimentação ajustado
tempo_decidir_andar = room_speed * 0.5; // Decide direção mais frequentemente
pode_pular = true; 
tempo_pular = room_speed * 0.8;         // Decide pular mais frequentemente
forca_pulo = -10;                       // Força do pulo

// Controle de dano e invencibilidade
dano = false;
tempo_dano = room_speed * 1;
timer_dano = 0;

inv_tempo = room_speed * 2;
inv_timer = 0;

timer_poder = 0;

timer_risada = 2;

boss_derrotado = false;
