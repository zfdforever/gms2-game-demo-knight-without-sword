event_inherited();

draw_sprite_ext(sprite_coins_main_lane,0,x-25,y-50,0.7,0.7,0,c_white,1);
draw_set_color(c_black);
draw_set_font(font_skill_lvl);
draw_text(x-5,y-40,"-"+string(global.gamble_price));