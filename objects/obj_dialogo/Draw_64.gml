/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
var _gui_largura = display_get_gui_width();
var _gui_altura = display_get_gui_height();


var _xx = 0;
var _yy = 0;
draw_set_color(c_black);
draw_rectangle(_xx, _yy, _gui_largura, 100, 0);

draw_set_font(fnt_dialogo);
draw_set_color(c_white);

var _texto_atual = string_copy(texto[index], 1, index_letra);

if (index_letra <string_width(texto[index]))
{
	index_letra = index_letra + velocidade;
}
draw_set_halign(fa_center);
draw_text((_gui_largura/2), _yy + 20, _texto_atual);
draw_set_halign(-1);