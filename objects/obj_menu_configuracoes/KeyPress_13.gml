if (index == 0) {
    global.musica_habilitada = !global.musica_habilitada;

    // Controla o volume de música dos menus
    audio_group_set_gain(audio_group_menu, global.musica_habilitada ? 1 : 0, 0);

    // Controla o volume de música das fases
    audio_group_set_gain(audio_group_music, global.musica_habilitada ? 1 : 0, 0);

    opcoes[0] = "Música: " + (global.musica_habilitada ? "Ligada" : "Desligada");
}

else if (index == 1) {
    global.efeitos_habilitados = !global.efeitos_habilitados;
    audio_group_set_gain(audio_group_sound, global.efeitos_habilitados ? 1 : 0, 0);
    opcoes[1] = "Efeitos Sonoros: " + (global.efeitos_habilitados ? "Ligados" : "Desligados");
}
else if (index == 2) {
    room_goto(rm_menu_principal);
}
