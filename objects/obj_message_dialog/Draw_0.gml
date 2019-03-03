if (show) {
	draw_sprite(sprite_message_dialog,0,show_position_x,show_position_y);
	draw_set_font(font_skill_explain_2);
	draw_set_color(c_black);
	system_draw_txt_warp(show_position_x+25,show_position_y-64,show_text,21,200);
}
