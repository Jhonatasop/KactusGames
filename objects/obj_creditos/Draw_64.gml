// Desenhe a logo do jogo no centro da tela
// Feather disable GM1020
//draw_sprite(spr_logo, 0, display_get_width() / 2, display_get_height() / 4);

draw_set_font(fnt_menu);

var dist = 55; // Distância entre os itens
var gui_largura = display_get_gui_width();
var gui_altura = display_get_gui_height();

// Coordenadas centrais horizontais
var x1 = gui_largura / 2;

// Coordenada inicial vertical (no topo, ajustado com base no número de itens)
var y1 = gui_altura / 2 - ((op_max - 1) * dist) / 2;

for (var i = 0; i < op_max; i++) {
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);

    // Desenha os textos começando do topo ajustado
    draw_text(x1, y1 + (dist * i), descricao[i]);
	draw_set_color(c_yellow)
	draw_text(x1, y1 + (dist * (op_max + 2)), "Voltar");
	draw_set_color(c_white)
}

draw_set_font(-1);
