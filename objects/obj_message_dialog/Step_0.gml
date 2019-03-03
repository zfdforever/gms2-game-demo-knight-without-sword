if (show) {
	if (last_time_tick >= last_time)
		show = false;
	else
		last_time_tick ++;
} else {
	last_time_tick = 0; 
}