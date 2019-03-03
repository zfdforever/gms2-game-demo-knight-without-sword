if (show) {
	
	var descript = skill_to_show.description;
	var allskill_description = skill_to_show.allskill_description;
	descript = string_replace(descript,"0#",skill_to_show.release_chance);
	descript = string_replace(descript,"1#",skill_to_show.level);
	allskill_description = string_replace(allskill_description,"2#",skill_to_show.allskill_chance);
	
	draw_set_color(c_black);
	draw_set_alpha(0.7);
	
	draw_rectangle(0,0,view_wport[0],view_hport[0],false);
	
	draw_set_alpha(1);
	draw_sprite(sprite_skill_collect_menu,0,view_xport[0]+view_wport[0]/2,view_yport[0]+view_hport[0]/2);
	
	var skill_icon = "sprite_skill_" + skill_to_show.skill_name;
	
	draw_sprite(asset_get_index(skill_icon),0,view_xport[0]+view_wport[0]/2,view_yport[0]+view_hport[0]/2.2);
	
	draw_set_font(font_skill_explain_1);
	
	system_draw_txt_warp(view_xport[0]+view_wport[0]/3.35,view_yport[0]+view_hport[0]/1.9,descript,23,400);
	
	draw_set_font(font_skill_explain_2);
	draw_set_color(c_maroon);
	
	system_draw_txt_warp(view_xport[0]+view_wport[0]/3.35,view_yport[0]+view_hport[0]/1.6,allskill_description,16,400);

	draw_sprite(sprite_guide_enter,img_index,view_xport[0]+view_wport[0]/1.4,view_yport[0]+view_hport[0]/1.3);

	frame_tick ++;

	if (frame_tick == 4) {
		img_index ++;
		frame_tick = 0;
	}
	
	if (img_index > sprite_get_number(sprite_guide_S) - 1)
		img_index = 0;

}
