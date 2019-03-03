/*

bullet check state each frame

*/
 
var br = argument0;

if (br.state == 0)
	br.state = 1;

if (br.last_time != -1)
//if bullet has a last_time set, count the last time
	br.last_time_tick --;
if (br.last_time_tick == 0){
//if bullet last time is over, do explode
	br.remove = true;
}

switch (br.move_type) {
//for bullet self destroy
	case 1:
	//if bullet's target is destroyed, change bullet type to point track
		if (br.move_type == 1 && !instance_exists(br.target_Obj))
			br.move_type = 2;
	break;
	
	case 2:
	//point track bullet will explode when arrived target point
		if (abs(br.x - br.target_pointx) <= br.move_speed  && abs(br.y -br.target_pointy) <= br.move_speed ) {
			br.remove = true;
		}	
	break;
}

if (x < 0 || x > room_width || y < 0 || y > room_height)
//if bullet fly out of room ,destroy bullet
	br.remove = true;


if (br.remove ) {
	bullet_do_explode(br);
	br.efficient = false;
	return;
}


if (br.collision)
bullet_do_collision(br,c_target);

switch (br.state) {

	case 1:
		bullet_do_moving(br);
	break;
	
	case 2:		
	break;
}