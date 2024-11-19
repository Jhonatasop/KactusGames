/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
var _sprl = sprite_get_width(spr_vida) *2;
var _buffer = 20;
var _vidas = obj_player.vida;

for (var i = 0; i < _vidas; i++;)
{
	draw_sprite_ext(spr_vida, 0, 20 + (_sprl + i) + (_buffer *i), 20, 2, 2, 0, c_white, 1);
}