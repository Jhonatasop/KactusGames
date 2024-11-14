/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if(global.folhaencantada >= 5)
	{
		global.folhaencatada_por_fase[global.fase_atual - 1] = global.folhaencantada_na_fase_atual;
        global.folhaencantada_na_fase_atual = 0;

        // Avança para a próxima fase
        global.fase_atual += 1;
		room_goto(rm_level_02);
	}
	else
	{
		 if (!folhas_insuf)
        {
            show_message("Você precisa coletar pelo menos 5 folhas encatadas!");
            folhas_insuf = true;  // Marca a mensagem como exibida
        }
	}