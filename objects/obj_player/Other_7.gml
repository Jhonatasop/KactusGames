/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//se estou suando sprite de dano e animação acabou, eu morro
if (vida <= 0)
{
	morto = true;
}
if (sprite_index == spr_player_dead)
{
	image_speed = 0;
	image_index = 3;

}