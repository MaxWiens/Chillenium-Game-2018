///drop_weapon(player, left)
/// @desc forces a player to drop a specific weapon
/// @param {oPlayer} player 
/// @param {real} left drops the left weapon if true, drops the right if false
player = argument0;
left = argument1;
if left {
	if player.weapon_L != noone {
		player.weapon_L.dropped = true;
		player.weapon_L.rotmod = 0;
		player.weapon_L.xscale = 1;
		player.weapon_L = noone;
	}
}else{
	if player.weapon_R != noone {
		player.weapon_R.dropped = true;
		player.weapon_R = noone;
	}
}
