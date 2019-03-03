var left_up_x = x - 32;
var left_up_y = y - 47;

draw_healthbar(left_up_x, left_up_y, left_up_x+64, left_up_y+5, hp*100/maxhp, $FFCCCCFF & $FFFFFF, $FF16164C & $FFFFFF, $FF00CC21 & $FFFFFF, 0, (($FFCCCCFF>>24) != 0), (($FF00CC21>>24) != 0));
draw_healthbar(left_up_x, left_up_y+7, left_up_x+64, left_up_y+11, ep*100/maxep, $00FFFFFF & $FFFFFF, $FF002333 & $FFFFFF, $FF00BBFF & $FFFFFF, 0, (($00FFFFFF>>24) != 0), (($FF00CC21>>24) != 0));

draw_self();