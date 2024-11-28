// Após o tempo especificado, começa a transição
if (alarm[0] == 0) {
    mostrar_logo = false; // A logo desaparece
    instance_create_layer(0, 0, "Background", obj_transicao); // Cria o objeto de transição (obj_transicao)
    instance_destroy(); // Destrói o objeto logo após iniciar a transição
	

	audio_play_sound(Menu_Choice, 0, false);
		    
}