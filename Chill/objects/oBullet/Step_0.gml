
x += sp_x * delta_t;
y += sp_y * delta_t;
time_until_decay -= delta_t;

if time_until_decay <= 0
	instance_destroy();

