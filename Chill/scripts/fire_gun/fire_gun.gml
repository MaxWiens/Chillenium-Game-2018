/// @func fire_gun(weapon, degree_towards_target)
/// @desc uses weapon provided
/// @param weapon {oWeapon} weapon to use
weapon = argument0;
if weapon.cooldown == 0 {
	weapon.bullet = instance_create_depth(x+weapon.x_bullet_offset+weapon.x_offset,y+weapon.y_bullet_offset+weapon.y_offset,depth,oBigBullet);
	weapon.bullet.sp_x = weapon.bullet_speed*dcos(weapon.degree_towards_target);
	weapon.bullet.sp_y = -weapon.bullet_speed*dsin(weapon.degree_towards_target);
	weapon.bullet.damage = weapon.damage;
	if weapon.bullet_speed != 0
		weapon.bullet.time_until_decay = weapon.range/weapon.bullet_speed;
	if weapon.rate != 0
		weapon.cooldown = 1/weapon.rate;
	
}

