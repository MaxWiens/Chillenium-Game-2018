delta_t = delta_time/1000000;
input_old = input;
input = Input.None;
if keyboard_check(87) // W is pressed
	input |= Input.Up;

if keyboard_check(83) // S is pressed
	input |= Input.Down;
	
if keyboard_check(65) // A is pressed
	input |= Input.Left;

if keyboard_check(68) // D is pressed
	input |= Input.Right;
	
if mouse_button == mb_left
	input |= Input.Action;