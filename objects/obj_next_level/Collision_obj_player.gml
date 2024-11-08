/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
global.token_por_fase[global.fase_atual - 1] = global.token_na_fase_atual;

global.token_na_fase_atual = 0;

global.fase_atual += 1;

room_goto(rm_level_02);
