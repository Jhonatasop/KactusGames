draw_text(display_get_width()/2, display_get_height()/2 - 50, "Configurações");

// Opções de Música e Efeitos Sonoros
draw_text(display_get_width()/2, display_get_height()/2, "Música: " + (global.musica_ativa ? "Ligada" : "Desligada"));
draw_text(display_get_width()/2, display_get_height()/2 + 50, "Efeitos Sonoros: " + (global.efeitos_sonoros ? "Ligados" : "Desligados"));

// Detecta cliques para alterar configurações
if (mouse_check_button_pressed(mb_left)) {
    var mx = device_mouse_x_to_gui(0);
    var my = device_mouse_y_to_gui(0);
    
    if (point_in_rectangle(mx, my, display_get_width()/2 - 50, display_get_height()/2 - 10, display_get_width()/2 + 50, display_get_height()/2 + 10)) {
        // Alternar música
        global.musica_ativa = !global.musica_ativa;
    } else if (point_in_rectangle(mx, my, display_get_width()/2 - 50, display_get_height()/2 + 40, display_get_width()/2 + 50, display_get_height()/2 + 60)) {
        // Alternar efeitos sonoros
        global.efeitos_sonoros = !global.efeitos_sonoros;
    }
}
