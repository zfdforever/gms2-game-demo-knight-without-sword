var xx = argument0;
var yy = argument1;
var message = argument2;
var last_time = argument3;

var dialog = instance_find(obj_message_dialog,0);

dialog.show_position_x = xx;
dialog.show_position_y = yy;
dialog.show_text = message;
dialog.last_time = last_time;
dialog.show = true;