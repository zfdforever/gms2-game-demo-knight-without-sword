if (active) {
	var plyr = instance_find(obj_player,0);
	draw_sprite(sprite_guide_D, img_index, plyr.x, plyr.y+64);

	frame_tick ++;

	if (frame_tick == 4) {
		img_index ++;
		frame_tick = 0;
	}

	if (img_index > sprite_get_number(sprite_guide_D) - 1)
		img_index = 0;
}


