if (active_S) {
	var plyr = instance_find(obj_player,0);
	draw_sprite(sprite_guide_S, img_index, plyr.x, plyr.y+64);

	frame_tick ++;

	if (frame_tick == 4) {
		img_index ++;
		frame_tick = 0;
	}

	if (img_index > sprite_get_number(sprite_guide_S) - 1)
		img_index = 0;
}

if (active_A) {
	
	if (guide_interval <= 0) {
		var plyr = instance_find(obj_player,0);
		draw_sprite(sprite_guide_A, img_index, plyr.x, plyr.y+64);

		frame_tick ++;

		if (frame_tick == 4) {
			img_index ++;
			frame_tick = 0;
		}

		if (img_index > sprite_get_number(sprite_guide_A) - 1)
			img_index = 0;
	} else {
	
		guide_interval --; 
	}
	
}