/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (keyboard_check_pressed(vk_enter)){
	if(index == 0){
		room_goto_next();
	}
	else if (index ==1){
		room_goto(rm_menu_configuracao)
	}
	else if (index== 2){
		room_goto(rm_instrucao);
	}
	else if (index== 3){
		room_goto(rm_creditos);
	}
	else if (index == 4){
		game_end();
	}
	var som = audio_play_sound(menu_tick, 0, false);
	audio_sound_gain(som,0.5, 0); 
}