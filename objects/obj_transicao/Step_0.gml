// Fade-in: A tela fica preta, aumentando a opacidade
var som = audio_play_sound(Menu_Choice, 0, false);
audio_sound_gain(som,1, 0); 

if (fade_in) {
    alpha -= 5; // Aumenta a opacidade (mais rápido se aumentar o valor)
    if (alpha >= 1) {
        alpha = 1;
        fade_in = false;  // Desativa o fade-in
    }
}

// Fade-out: A tela vai clareando
if (fade_out) {
    alpha += 5; // Diminui a opacidade
    if (alpha <= 0) {
        alpha = 0;
        room_goto(rm_menu_principal); // Vai para a room do menu
    }
}