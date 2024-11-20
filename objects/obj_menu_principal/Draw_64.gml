// Desenhe a logo do jogo no centro da tela
// Feather disable GM1020
//draw_sprite(spr_logo, 0, display_get_width()/2, display_get_height()/4);


draw_set_font(fnt_menu);

var dist = 55;

var gui_largura = display_get_gui_width();
var gui_altura = display_get_gui_height();
var x1 = gui_largura/2;
var y1 = gui_altura/2;

for(var i = 0;i<op_max;i++)
{
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	if(index==i){
		esc =1.2;
		draw_set_color(c_yellow);
	}else{
		esc = 1;
		draw_set_color(c_white)
	}
	
	
	draw_text_transformed(x1,y1 + (dist * i),opcoes[i], esc, esc, 0);
}


draw_set_halign(-1);
draw_set_valign(-1);
draw_set_font(-1);