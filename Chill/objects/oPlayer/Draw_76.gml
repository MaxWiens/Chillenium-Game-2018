
switch facing {
	case Direction.N:
		sprite_data = 0x24;
		break;
	case Direction.NE:
		sprite_data = 0x23 | tile_mirror;
		break;
	case Direction.E:
		sprite_data = 0x22 | tile_mirror;
		break;
	case Direction.SE:
		sprite_data = 0x21 | tile_mirror;
		break;
	case Direction.S:
		sprite_data = 0x20
		break;
	case Direction.SW:
		sprite_data = 0x21
		break;
	case Direction.W:
		sprite_data = 0x22
		break;
	case Direction.NW:
		sprite_data = 0x23
		break;
}