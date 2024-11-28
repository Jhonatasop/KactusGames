// Ajusta a opacidade conforme o valor da variável opacidade
draw_set_alpha(opacidade);  

// Calcula as coordenadas do centro da room
var center_x = room_width / 2;
var center_y = room_height / 2;

// Desenha a logo no centro da room
draw_sprite(spr_logo, 0, center_x - sprite_width / 2, center_y - sprite_height / 2);

// Restaura a opacidade para evitar efeitos em outros elementos
draw_set_alpha(1);
