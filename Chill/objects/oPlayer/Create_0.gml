
enum Direction {
	N,
	NE,
	E,
	SE,
	S,
	SW,
	W,
	NW
}

sp = 30; // speed in pixels per second
legs = instance_create_depth(x,y,depth,oPlayerLegs); // legs of the player
facing = Direction.N; // direction facing
is_moving = false;
sprite_data = 0x20;
height = 16;
width = 16;
degree_towards_mouse= 0; // degree angle (from +x) toward mouse
weapon = instance_create_depth(x,y,depth, oCannon);