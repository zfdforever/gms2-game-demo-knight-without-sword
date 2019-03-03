var br = argument0;
var pn = ""



if (particle_type != "") {
	pn = (br.camp == 0? "player_":"enemy_"); 
	
	system_add_particle_bottom(br.x,br.y, pn + br.particle_type,1);
}


switch (br.move_type) {
	case 0:
	//right now bullet
	br.direction = point_direction(br.releaser.x,br.releaser.y,br.target_Obj.x,br.target_Obj.y);
	br.x = br.target_Obj.x;
	br.y = br.target_Obj.y;
	break;
	
	case 1:
	//target track bullet
	br.speed = br.move_speed;
	br.direction = point_direction(br.x,br.y,br.target_Obj.x,br.target_Obj.y);
	break;
	
	case 2:
	//point track bullet
	br.speed = br.move_speed
	br.direction = point_direction(br.x,br.y,br.target_pointx,br.target_pointy);
	break;
	
	case 3:
	//direction track
	br.speed = br.move_speed;
	br.direction = target_direction;
	break;
	
	case 4:
	//point track parabola
	break;
	
	case 5:
	//releaser offset
	br.direction =	releaser.direction;
	br.x = br.releaser.x;
	br.y = br.releaser.y;
	break;
}