draw_sprite_ext(sArmor,0,x,0,4,4,0,c_white,1);
draw_sprite_ext(sHealth,0,view_hport[0]*4-(x/5)+184,0,4,4,0,c_white,1);
var col = make_color_rgb(255,195,0);
if instance_exists(oPlayer)
	draw_rectangle_color((236)*4-(x/5), (30)*4, (236+16)*4-1-(x/5), (113)*4*(player.HP/player.max_hp), col,col,col,col, false);
if instance_exists (player.weapon_L) draw_sprite_ext(player.weapon_Lsprite,0,(19*4)+x,(45*4)+(19*4),4,4,0,c_white,1)
if instance_exists (player.weapon_R) draw_sprite_ext(player.weapon_Rsprite,0,(19*4)+x,45*4,4,4,0,c_white,1)
if keyboard_check_pressed(vk_tab) {armor = !armor};

//draw_set_color(c_orange);

//draw_sprite_ext(sButton,0,(8+x)*4,(44+x)*4,4,4,0,c_white,1);

//draw_rectangle((8+x)*4,(44+x)*4,(8+x+25)*4,(44+10+x)*4,true);
//if point_in_rectangle(window_mouse_get_x(),window_mouse_get_y(),(8+x)*4,(44+x)*4,(8+x+25)*4,(44+10+x)*4) { draw_sprite_ext(sButton,0,(8+x)*4,(44+x)*4,4,4,0,c_white,1); }