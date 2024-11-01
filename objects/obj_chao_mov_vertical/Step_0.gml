/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
vspd = move_dir * move_spd;

if (place_meeting(x,y+sign(vspd), obj_chao))
{
	move_dir*=-1;
}

var c = place_meeting(x, y + 1, obj_player) or place_meeting(x,y-1, obj_player);

if(c)
{
	with(obj_player){
		y +=vspd;
	}
}

y+=vspd;
