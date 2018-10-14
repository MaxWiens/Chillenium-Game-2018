/// @func fire_gun(weapon, degree_towards_target)
/// @desc uses weapon provided
/// @param weapon {oWeapon} weapon to use
weapon = argument0;
if weapon.cooldown == 0 {
	var xcom = dcos(weapon.degree_towards_target);
	var ycom = dsin(weapon.degree_towards_target);
	dsin(weapon.degree_towards_target);
	var bullet = instance_create_depth(x+weapon.x_offset + weapon.bullet_offset*xcom,y+weapon.y_offset-weapon.bullet_offset*ycom,depth-3,weapon.bullet);
	bullet.sp_x = weapon.bullet_speed*xcom;
	bullet.sp_y = -weapon.bullet_speed*ycom;
	bullet.damage = weapon.damage;
	bullet.against_player = weapon.against_player;
	if weapon.bullet_speed != 0
		bullet.time_until_decay = weapon.range/weapon.bullet_speed;
	if weapon.rate != 0
		weapon.cooldown = 1/weapon.rate;
}


