
var dx = sp_x * delta_t;
var dy = sp_y * delta_t;
if wall_check(dx+x,dy+y){
	x += dx
	y += dy
}else{
	instance_destroy();
}
time_until_decay -= delta_t;

if time_until_decay <= 0
	instance_destroy();

