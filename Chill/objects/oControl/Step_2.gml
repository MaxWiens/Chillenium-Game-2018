//Cursor following
if ((room > 0) && instance_exists(Player)) {
	x = Player.x + (-Player.x + mouse_x)/2
	y = Player.y - (Player.y - mouse_y)/2
}
	


//Switching fullscreen on and off by pressing f11

if keyboard_check_pressed(vk_f11) {
	
if !window_get_fullscreen() {window_set_fullscreen(true)}; else {window_set_fullscreen(false)};

}

//exit game

if keyboard_check_pressed(vk_escape) { game_end(); }

//restart game

if keyboard_check_pressed(vk_tab) { game_restart(); }