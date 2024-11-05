/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
var _gui_largura = display_get_gui_width();
var _gui_altura = display_get_gui_height();


var _xx = 0;
var _yy = 0;
draw_set_color(c_black);
draw_rectangle(_xx, _yy, _gui_largura, 100, 0);

draw_set_color(c_white);
draw_text(_gui_largura/2, _yy, texto[index])