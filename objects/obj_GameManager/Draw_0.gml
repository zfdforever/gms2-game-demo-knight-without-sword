if (allskill_slow_motion) {
	
	var gamespeed = game_get_speed(gamespeed_fps) ;
	
	if (gamespeed == default_game_speed) {
		img_index = 0;
		game_set_speed(default_game_speed/6,gamespeed_fps);
		
		if (global.player.state == 2) {
			layer_background_change(layer_background_get_id("Background"),sprite_background_slow_motion_blue);
		} else if (global.player.state == 3) {
			layer_background_change(layer_background_get_id("Background"),sprite_background_slow_motion_red);
		}
		
		
	}
		

	var dir = global.player.direction == 0 ? 1 : -1;
	
	draw_sprite_ext(sprite_allskill_effect,img_index,global.player.x,global.player.y,dir,1,0,c_white,1);
	img_index ++;
	
	if (img_index > sprite_get_number(sprite_allskill_effect) - 1) {
		allskill_slow_motion = false;
		game_set_speed(default_game_speed,gamespeed_fps);
		layer_background_change(layer_background_get_id("Background"),sprite_background);
	}
		
}
