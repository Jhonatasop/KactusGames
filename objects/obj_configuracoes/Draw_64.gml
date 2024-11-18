/// Exibe o menu de configurações
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);

var x1= display_get_width() / 2;
var y1= display_get_height() / 2;

draw_text(x, y - 50, "Configurações");
draw_text(x, y, "Música: " + (global.musica_habilitada ? "Ligada" : "Desligada"));
draw_text(x, y + 50, "Efeitos Sonoros: " + (global.efeitos_habilitados ? "Ligados" : "Desligados"));
draw_text(x, y + 150, "Use as setas para navegar e Enter para alternar");
