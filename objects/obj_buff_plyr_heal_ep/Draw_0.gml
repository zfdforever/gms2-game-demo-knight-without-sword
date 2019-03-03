var plyr = instance_find(obj_player,0);
draw_sprite(sprite_loot_ep_fewer_collected, img_index, plyr.x, plyr.y);

frame_tick ++;

if (img_index <= sprite_get_number(sprite_loot_ep_fewer_collected) - 1) {
	if (frame_tick == 4) {
		img_index ++;
		frame_tick = 0;
	}
}