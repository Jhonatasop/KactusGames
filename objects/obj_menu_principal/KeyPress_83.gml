/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
index++;
if(index > op_max -1){
	index = 0;
}
var som = audio_play_sound(Menu_Selection_Click, 0, false);
audio_sound_gain(som,0.5, 0); 