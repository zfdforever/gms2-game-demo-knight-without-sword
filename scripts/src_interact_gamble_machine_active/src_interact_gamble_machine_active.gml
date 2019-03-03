if (global.player.coins < global.gamble_price) {
	system_show_message(x,y,"硬币不足",60);
} else {
	var skill_loot = system_generate_random_skill_loot();
	instance_create_layer(global.player.x,global.player.y,"loot",skill_loot);
	
	global.player.coins -= global.gamble_price;
	global.gamble_price *= global.gamble_price_degree
	global.gamble_price = floor(global.gamble_price);
}

