
interact_check_sprite();

if (place_meeting(x,y,obj_player)) {
	player_near_by = true
} else {
	player_near_by = false;
}

if (player_near_by && available && keyboard_check(vk_space)) {
	script_execute(active_script);
	recover_time_tick = recover_time;
	available = false;
}

if (recover_time != -1 && !available)
if (recover_time_tick > 0 ) {
	recover_time_tick --;
} else {
	available = true;
	if (recover_script != -1)
	script_execute(recover_script);
}