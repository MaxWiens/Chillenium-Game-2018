//Cursor following
if ((room > 0) && instance_exists(player)) {
	x = player.x + (mouse_x - player.x)/3
	y = player.y - (player.y - mouse_y)/3
}
	


//Switching fullscreen on and off by pressing f11

if keyboard_check_pressed(vk_f11) {
	
if !window_get_fullscreen() {window_set_fullscreen(true)}; else {window_set_fullscreen(false)};

}

//exit game

if keyboard_check_pressed(vk_escape) { game_end(); }

//restart game

if keyboard_check_pressed(vk_tab) { game_restart(); }