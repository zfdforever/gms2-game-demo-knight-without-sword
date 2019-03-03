draw_self();

if (player_near_by && available ) {

	draw_sprite(sprite_guide_space,img_index,x,y+60);
	
	frame_tick ++;

	if (frame_tick == 4) {
		img_index ++;
		frame_tick = 0;
	}

	if (img_index > sprite_get_number(sprite_guide_space) - 1)
		img_index = 0;
	
} else {
	img_index = 0;
	frame_tick = 0;
}

	

	