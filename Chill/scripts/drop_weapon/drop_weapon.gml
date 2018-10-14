///drop_weapon(player, left)
/// @desc forces a player to drop a specific weapon
/// @param {oPlayer} player 
/// @param {real} left drops the left weapon if true, drops the right if false
weapon_holder = argument0;
left = argument1;
if left {
	if weapon_holder.weapon_L != noone {
		weapon_holder.weapon_L.dropped = true;
		weapon_holder.weapon_L.rotmod = 0;
		weapon_holder.weapon_L.xscale = 1;
		weapon_holder.weapon_L = noone;
	}
}else{
	if weapon_holder.weapon_R != noone {
		weapon_holder.weapon_R.dropped = true;
		weapon_holder.weapon_R = noone;
	}
}
