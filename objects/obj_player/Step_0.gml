/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//controlando o player
var _chao = place_meeting(x, y + 1, obj_chao);


var _left, _right, _jump;
_left = keyboard_check(inputs.left);
_right = keyboard_check(inputs.right);
_jump = keyboard_check_pressed(inputs.jump);


velh = (_right - _left) * vel;


//pulando
if (_chao)
{
	if (_jump)
	{
		velv = -vel_jump;
	}
	
	//se eu estou no chao e me movendo
	if (velh != 0)
	{
		//mudo a sprite
		sprite_index = spr_player_run;
		//faço ele olhar para onde estou indp
		image_xscale = sign(velh);
	}
	else
	{
	sprite_index = spr_player_idle;
	}
}
else //nao to no chao
{
	// mudando a sprite
	if (velv < 0)
	{
	sprite_index = spr_player_jump;
	}
	else
	{
		sprite_index = spr_player_fall;
	}
	// gravidade
	velv	+= grav;
	if (velh != 0)
	{
		image_xscale = sign (velh);
	}
}