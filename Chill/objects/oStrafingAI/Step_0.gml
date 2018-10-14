
if target != noone{
	if weapon_L != noone{ 
		weapon_L.degree_towards_target = degree_towards_target
		fire_gun(weapon_L);
	}
	if weapon_R != noone{
		weapon_R.degree_towards_target = degree_towards_target
		fire_gun(weapon_R);
	}
	var x_dist = (target.x-x);
	var y_dist = (y-target.y);
	
	var range_comparison =  sqrt((x_dist * x_dist) + (y_dist*y_dist)) - effective_range;
	//a greater number would indecate that the 
	// this will let the ai stay within 16 pixels of their effective range
	

	degree_towards_target = darctan2(y_dist,x_dist);
	show_debug_message(range_comparison);
	if _strafe_counter <= 0 {
		_strafe_modifier = random(360)-180;
		_strafe_counter = random(2)+.5;
	}else{
		_strafe_counter -= delta_t;
	}
	if range_comparison < -10 {
		suggested_x = -dcos(degree_towards_target);
		suggested_y = dsin(degree_towards_target);
	}
	if range_comparison > 50 {
		suggested_x = dcos(degree_towards_target);
		suggested_y = -dsin(degree_towards_target);
	}
	else if range_comparison <= 0 {
		if _strafe_modifier < 90 && _strafe_modifier > -90{
			suggested_x = -dcos(degree_towards_target-_strafe_modifier);
			suggested_y = dsin(degree_towards_target-_strafe_modifier);
		}
		else{
			suggested_x = -dcos(degree_towards_target+_strafe_modifier);
			suggested_y = dsin(degree_towards_target+_strafe_modifier);
		}
	}else{
		if _strafe_modifier > 15 &&  _strafe_modifier < 90{
			suggested_x = dcos(degree_towards_target-_strafe_modifier);
			suggested_y = -dsin(degree_towards_target-_strafe_modifier);
		}
		else{
			suggested_x = dcos(degree_towards_target+_strafe_modifier);
			suggested_y = -dsin(degree_towards_target+_strafe_modifier);
		}
	}
}

