
if target != noone{
	
	var x_dist = (target.x-x);
	var y_dist = (y-target.y);
	
	var range_comparison =  sqrt((x_dist * x_dist) + (y_dist*y_dist)) - effective_range;
	//a greater number would indecate that the 
	// this will let the ai stay within 16 pixels of their effective range
	if weapon_L != noone && range_comparison <= 0 { 
		weapon_L.degree_towards_target = degree_towards_target
		script_execute(weapon_L.fire_script, weapon_L);
	}
	if weapon_R != noone && range_comparison <= 0{
		weapon_R.degree_towards_target = degree_towards_target
		script_execute(weapon_R.fire_script, weapon_R);
	}

	degree_towards_target = darctan2(y_dist,x_dist);
	
	if range_comparison > 0 {
		suggested_x = dcos(degree_towards_target);
		suggested_y = -dsin(degree_towards_target);
	}
}

