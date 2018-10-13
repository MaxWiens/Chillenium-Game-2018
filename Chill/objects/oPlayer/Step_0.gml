
if keyboard_check(87) { // W is pressed
	y-=sp * delta_t;
	legs.facing = Direction.N;
	is_moving = true;
} 
if keyboard_check(65) { // A is pressed
	x-=sp * delta_t;
	legs.facing = Direction.W;
	is_moving = true;
}
if keyboard_check(83) { // S is pressed
	y+=sp * delta_t;
	legs.facing = Direction.S;
	is_moving = true;
}
if keyboard_check(68) { // D is pressed
	x+=sp * delta_t;
	legs.facing = Direction.E;
	is_moving = true;
}


face_towards_mouse = darctan2((y+.5*height)-mouse_y, mouse_x-(x+.5*width));


if face_towards_mouse < 22 and face_towards_mouse >= -22
	facing = Direction.E;
else if face_towards_mouse < -22 and face_towards_mouse >= -67
	facing = Direction.SE;
else if face_towards_mouse < -67 and face_towards_mouse >= -112 
	facing = Direction.S;
else if face_towards_mouse < -112 and face_towards_mouse >= -157
	facing = Direction.SW;
else if face_towards_mouse < -157 and face_towards_mouse >= -180
	facing = Direction.W;

if face_towards_mouse < 67 and face_towards_mouse >= 22
	facing = Direction.NE;
else if face_towards_mouse < 112 and face_towards_mouse >= 67
	facing = Direction.N;
else if face_towards_mouse < 157 and face_towards_mouse >= 112
	facing = Direction.NW;
else if face_towards_mouse < 180 and face_towards_mouse >= 157
	facing = Direction.W;


legs.x = x;
legs.y = y;
legs.is_moving = is_moving;



