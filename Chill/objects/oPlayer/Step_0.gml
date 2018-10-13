// inverse_sqrt_2 is 1/sqrt(2) which we multiply the speed
// by so you move at the same rate diagnaly as if you
// were moving sideways
var inverse_sqrt_2 = 0.7071067812;


is_moving = false;

if input & Input.Action {
	fire_gun(weapon);
}

switch input & Input.Movement {
	case Input.Up:
		y-=sp * delta_t;
		legs.facing = Direction.N;
		is_moving = true;
		break;
	case Input.Down:
		y+=sp * delta_t;
		legs.facing = Direction.S;
		is_moving = true;
		break;
	case Input.Left:
		x-=sp * delta_t;
		legs.facing = Direction.W;
		is_moving = true;
		break;
	case Input.Right:
		x+=sp * delta_t;
		legs.facing = Direction.E;
		is_moving = true;
		break;

	case Input.Up | Input.Right:
		y-=sp * delta_t * inverse_sqrt_2;
		x+=sp * delta_t * inverse_sqrt_2;
		legs.facing = Direction.NE;
		is_moving = true;
		break;
	case Input.Up | Input.Left:
		y-=sp * delta_t * inverse_sqrt_2;
		x-=sp * delta_t * inverse_sqrt_2;
		legs.facing = Direction.NW;
		is_moving = true;
		break;
	case Input.Down | Input.Right:
		y+=sp * delta_t * inverse_sqrt_2;
		x+=sp * delta_t * inverse_sqrt_2;
		legs.facing = Direction.SE;
		is_moving = true;
		break;
	case Input.Down | Input.Left:
		y+=sp * delta_t * inverse_sqrt_2;
		x-=sp * delta_t * inverse_sqrt_2;
		legs.facing = Direction.SW;
		is_moving = true;
		break;
}


degree_towards_mouse = darctan2((y+.5*height)-mouse_y, mouse_x-(x+.5*width));


if degree_towards_mouse < 22 and degree_towards_mouse >= -22
	facing = Direction.E;
else if degree_towards_mouse < -22 and degree_towards_mouse >= -67
	facing = Direction.SE;
else if degree_towards_mouse < -67 and degree_towards_mouse >= -112 
	facing = Direction.S;
else if degree_towards_mouse < -112 and degree_towards_mouse >= -157
	facing = Direction.SW;
else if degree_towards_mouse < -157 and degree_towards_mouse >= -180
	facing = Direction.W;

if degree_towards_mouse < 67 and degree_towards_mouse >= 22
	facing = Direction.NE;
else if degree_towards_mouse < 112 and degree_towards_mouse >= 67
	facing = Direction.N;
else if degree_towards_mouse < 157 and degree_towards_mouse >= 112
	facing = Direction.NW;
else if degree_towards_mouse <= 180 and degree_towards_mouse >= 157
	facing = Direction.W;


legs.x = x;
legs.y = y;
weapon.x = x;
weapon.y = y;
weapon.degree_towards_target = degree_towards_mouse;

legs.is_moving = is_moving;



