/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
draw_sprite(spr_token,0,15,30);

draw_set_halign(fa_center);
draw_set_valign(fa_center);

draw_set_color(c_white)
draw_set_font(fnt_ui)
draw_text(30,24, string(global.token))
draw_set_halign(-1);
draw_set_valign(-1);

draw_set_font(-1)

var largura_vida = 100;
var quantidade = (obj_player.vida / obj_player.vida_max) * largura_vida
var quantidade_fixa = (obj_player.vida_max / obj_player.vida_max) * largura_vida

var x1 = 10;
var y1 = 35;

var x2 = x1 + quantidade;
var x2_fixo = x1 + quantidade_fixa;
var y2 = y1 + 10;

draw_set_color(c_black);
draw_rectangle(x1,y1,x2_fixo,y2, 0);

draw_set_color(make_color_rgb(217, 37, 17));
draw_rectangle(x1,y1,x2,y2, 0);

draw_set_color(c_black);
draw_rectangle(x1,y1,x2_fixo,y2, 1)