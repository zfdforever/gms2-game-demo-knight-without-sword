default_game_speed = game_get_speed(gamespeed_fps);
default_delta_time = delta_time;
show_debug_message("game speed :" + string(default_game_speed));
show_debug_message("delta time :" + string(default_delta_time));

map = layer_tilemap_get_id("collisions");

global.game_manager = self;
global.player = instance_find(obj_player,0);


//camera setting
view_enabled = true;
view_visible[0] = true;
view_xport[0] = 0;
view_yport[0] = 0;
view_wport[0] = 960;
view_hport[0] = 540;
view_camera[0] = camera_create_view(0, 0, view_wport[0], view_hport[0], 0, obj_player, -1, -1, 1000, 1000);
surface_resize(application_surface, 960, 540);
window_set_size(1440,810);

for (var i = 0 ; i < 10 ; i++) {
	global.switch[i] = false;
}

instance_deactivate_layer("deactive_instance_1");
