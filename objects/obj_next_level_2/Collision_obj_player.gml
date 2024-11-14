// Evento de colisão com o jogador (obj_next_level)

var boss_instancia = instance_find(obj_saci, 0);  // Busca pela primeira instância de obj_saci

if (boss_instancia != undefined)  // Verifica se o boss realmente existe
{
    // Verifica se o boss foi derrotado
    if (!instance_exists(obj_saci))
    {
        // Atualiza os tokens de fase
        global.token_por_fase[global.fase_atual - 1] = global.token_na_fase_atual;
        global.token_na_fase_atual = 0;

        // Avança para a próxima fase
        global.fase_atual += 1;

        // Muda para a próxima sala
        room_goto(rm_level_03);
    }
    else
    {
        // Se o boss não foi derrotado, exibe a mensagem
        if (!mensagem_exibida)
        {
            show_message("Você precisa derrotar o boss primeiro!");
            mensagem_exibida = true;  // Marca a mensagem como exibida
        }
    }
}
else
{
    // Se o boss não for encontrado, exibe uma mensagem de erro
    if (!mensagem_exibida)
    {
        show_message("O boss não foi encontrado. Verifique se ele está na cena.");
        mensagem_exibida = true;  // Marca a mensagem como exibida
    }
}
