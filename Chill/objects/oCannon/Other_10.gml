/// @description Fire gun


bullet_speed = 40;
damage = 4;
rate = 1;
range = 100;
x_bullet_offset = 0;
y_bullet_offset = 0;
x_offset = 0;
y_offset = 0;
sprite_data = 0;



bullet = instance_create_depth(x+x_bullet_offset+x_offset,y+y_bullet_offset+y_offset,depth,oBigBullet);
bullet.sp_x = bullet_speed*dsin(degree_towards_target);
bullet.sp_y = bullet_speed*dcos(degree_towards_target);
bullet.damage = damage;
bullet.time_until_decay = range/bullet_speed;

