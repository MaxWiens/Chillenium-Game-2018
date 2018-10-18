/// @description Insert description here
// You can write your code in this editor
if HP <= 0 {
	if (weapon_L != noone) then drop_weapon(self, true);
	if (weapon_R != noone) then drop_weapon(self, false);
	instance_destroy(ai);
	instance_destroy();
	return;
}

if ai.target == noone {
	//move_random(2,2);
	var player = collision_circle(x,y,ai.effective_range, oPlayer, false, true);
	if player != noone
		ai.target = player;
}else{
	var dx = ai.suggested_x*sp*delta_t + x;
	var dy = ai.suggested_y*sp*delta_t + y;
	if wall_check(dx, dy){
		x = dx;
		y = dy;
	}
}

if ai.degree_towards_target < 22 and ai.degree_towards_target >= -22
	facing = Direction.E;
else if ai.degree_towards_target < -22 and ai.degree_towards_target >= -67
	facing = Direction.SE;
else if ai.degree_towards_target < -67 and ai.degree_towards_target >= -112 
	facing = Direction.S;
else if ai.degree_towards_target < -112 and ai.degree_towards_target >= -157
	facing = Direction.SW;
else if ai.degree_towards_target < -157 and ai.degree_towards_target >= -180
	facing = Direction.W;

if ai.degree_towards_target < 67 and ai.degree_towards_target >= 22
	facing = Direction.NE;
else if ai.degree_towards_target < 112 and ai.degree_towards_target >= 67
	facing = Direction.N;
else if ai.degree_towards_target < 157 and ai.degree_towards_target >= 112
	facing = Direction.NW;
else if ai.degree_towards_target <= 180 and ai.degree_towards_target >= 157
	facing = Direction.W;

ai.x = x-8;
ai.y = y-8;
if weapon_L != noone{
	weapon_L.x = x-8	
	weapon_L.y = y-8
	ai.weapon_L = weapon_L
}
if weapon_R != noone{
	weapon_R.x = x-8
	weapon_R.y = y-8
	ai.weapon_R = weapon_R
}