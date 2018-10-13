/// @description Insert description here
// You can write your code in this editor
facing = Direction.N;
sprite_data = 0x10;
is_moving = false;

animation_handler = instance_create_depth(0,0,0, oAnimationHandler);
animation_handler.delay = 0.150;			// delay in seconds until the next frame should be displayed
animation_handler.frame_count = 4;	// number of frames in animation
animation_handler.loop = true;		// wheather to restart the animation when finished