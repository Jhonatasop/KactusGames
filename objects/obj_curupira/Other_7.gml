/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (morto)
{
    // Verifica se o boss morreu e a animação de morte terminou
    image_alpha -= 0.01; // Continua sumindo
    if (image_alpha <= 0)
    {
        instance_destroy(); // Só destrói se estiver completamente invisível
    }
}
else if (sprite_index == spr_curupira_dano)
{
    // Resetar a animação para o estado padrão após o dano
    sprite_index = spr_curupira; 
    dano = false; // Volta para o estado normal
}
