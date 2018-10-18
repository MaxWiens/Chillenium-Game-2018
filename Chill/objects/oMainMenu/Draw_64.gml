if show_instrucitons
	draw_sprite_ext(sprite28,0,0,0,4,4,0,c_white,1)
var col = make_color_rgb(10,255,30);
draw_set_color(col);
switch selected{
	case 2:
		draw_rectangle(7*4,42*4,20*4,54*4, false);
		break;
	case 1:
		draw_rectangle(7*4,65*4,20*4,77*4, false);
		break;
	case 0:
		draw_rectangle(7*4,88*4,20*4,100*4, false);
		break;
	
	

}
draw_set_color(c_white);