efficient = true;
collected = false;
frame_tick = 0;
img_index = 0;

idle_sprite_s = "sprite_loot_" + loot_name;
collected_sprite = asset_get_index(idle_sprite_s + "_collected");

if (sprite_get_name(sprite_index) != idle_sprite_s) {
	sprite_index = asset_get_index(idle_sprite_s);
	image_index = 0;	
}

amount = irandom_range(amount_min,amount_max); 