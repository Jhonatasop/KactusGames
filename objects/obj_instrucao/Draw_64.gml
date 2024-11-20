// Configurar fonte para o texto
draw_set_font(fnt_menu);

// Obter dimensões da interface gráfica
var gui_largura = display_get_gui_width();
var gui_altura = display_get_gui_height();

// Coordenadas centrais horizontais
var x1 = gui_largura / 2;

// Coordenada vertical para a parte inferior da tela (ajustando com margem)
var y1 = gui_altura - 75; // 50px de margem inferior, ajuste conforme necessário

// Ajustar alinhamento
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Definir cor do texto
draw_set_color(c_yellow);

// Desenhar o único texto de descrição
draw_text(x1, y1, descricao[0]);

// Restaurar configurações padrão (se necessário)
draw_set_font(-1);
