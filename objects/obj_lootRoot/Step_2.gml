if (collected && !efficient && img_index > sprite_get_number(collected_sprite) - 1) {
	instance_destroy();
}

if (global.game_over)
	instance_destroy();