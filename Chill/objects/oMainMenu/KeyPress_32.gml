
switch selected{
	case 0:
		game_end();
		break;
	case 1:
		show_instrucitons = !show_instrucitons
		scroll = !scroll;
		break;
	case 2:
		room_goto(1);
		break;
}