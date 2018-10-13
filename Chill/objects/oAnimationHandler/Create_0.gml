// The oAnimaitonHandler object is meant to aid in
// calculating the correct frame which an animation 
// should be displaying.

_animation_timer = 0;
delay = 0;			// delay in seconds until the next frame should be displayed
frame_index = 0;    // index of frame which to display
frame_count = 0;	// number of frames in animation
loop = false;		// wheather to restart the animation when finished
animate = false;	// wheather to animate or not
continue_where_left_off = false; // wheather to continue where the animation left off if this stops animaiting and restarts 
default_frame = 0; //default frame to be displayed if animation is stoped