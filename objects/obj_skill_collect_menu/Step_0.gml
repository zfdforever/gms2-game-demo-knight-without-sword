if (show) {
	if (!global.pause) {
		system_pause(true);
	}
	
	if (keyboard_check(vk_enter)) {
		show = false;
		system_pause(false);
		
		system_player_add_skill(skill_to_show);
	}
}