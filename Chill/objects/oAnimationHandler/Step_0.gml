
if animate {
	_animation_timer += delta_t;
	if _animation_timer >= delay {
		_animation_timer -= delay;
		frame += 1;
		if frame >= frame_count {
			if loop
				frame = 0;
			else {
				frame = default_frame;
				animate = false;
			}
		}
	}
} else if not continue_where_left_off {
	_animation_timer = 0;
	frame = default_frame;
}

