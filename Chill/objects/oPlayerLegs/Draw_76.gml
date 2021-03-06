/// @description Insert description here
// You can write your code in this editor
if is_moving {
	animation_handler.animate = true;
	switch facing {
		case Direction.N:
			sprite_data = 0x30;
			break;
		case Direction.NW:
			sprite_data = 0x40;
			break;
		case Direction.W:
			sprite_data = 0x50;
			break;
		case Direction.SW:
			sprite_data = 0x60;
			break;
		case Direction.S:
			sprite_data = 0x70;
			break;
		case Direction.NE:
			sprite_data = 0x40 | tile_mirror;
			break;
		case Direction.E:
			sprite_data = 0x50 | tile_mirror;
			break;
		case Direction.SE:
			sprite_data = 0x60 | tile_mirror;
			break;
	}
	
}else{
	animation_handler.animate = false;
	switch facing {
		case Direction.N:
			sprite_data = 0x10
			break;
		case Direction.NE:
			sprite_data = 0x13 | tile_mirror;
			break;
		case Direction.E:
			sprite_data = 0x12 | tile_mirror;
			break;
		case Direction.SE:
			sprite_data = 0x11 | tile_mirror;
			break;
		case Direction.S:
			sprite_data = 0x14
			break;
		case Direction.SW:
			sprite_data = 0x13
			break;
		case Direction.W:
			sprite_data = 0x12
			break;
		case Direction.NW:
			sprite_data = 0x11
			break;
	}
}

