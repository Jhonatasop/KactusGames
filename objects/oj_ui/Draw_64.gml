/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
draw_sprite(spr_token,0,15,30);

draw_set_halign(fa_center);
draw_set_valign(fa_center);

draw_set_font(fnt_ui)
draw_text(30,24, string(global.token))
draw_set_halign(-1);
draw_set_valign(-1);

draw_set_font(-1)