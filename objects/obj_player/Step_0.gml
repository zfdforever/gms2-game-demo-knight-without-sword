/*
move_input:
	0
	left_down
	right_down
	left_up
	right_up

sheild_input:
	0
	A_down
	A_up
	D_down
	D_up

player state:
	0:idle
	1:walk

	2:blue sheild
	3:red sheild
	
	4:blue sheild preaction
	5:red sheild preaction
	
	6:both sheild
	7:both sheild preaction
	
	8:climbing
	
sheild:
	0=none
	1=blue
	2=red
*/

if (global.pause) {
	if (state == 1) {
		player_do_idle();
		player_check_sprite(self);
	}
		
	exit;
}




//check left and right path moveable;
lw = tilemap_get_at_pixel(obj_GameManager.map,x-(sprite_get_width(sprite_index)/2),y);
rw = tilemap_get_at_pixel(obj_GameManager.map,x+(sprite_get_width(sprite_index)/2),y);
mw = tilemap_get_at_pixel(obj_GameManager.map,x,y);

if (lw == 1 ){
	xspeedl = 0;
	speed = 0;
}
else {
	xspeedl = move_speed;
}
	
	
if (rw == 1 ){
	xspeedr = 0;
	speed = 0;
}
else{
	xspeedr = move_speed;
} 


g1 = tilemap_get_at_pixel(obj_GameManager.map,x-(sprite_get_width(sprite_index)/4),y+(sprite_get_width(sprite_index)/2));
g2 = tilemap_get_at_pixel(obj_GameManager.map,x,y+(sprite_get_width(sprite_index)/2));
g3 = tilemap_get_at_pixel(obj_GameManager.map,x+(sprite_get_width(sprite_index)/4),y+(sprite_get_width(sprite_index)/2));

h1 = tilemap_get_at_pixel(obj_GameManager.map,x-(sprite_get_width(sprite_index)/4),y-(sprite_get_width(sprite_index)/2));
h2 = tilemap_get_at_pixel(obj_GameManager.map,x,y+(sprite_get_width(sprite_index)/2));
h3 = tilemap_get_at_pixel(obj_GameManager.map,x+(sprite_get_width(sprite_index)/4),y-(sprite_get_width(sprite_index)/2));




//excute go uphill or go downhill
if (!go_uphill && !go_downhill && (lw == 2 || rw == 2)) {
	go_uphill = true;
	go_downhill = false;
	predirection = direction;
} 

if (!go_uphill && !go_downhill && (g2 == 2)){
	go_uphill = false;
	go_downhill = true;
	predirection = direction;
}

if (go_downhill || go_uphill) {
	if (direction != predirection) {
		go_downhill = !go_downhill;
		go_uphill = !go_uphill;
		predirection = direction;
	}
		
	if (g1 != 2 && g2 != 2 && g3 != 2 && lw != 2 && rw != 2) {
		go_downhill = false;
		go_uphill =false;
		direction = -1;
	}
		
}


//check if can climb up or down
if (mw == 3 && h1 != 1 && h3 != 1)
	climb_upable = true;
else 
	climb_upable = false;
if (g2 == 3 && g1 != 1 && g3 != 1)
	climb_downable = true;
else 
	climb_downable = false;



//execute gravity
if (state != 8) {
	if ((g1 == 1 || g2 == 1 || g3 == 1 || g1 == 3 || g2 == 3 || g3 == 3)) 
	{
		y = real(y&$ffffffc0) + (sprite_get_width(sprite_index)/2);
		yspeed = 0;
		yaccel = 0;
	} else {
		yaccel = 3;
	} 
}



if (go_uphill)
	yspeed = -speed;
if (go_downhill)
	yspeed = speed;

y += yspeed;
yspeed += yaccel;
if (yspeed > yspeedmax)
	yspeed = yspeedmax;

//Todo:maybe add some hit animation for player, to interrupt movement ?
if (hit)
hit = false;

move_input = "";
sheild_input = "";
climb_input = "";

//detect player direction input
if (keyboard_check(vk_left)) {
	move_input = "left";
} else if (keyboard_check(vk_right)) {
	move_input = "right";
} 
//detect player sheild input
if (keyboard_check(ord("A"))) {
	sheild_input = "A";
} else if (keyboard_check(ord("D"))) {
	sheild_input = "D";
} else if (keyboard_check(ord("S"))) {
	sheild_input = "S"
}
//detect player climb input
if (keyboard_check(vk_up)) {
	climb_input = "up";
} else if (keyboard_check(vk_down)) {
	climb_input = "down";
} 

//do direction fix
if (state != 4 && state != 5) {
	if (move_input == "left")
		direction = 180;
	else if (move_input == "right")
		direction = 0;
}

if (state == 2 || state == 3 || state == 6) {
//if holding sheild ,cost ep per frame
	var cost = 0;
	switch (state){
		case 2:
		case 3:
			cost = ep_cost_last;
			break;
		case 6:
			cost = ep_cost_last_both;
			break;
	}
	ep -= cost;
	if (ep < 0)
		ep = 0;

} else {
//if not sheild, ep increased slowly
	ep += ep_gain_unhold;
	if ( ep > maxep)
		ep = maxep;
}



switch (state) {

	case 0:
	//player in idle state
	if (sheild_input != "") {
		player_do_sheild();
	} else if (climb_downable && climb_input == "down") {
		player_do_climb();
	} else if (climb_upable && climb_input == "up") {
		player_do_climb();
	} else if (move_input != "") {
		player_do_move();
	} 
	break;
	
	case 1:
	//player in walk state
	if (sheild_input != "") {
		player_do_sheild();
	} else if (move_input == "") {
		player_do_idle();
	} else {
		player_do_move();
	}
	break;

	case 2:
	//player in blue sheild
	if (doskill || allskill) {
	//if player is doing skill
		player_do_skills();
	} else if (sheild_input != "A" || ep == 0) {
		player_do_sheildrelease("blue");
	}
	
	break;
	
	case 3:
	//player in red sheild
	if (doskill || allskill) {
	//if player is doing skill
		player_do_skills();
	}else if (sheild_input != "D" || ep == 0) {
		player_do_sheildrelease("red");
	}
	
	break;
	
	case 4:
	//player in blue sheild preaction
	if (image_speed > 0 && image_index > image_number - 1)
		if (move_input == "")
			player_do_idle();
		else
			player_do_move();
	break;
	
	case 5:
	//player in red sheild preaction
	if (image_speed > 0 && image_index > image_number - 1)
		if (move_input == "")
			player_do_idle();
		else
			player_do_move();
	break;
	
	case 6:
	//player in both sheild, both sheild cannot doskill
	if (sheild_input != "S" || ep == 0) {
		player_do_sheildrelease("both");
	}
	break;
	
	case 7:
	//player in both sheild preaction
	if (image_speed > 0 && image_index > image_number - 1)
		if (move_input == "")
			player_do_idle();
		else
			player_do_move();
	break;
	
	case 8:
	//player in climbing state
	if ((climb_up && g2 != 3 && mw != 3) || (climb_down && g2 == 1) || (mw != 3 && h2 != 3 && g2 !=3)) {
		player_do_idle();
	} else 
		player_do_climb();
	break;

}

//do sprite check
player_check_sprite(self);

//game over
if(hp <= 0 || y > room_height) {
	global.game_over = true;
}
	
