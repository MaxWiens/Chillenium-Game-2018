/// @func wall_check(x,y)
/// @param {real} x_pos position to check
/// @param {real} y_pos position to check
var x_pos = argument0
var y_pos = argument1
return (instance_position(x_pos, y_pos, oHalfWall) == noone && instance_position(x_pos, y_pos, oWall) == noone);