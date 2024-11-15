// Desenhe a logo do jogo no centro da tela
// Feather disable GM1020
draw_sprite(spr_logo, 0, display_get_width()/2, display_get_height()/4);

// Opções do Menu
draw_text(display_get_width()/2, display_get_height()/2, "Iniciar Jogo");
draw_text(display_get_width()/2, display_get_height()/2 + 50, "Configurações");
draw_text(display_get_width()/2, display_get_height()/2 + 100, "Créditos");
draw_text(display_get_width()/2, display_get_height()/2 + 150, "Sair");

// Verifica cliques
if (mouse_check_button_pressed(mb_left)) {
    var mx = device_mouse_x_to_gui(0);
    var my = device_mouse_y_to_gui(0);
    
    if (point_in_rectangle(mx, my, display_get_width()/2 - 50, display_get_height()/2 - 10, display_get_width()/2 + 50, display_get_height()/2 + 10)) {
        // Iniciar o jogo
        room_goto_next();
    } else if (point_in_rectangle(mx, my, display_get_width()/2 - 50, display_get_height()/2 + 40, display_get_width()/2 + 50, display_get_height()/2 + 60)) {
        // Abrir Configurações
        room_goto(rm_configuracoes);
    } else if (point_in_rectangle(mx, my, display_get_width()/2 - 50, display_get_height()/2 + 90, display_get_width()/2 + 50, display_get_height()/2 + 110)) {
        // Abrir Créditos
        room_goto(rm_creditos);
    } else if (point_in_rectangle(mx, my, display_get_width()/2 - 50, display_get_height()/2 + 140, display_get_width()/2 + 50, display_get_height()/2 + 160)) {
        // Sair do jogo
        game_end();
    }
}
