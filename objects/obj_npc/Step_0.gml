/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (distance_to_object(obj_player) <= 20)
{
	if (keyboard_check_pressed(vk_enter))
	{
		var dialogo = instance_create_layer(0,0,"player", obj_dialogo);
		for (var i =0; i < array_length(texto);i++)
		{
			array_push(dialogo.texto, texto[i]);
		}
	}
}