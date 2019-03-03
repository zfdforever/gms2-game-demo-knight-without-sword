draw_set_color(c_black);

draw_sprite(sprite_skill_main_lane,0,5,5);
draw_sprite(sprite_coins_main_lane,0,5,60);
draw_set_font(font_skill_explain_1);
draw_text(30,75,"x"+string(o_player.coins));


for (var i = 0; i < ds_list_size(o_player.skilllist); i++) {
//if player already has this skill, increase the skill level
	var s_sprite = o_player.skilllist[|i].sprite_index;
	var s_level = o_player.skilllist[|i].level;
	
	draw_sprite_stretched(s_sprite,0,30+35*i,9,32,32);
	
	draw_set_font(font_skill_lvl);
	
	draw_text(35+35*i,39,"lv."+string(s_level));
	
}