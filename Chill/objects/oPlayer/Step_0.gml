// inverse_sqrt_2 is 1/sqrt(2) which we multiply the speed
// by so you move at the same rate diagnaly as if you
// were moving sideways


var inverse_sqrt_2 = 0.7071067812;

is_moving = false;

if (input & Input.Action) && (weapon_R != noone){
	fire_gun(weapon_R);
}
if (input & Input.Action2) && (weapon_L != noone){
	fire_gun(weapon_L);
}

var vy = 0;
var vx = 0;

switch input & Input.Movement {
	case Input.Up:
		vy = -sp * delta_t;
		legs.facing = Direction.N;
		is_moving = true;
		break;
	case Input.Down:
		vy = sp * delta_t;
		legs.facing = Direction.S;
		is_moving = true;
		break;
	case Input.Left:
		vx = -sp * delta_t;
		legs.facing = Direction.W;
		is_moving = true;
		break;
	case Input.Right:
		vx = sp * delta_t;
		legs.facing = Direction.E;
		is_moving = true;
		break;

	case Input.Up | Input.Right:
		vy = -sp * delta_t * inverse_sqrt_2;
		vx = sp * delta_t * inverse_sqrt_2;
		legs.facing = Direction.NE;
		is_moving = true;
		break;
	case Input.Up | Input.Left:
		vy = -sp * delta_t * inverse_sqrt_2;
		vx = -sp * delta_t * inverse_sqrt_2;
		legs.facing = Direction.NW;
		is_moving = true;
		break;
	case Input.Down | Input.Right:
		vy =sp * delta_t * inverse_sqrt_2;
		vx =sp * delta_t * inverse_sqrt_2;
		legs.facing = Direction.SE;
		is_moving = true;
		break;
	case Input.Down | Input.Left:
		vy = sp * delta_t * inverse_sqrt_2;
		vx = -sp * delta_t * inverse_sqrt_2;
		legs.facing = Direction.SW;
		is_moving = true;
		break;
}

if input & Input.Dodge && (vx !=0 || vy != 0) && !is_dodging {
	is_dodging = true;
	_dodge_vx = vx*2;
	_dodge_vy = vy*2;
	_dodge_timer = .5;	
}
 if is_dodging{
	if wall_check(_dodge_vx+x,_dodge_vy+y){
		x += _dodge_vx;
		y += _dodge_vy;
	}
	
	_dodge_timer -= delta_t;
	legs.animation_handler.animate = false;
}else{
	if wall_check(vx+x, vy+y){
		x += vx
		y += vy
	}
}
 if _dodge_timer <= 0 {
	_dodge_timer = 0;
	is_dodging = false;
}


var winmody = 144/window_get_height()
var winmodx = 255/window_get_width()
degree_towards_mouse = darctan2((y+.5*height)-((window_mouse_get_y()/4)+camera_get_view_y(view_camera[0])), ((window_mouse_get_x()/4)+camera_get_view_x(view_camera[0]))-(x+.5*width));


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


legs.x = x-width*.5;
legs.y = y-height*.5;
legs.is_moving = is_moving;

if weapon_R != noone{
	weapon_R.x = x-width*.5;
	weapon_R.y = y-height*.5;
	weapon_R.degree_towards_target = degree_towards_mouse;
	weapon_Rsprite = weapon_R.sprite_index;

}

if weapon_L != noone{
	weapon_L.x = x-width*.5;
	weapon_L.y = y-height*.5;
	weapon_L.degree_towards_target = degree_towards_mouse;
	weapon_Lsprite = weapon_L.sprite_index;
}







