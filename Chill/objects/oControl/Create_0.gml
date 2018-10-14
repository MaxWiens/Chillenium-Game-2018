window_set_cursor(cr_none);
//cursor_sprite = sCrosshair

instance_create_depth(x,y,-5,oCursor)

window_set_fullscreen(true);
globalvar player;

globalvar delta_t;
enum Input {
	None =		0x000,
	
	Up =		0x001,
	Down =		0x002,
	Left =		0x004,
	Right =		0x008,
	Movement =	0x00F,
	
	Action	=	0x010,
	Action2 =	0x020,
	Dodge =		0x040,
	
	Activate =	0x080,
}
globalvar input;
input = Input.None;
globalvar input_old;
input_old = Input.None;


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