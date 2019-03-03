var si = "sprite_interact_" + interact_name;

if (available) {
	si += "_available";
} else {
	si += "_unavailable";
}

if (sprite_get_name(sprite_index) != si) {
	sprite_index = asset_get_index(si);
	image_index = 0;	
}