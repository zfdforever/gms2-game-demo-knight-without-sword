if (collected) {
	var plyr = instance_find(obj_player,0);
	draw_sprite(collected_sprite, img_index, plyr.x, plyr.y);

	frame_tick ++;

	if (img_index <= sprite_get_number(collected_sprite) - 1) {
		if (frame_tick == 4) {
			img_index ++;
			frame_tick = 0;
		}
	}
} else {
	draw_self();
}