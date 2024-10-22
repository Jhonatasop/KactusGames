// Definindo a velocidade
var player_speed = 4; // Use um nome que não conflite

// Movimentação horizontal
if (keyboard_check(vk_right)) {
    x += player_speed;
}
if (keyboard_check(vk_left)) {
    x -= player_speed;
}

// Movimentação vertical
if (keyboard_check(vk_up)) {
    y -= player_speed;
}
if (keyboard_check(vk_down)) {
    y += player_speed;
}
