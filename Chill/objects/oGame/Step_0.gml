if (armor) {
	if (x<0) {	x+=15; }
	if mouse_check_button_pressed(mb_left) { drop_weapon(player,player.weapon_L); }
	if mouse_check_button_pressed(mb_right) { drop_weapon(player,player.weapon_R); }
}
else
{
	if (x>-275) { x-=15; }
}
