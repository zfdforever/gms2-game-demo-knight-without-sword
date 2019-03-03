if (state != 8) {

	if (climb_input == "up") {
		climb_down = false;
		climb_up = true;
	} else {
		climb_down = true;
		climb_up = false;
	}
	state = 8;
} else {
	
	if (climb_down && climb_input == "up") {
		climb_down = false;
		climb_up = true;
	}
	
	if (climb_up && climb_input == "down") {
		climb_down = true;
		climb_up = false;
	}
	
	if (climb_input == "up" && h1 != 1 && h3 != 1)
		y -= climb_speed;
	else if (climb_input == "down" && g1 != 1 && g3 != 1)
		y += climb_speed;
		
	if (move_input == "left" && lw != 1 && h1 != 1 && g1 != 1 )
		x -= 2;
	else if (move_input == "right" && rw != 1 && h3 != 1 && g3 != 1)
		x += 2;
}