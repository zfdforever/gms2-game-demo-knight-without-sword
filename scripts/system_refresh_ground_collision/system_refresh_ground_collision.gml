///system_refresh_ground_collision(x,y,collision_id)
if (!global.game_over) {
var xx = argument0;
var yy = argument1;
var collision_id = argument2;
var collision_tilemap = instance_find(obj_GameManager,0).map;

tilemap_set_at_pixel(collision_tilemap,collision_id,xx,yy)
}