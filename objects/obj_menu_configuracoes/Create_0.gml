opcoes = [
    "Música: " + (global.musica_habilitada ? "Ligada" : "Desligada"),
    "Efeitos Sonoros: " + (global.efeitos_habilitados ? "Ligados" : "Desligados"),
    "Voltar"
];
index = 0;
op_max = array_length(opcoes);
audio_group_load(audio_group_music); // Certifique-se de carregar o grupo
audio_group_load(audio_group_sound);
