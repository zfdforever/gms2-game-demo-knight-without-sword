menu_x = 0;
menu_y = 0;

button_height = 32;

buttons[0] = "New game";
buttons[1] = "Continue";
buttons[2] = "Exit";

menu_index = 0;

view_enabled = true;
view_visible[0] = true;
view_xport[0] = 0;
view_yport[0] = 0;
view_wport[0] = 960;
view_hport[0] = 540;

surface_resize(application_surface, 960, 540);
window_set_size(1440,810);

menu_y = window_get_height();
menu_x = window_get_width();