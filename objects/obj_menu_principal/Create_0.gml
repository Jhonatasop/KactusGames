/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
opcoes=["Novo jogo", "Configurações","Instruções", "Créditos", "Sair"]
index = 0;
op_max = array_length(opcoes);
esc =1;

// Certifique-se de que o grupo de música está carregado
audio_group_load(audio_group_music);
audio_group_load(audio_group_menu);
audio_group_load(audio_group_sound);

// Configura a música habilitada por padrão
if (global.musica_habilitada = true) {
    audio_play_sound(Mystery_Forest, 1, true); // Toca a música em loop
}


// Criação do sistema de partículas
particle_system = part_system_create();
part_system_depth(particle_system, -100); // Profundidade para as partículas

// Tipo de partícula
particle_type = part_type_create();
part_type_shape(particle_type, pt_shape_pixel); // Formato da partícula
part_type_size(particle_type, 1, 2, 0, 0); // Tamanho da partícula
part_type_color1(particle_type, c_white); // Cor da partícula
part_type_alpha3(particle_type, 0, 1, 0); // Transparência da partícula
part_type_speed(particle_type, 0.5, 1, 0, 0); // Velocidade da partícula
part_type_direction(particle_type, 0, 360, 0, 0); // Direção aleatória
part_type_life(particle_type, 60, 120); // Tempo de vida da partícula

// Emissor de partículas
particle_emitter = part_emitter_create(particle_system);
part_emitter_region(particle_system, particle_emitter, 0, room_width, 0, room_height, ps_shape_rectangle, ps_distr_linear);

// Variáveis para o efeito de piscar
pisca_visivel = true; // Visibilidade do texto
pisca_timer = 0; // Temporizador para o efeito
pisca_intervalo = 10; // Intervalo entre piscar
