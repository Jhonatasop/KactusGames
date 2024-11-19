/// @param nova_musica
var nova_musica = argument0;

if (!variable_global_exists("musica_atual")) {
    global.musica_atual = noone;
}

if (global.musica_atual != nova_musica) {
    if (global.musica_atual != noone) {
        audio_stop_sound(global.musica_atual);
    }

    // Certifique-se de que o som pertence a um grupo correto
    if (nova_musica != noone && audio_exists(nova_musica)) {
        audio_play_sound(nova_musica, 1, true);
    }

    global.musica_atual = nova_musica;
}
