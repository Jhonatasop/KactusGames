/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Movimento padrão
x += lengthdir_x(speed, direction);
y += lengthdir_y(speed, direction);
//if (global.efeitos_habilitados){
//	audio_play_sound(snd_power, 1, false);
//}

// Destruir ao sair da room
if (x < 0 || x > room_width || y < 0 || y > room_height)
{
    instance_destroy(); // Destruir o poder se estiver fora da room
}
if (tempo_som <= 0 && global.efeitos_habilitados = true)
    {
        // Escolhe aleatoriamente uma das risadas
        var som_furacao = choose(som_poder_curupira);
        if (!audio_is_playing(som_furacao)){
	        // Toca o som escolhido
	        audio_play_sound(som_furacao, 1, false);
			audio_sound_gain(som_furacao,0.8, 0);  
        
	        // Resetando o temporizador para o próximo intervalo de risada
	        tempo_som = room_speed * 5;  // Intervalo de 5 segundos entre risadas (ajuste conforme necessário)
		}
	}
    else
    {
        // Decrementa o temporizador de risada
        tempo_som--;
    }

