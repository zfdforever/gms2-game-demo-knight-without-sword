var er = argument0;
var g1,g2,g3,lw,rw;
var doStay = false;

lw = tilemap_get_at_pixel(obj_GameManager.map,x-(sprite_get_width(sprite_index)/2),y);
rw = tilemap_get_at_pixel(obj_GameManager.map,x+(sprite_get_width(sprite_index)/2),y);
g1 = tilemap_get_at_pixel(obj_GameManager.map,x-(sprite_get_width(sprite_index)/4),y+(sprite_get_width(sprite_index)/2));
g2 = tilemap_get_at_pixel(obj_GameManager.map,x,y+(sprite_get_width(sprite_index)/2));
g3 = tilemap_get_at_pixel(obj_GameManager.map,x+(sprite_get_width(sprite_index)/4),y+(sprite_get_width(sprite_index)/2));

if (obj_player.x < er.x) {
	er.direction = 0;
} else {
	er.direction = 180;
}


if (er.m_type == "wander") {

	er.speed = er.move_speed;

	retreating = true;



	if (er.direction == 0) {	
		if (rw == 1 || rw == 2 || (g3 != 1 && g3 != 3))
			doStay = true;
	}
	else {
		if (lw == 1 || lw == 2 || (g1 != 1 && g1 != 3))
			doStay = true;
	}

	if (doStay)
	{
		er.speed = 0;
	}

} else if (er.m_type == "blink") {
	var plyr_on_left = global.player.x < er.x ? true : false;
	
	if (image_index > sprite_get_number(sprite_index) - 1) {
		if (plyr_on_left)
		//Todo:if there is a block
			er.x += er.safe_range;
		else 
			er.x -= er.safe_range;
	}

}