
if target != noone{
	
	var x_dist = (target.x-x);
	var y_dist = (y-target.y);
	var range_comparison =  sqrt((x_dist * x_dist) + (y_dist*y_dist)) - effective_range;
	
	if weapon_L != noone && range_comparison < 0{ 
		weapon_L.degree_towards_target = degree_towards_target
		script_execute(weapon_L.fire_script, weapon_L);
	}
	if weapon_R != noone && range_comparison < 0{
		weapon_R.degree_towards_target = degree_towards_target
		script_execute(weapon_R.fire_script, weapon_R);
	}
	
	
	//a greater number would indecate that the 
	// this will let the ai stay within 16 pixels of their effective range
	

	degree_towards_target = darctan2(y_dist,x_dist);
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

