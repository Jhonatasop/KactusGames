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
			npc_falando = true;
			sprite_index = spr_npc;
			if (global.efeitos_habilitados = true) {
				    audio_play_sound(old_man_cough, 1, false); // Toca a música em loop
			}
			
			
		}
	}
} else if (distance_to_object(obj_player) > 20){
	npc_falando = false;
	sprite_index = spr_npc_idle;
}