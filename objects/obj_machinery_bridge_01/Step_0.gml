if (global.switch[switch_no] && !passable) {
	passable = true;
	system_refresh_ground_collision(x,y,1);
	sprite_index = sprite_machinery_bridge_01_passable;
} else if (!global.switch[switch_no] && passable) {
	passable = false;
	system_refresh_ground_collision(x,y,0);
	sprite_index = sprite_machinery_bridge_01_unpassable;
}