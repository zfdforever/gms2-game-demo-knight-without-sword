if (sheild_input == "S") {
//both sheild cannot do any skill, so cost lower than other sheilds
	if (ep < ep_cost_once_both)
		return;
	else 
		ep -= ep_cost_once_both;
} else {
	if (ep < ep_cost_once)
		return;
	else 
		ep -= ep_cost_once;
}

speed = 0;

if (sheild_input == "A") {
	state = 2;
} else if (sheild_input == "D") {
	state = 3;
} else if (sheild_input == "S") {
	state = 6;
}

system_add_buff(self,obj_buff_plyr_skillable);