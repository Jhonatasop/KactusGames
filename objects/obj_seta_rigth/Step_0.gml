/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Obtenha a posição atual da câmera
var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);

if (object_index == obj_seta_rigth) {
    x = cam_x + 212;         // 500 pixels a partir da borda esquerda da câmera
    y = cam_y + 320;         // 400 pixels a partir da parte superior da câmera
}

