/// @func give_weapon(player, weapon)
/// @desc gives a player a weapon in their free hand.
/// @param weapon_holder {oPlayer} player to give weapon to.
/// @param weapon {oWeapon} weapon to give.
weapon_holder = argument0;
weapon = argument1;
if weapon_holder.weapon_R == noone {
	weapon.x = weapon_holder.x;
	weapon.y = weapon_holder.y;
	weapon.holder = weapon_holder;
	if weapon_holder.is_enemy
		weapon.against_player = true;
	else
		weapon.against_player = false;

	weapon_holder.weapon_R = weapon;
	weapon.dropped = false;
} else if weapon_holder.weapon_L == noone {
	weapon.x = weapon_holder.x;
	weapon.y = weapon_holder.y;
	if weapon_holder.is_enemy
		weapon.against_player = true;
	else
		weapon.against_player = false;

	weapon.rotmod = -180;
	weapon.xscale = -1;
	weapon.holder = weapon_holder;
	weapon_holder.weapon_L = weapon;
	weapon.dropped = false;
} else if weapon_holder.weapon_R.object_index == weapon.object_index && weapon_holder.weapon_R.level < 4{
	weapon_holder.weapon_R.level += 1;
	instance_destroy(weapon);
} else if weapon_holder.weapon_L.object_index == weapon.object_index && weapon_holder.weapon_L.level < 4{
	weapon_holder.weapon_L.level += 1;
	instance_destroy(weapon);
}