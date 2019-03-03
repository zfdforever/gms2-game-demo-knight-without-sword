if (global.pause) {
	return ;
}

if (last_time_tick == last_time && buff_effect != -1 )
script_execute(buff_effect,attach_to,"dobuff");

if (last_time_tick <= 0 && last_time != -1) {
//if buff last time = -1,buff last forever
	instance_destroy();	
	exit;
} 


if (buff_interval_tick <= 0) {
	if (interval_effect != -1)
		script_execute(interval_effect,attach_to);
	buff_interval_tick = buff_interval;
}

if (last_time != -1)
last_time_tick --;
if (interval_effect != -1)
buff_interval_tick --;