/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Configurar a direção e velocidade
speed = 4;             // Velocidade do projétil
direction = random(360); // Direção inicial aleatória (ajuste se necessário)
image_angle = direction;

// Tempo de existência
alarm[0] = room_speed * 3; // Duração do projétil (3 segundos)

tempo_som = 2;