/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
/// Draw Event

// Desenha o sprite do boss
draw_self();

// Calcula a posição da barra de vida
var barra_largura = 50; // Largura da barra
var barra_altura = 6; // Altura da barra
var barra_x = x - barra_largura / 2; // Centralizar a barra horizontalmente
var barra_y = y - sprite_height - 10; // Posicionar acima do boss

// Calcula o tamanho da barra de vida baseada na vida atual
var vida_atual_largura = (vida / vida_max) * barra_largura;

// Desenha o fundo da barra (cinza)
draw_set_color(c_gray);
draw_rectangle(barra_x, barra_y, barra_x + barra_largura, barra_y + barra_altura, false);

// Desenha a barra de vida (verde/vermelho dependendo da porcentagem)
if (vida / vida_max > 0.5)
{
    draw_set_color(c_red); // Verde se acima de 50%
}
else
{
    draw_set_color(c_red); // Vermelho se abaixo de 50%
}
draw_rectangle(barra_x, barra_y, barra_x + vida_atual_largura, barra_y + barra_altura, false);

// Restaura a cor padrão
draw_set_color(c_white);

draw_set_color(c_white)
draw_set_font(fnt_ui)
draw_text(30,24, string(vida))
draw_set_halign(-1);
draw_set_valign(-1);

draw_set_font(-1)
