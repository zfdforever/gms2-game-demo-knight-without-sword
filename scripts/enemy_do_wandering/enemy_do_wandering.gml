var er = argument0;
var g1,g2,g3,lw,rw;
var wanderRange = er.wander_range;
var doTurnDirection = false;

lw = tilemap_get_at_pixel(obj_GameManager.map,x-(sprite_get_width(sprite_index)/2),y);
rw = tilemap_get_at_pixel(obj_GameManager.map,x+(sprite_get_width(sprite_index)/2),y);
g1 = tilemap_get_at_pixel(obj_GameManager.map,x-(sprite_get_width(sprite_index)/4),y+(sprite_get_width(sprite_index)/2));
g2 = tilemap_get_at_pixel(obj_GameManager.map,x,y+(sprite_get_width(sprite_index)/2));
g3 = tilemap_get_at_pixel(obj_GameManager.map,x+(sprite_get_width(sprite_index)/4),y+(sprite_get_width(sprite_index)/2));

er.speed = er.move_speed;

if (er.direction == 0) {	
	if (rw == 1 || rw == 2 || (g3 != 1 && g3 != 3 ))
		doTurnDirection = true;
}
else {
	if (lw == 1 || lw == 2 || (g1 != 1 && g1 !=3 ))
		doTurnDirection = true;
}

if (abs(er.x - er.bornPosX) >= wanderRange)
	doTurnDirection = true;

if (doTurnDirection)
{
	er.direction = 180 - er.direction ;
	er.x += hspeed;
}