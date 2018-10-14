draw_sprite_ext(sArmor,0,x,0,4,4,0,c_white,1);
if instance_exists (player.weapon_L) draw_sprite_ext(player.weapon_Lsprite,0,(19*4)+x,(45*4)+(19*4),4,4,0,c_white,1)
if instance_exists (player.weapon_R) draw_sprite_ext(player.weapon_Rsprite,0,(19*4)+x,45*4,4,4,0,c_white,1)
if keyboard_check_pressed(vk_tab) {armor = !armor};

//draw_set_color(c_orange);

//draw_sprite_ext(sButton,0,(8+x)*4,(44+x)*4,4,4,0,c_white,1);

//draw_rectangle((8+x)*4,(44+x)*4,(8+x+25)*4,(44+10+x)*4,true);
//if point_in_rectangle(window_mouse_get_x(),window_mouse_get_y(),(8+x)*4,(44+x)*4,(8+x+25)*4,(44+10+x)*4) { draw_sprite_ext(sButton,0,(8+x)*4,(44+x)*4,4,4,0,c_white,1); }