//draw_set_colour($FF000000 & $ffffff);
//var l1B3223D6_0=($FF000000 >> 24);
//draw_set_alpha(l1B3223D6_0 / $ff);
//draw_set_halign(fa_left);
//draw_set_valign(fa_middle);

//draw_text(self.x,self.y-32,self.m_state);

var left_up_x = x - 25;
var left_up_y = y - 44;

if (hp < maxhp)
draw_healthbar(left_up_x, left_up_y, left_up_x+50, left_up_y+2, hp*100/maxhp, $00FFFFFF & $FFFFFF, $FF16164C & $FFFFFF, $FF00CC21 & $FFFFFF, 0, (($00FFFFFF>>24) != 0), (($FF00CC21>>24) != 0));

draw_self();