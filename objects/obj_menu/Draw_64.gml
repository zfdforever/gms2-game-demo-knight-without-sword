
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(font_menu_button);

for (var i = 0; i < 3; i++){

	if (i != menu_index) {
		draw_set_colour($FF54C1C9 & $ffffff);
		var l174B2352_0=($FF54C1C9 >> 24);
		draw_set_alpha(l174B2352_0 / $ff);
	} else {
		draw_set_colour($FF275CC6 & $ffffff);
		var l60EA850B_0=($FF275CC6 >> 24);
		draw_set_alpha(l60EA850B_0 / $ff);
	}
		
	draw_text_ext_transformed(view_xport[0]+view_wport[0]/2,view_yport[0]+view_hport[0]/2+button_height*i,buttons[i],0,300,1,1,0);
}