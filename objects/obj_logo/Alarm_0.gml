// Quando o tempo acabar, inicie a transição
opacidade -= 0.005;  // Diminui a opacidade aos poucos para fazer a logo desaparecer
if (opacidade <= 0) {
    instance_create_layer(0, 0, "Instances", obj_transicao);  // Cria o objeto de transição
    instance_destroy();  // Destrói a logo
}