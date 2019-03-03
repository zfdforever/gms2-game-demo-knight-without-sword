var pause = argument0;

if (pause) {
	//instance_deactivate_layer("instance");
	//instance_deactivate_layer("bullet");
	global.pause = true;
} else {
	//instance_activate_layer("instance");
	//instance_activate_layer("bullet");
	global.pause = false;
}