if (buttons[menu_index] == "New game") {
	room_goto_next();
} 

if (buttons[menu_index] == "Continue") {
	game_load("game_save_file");
} 

if (buttons[menu_index] == "Exit") {
	game_end();
} 