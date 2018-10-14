/// @func give_weapon(player, weapon)
/// @desc gives a player a weapon in their free hand.
/// @param player {oPlayer} player to give weapon to.
/// @param weapon {oWeapon} weapon to give.
player = argument0;
weapon = argument1;
if player.weapon_R == noone {
	weapon.x = player.x;
	weapon.y = player.y;
	if player.is_enemy
		weapon.against_player = true;
	else
		weapon.against_player = false;
	player.weapon_R = weapon;
	weapon.dropped = false;
} else if player.weapon_L == noone {
	weapon.x = player.x;
	weapon.y = player.y;
	if player.is_enemy
		weapon.against_player = true;
	else
		weapon.against_player = false;
	weapon.rotmod = -180;
	weapon.xscale = -1;
	player.weapon_L = weapon;
	weapon.dropped = false;
}