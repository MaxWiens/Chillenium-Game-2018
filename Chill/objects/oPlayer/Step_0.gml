
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

legs.x = x;
legs.y = y;
legs.is_moving = is_moving;