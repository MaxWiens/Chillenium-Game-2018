
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
//mask_index = sBigBullet;
HP = 10;
max_hp = 10;
sp = 40; // speed in pixels per second
legs = instance_create_depth(x,y,depth,oPlayerLegs); // legs of the player
facing = Direction.N; // direction facing
is_moving = false;
is_dodging = false;
_dodge_vx = 0;
_dodge_vy = 0;
_dodge_timer = 0;
sprite_data = 0x20;
height = 16;
width = 16;
degree_towards_mouse= 0; // degree angle (from +x) toward mouse
weapon_R = noone;
weapon_L = noone;
is_enemy = false;

weapon_Rsprite = 0;
weapon_Lsprite = 0;