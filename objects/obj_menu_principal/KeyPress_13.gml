/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if(index == 0){
	room_goto_next();
}
else if (index ==1){
	room_goto(rm_menu_configuracao)
}
else if (index== 2){
	room_goto(rm_creditos);
}
else if (index == 3){
	game_end();
}