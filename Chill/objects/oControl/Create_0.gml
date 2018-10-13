window_set_fullscreen(true);

/*
iw = 0
ih=1080;

ar = display_get_width()/display_get_height()

iw=round(iw*ar);

if (iw && 1) {iw++};

for (var i = 1; i<=room_last; i++) {
	if room_exists(i) {
			room_set_view(i,0,true,0,0,iw,ih,0,0,iw,ih,0,0,0,0,-1);
			room_set_view_enabled(i,true);
	}
}

surface_resize(application_surface,iw,ih);
window_set_size(iw,ih);

room_goto(room_next(room));
*/

//view_camera[0] = camera_create_view(0,0,256,144,0,oPlayer,1,1,0,0);