// Desenha um retângulo preto cobrindo a tela com a opacidade
draw_set_alpha(alpha); 
draw_rectangle(0, 0, room_width, room_height, false); 
draw_set_alpha(1);  // Restaura a opacidade após o desenho