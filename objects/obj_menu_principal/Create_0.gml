/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
opcoes=["novo jogo", "configuraçoes", "creditos", "sair"]
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

