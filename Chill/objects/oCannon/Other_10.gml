/// @description Fire gun

var bullet_speed = 40;
  time = dist/speed

bullet = instance_create_depth(x+x_bullet_offset+x_offset,y+y_bullet_offset+y_offset,depth,oBigBullet);
bullet.sp_x = bullet_speed*dsin(degree_towards_target);
bullet.sp_y = bullet_speed*dcos(degree_towards_target);
bullet.damage = 4;
