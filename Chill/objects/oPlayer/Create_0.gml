
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

x=30;
y=60;
sp = 30; // speed in pixels per second
legs = instance_create_depth(x,y,depth,oPlayerLegs);
facing = Direction.N;
is_moving = false;
sprite_data = 0x20;
height = 16;
width = 16;
face_towards_mouse= 0;
//instance_activate_object(legs);