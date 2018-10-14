if cooldown > 0
	cooldown -= delta_t;
else
	cooldown = 0;

if level >= 3 && mega_weapon != noone {
	var new_weapon = instance_create_depth(x,y,depth,mega_weapon);
	mega_weapon.holder = holder;
	
	
	if holder.weapon_L == self {
		holder.weapon_L = noone;
		instance_destroy();
	}
	else if holder.weapon_R == self {
		holder.weapon_R = noone;
		instance_destroy();
	}
	give_weapon(holder, new_weapon)
}