switch facing {
	case Direction.N:
		sprite_data = 0x19;
		break;
	case Direction.NE:
		sprite_data = 0x18 | tile_mirror;
		//if weapon_R != noone then weapon_R.depth = -1
		break;
	case Direction.E:
		sprite_data = 0x17 | tile_mirror;
		//if weapon_R != noone then weapon_R.depth = -1
		break;
	case Direction.SE:
		sprite_data = 0x16 | tile_mirror;
		//if weapon_R != noone then weapon_R.depth = -1
		break;
	case Direction.S:
		sprite_data = 0x15
		//if weapon_R != noone then weapon_R.depth = 1
		break;
	case Direction.SW:
		sprite_data = 0x16
		//if weapon_R != noone then weapon_R.depth = 1
		break;
	case Direction.W:
		sprite_data = 0x17
		//if weapon_R != noone then weapon_R.depth = 1
		break;
	case Direction.NW:
		sprite_data = 0x18
		break;
}