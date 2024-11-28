switch (room) {
	case rm_intro:
        audio_group_set_gain(audio_group_music, global.musica_habilitados ? 1 : 0, 0);
        mudar_musica(Menu_Choice);
        break;
	
    case rm_menu_principal:
    case rm_creditos:
    case rm_menu_configuracao:
        audio_group_set_gain(audio_group_menu, global.musica_habilitada ? 1 : 0, 0);
        mudar_musica(Mystery_Forest);
        break;

    case rm_level_01:
        audio_group_set_gain(audio_group_music, global.musica_habilitada ? 1 : 0, 0);
        mudar_musica(Forest_room_1);
        break;

    case rm_level_02:
        mudar_musica(musica_tensao);
        break;

    case rm_level_03:
        mudar_musica(room_3_music_rain);
        break;
	
	 case rm_level_04:
        mudar_musica(musica_tensao);
        break;

    default:
        mudar_musica(noone);
        break;
}
