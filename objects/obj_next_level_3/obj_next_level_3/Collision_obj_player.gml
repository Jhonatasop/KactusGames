/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if(global.flame >= 5)
	{
		global.flame_por_fase[global.fase_atual - 1] = global.flame_na_fase_atual;
        global.flame_na_fase_atual = 0;

        // Avança para a próxima fase
        global.fase_atual += 1;
		room_goto(rm_level_02);
	}
	else
	{
		 if (!flame_insuf)
        {
            show_message("Você precisa coletar pelo menos 5 folhas encatadas!");
            flame_insuf = true;  // Marca a mensagem como exibida
        }
	}