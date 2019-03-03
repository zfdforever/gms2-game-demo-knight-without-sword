/*
bullet attack type:
	0:none
	1:blue
	2:red

bullet move type:
	0:right now
	1:target track
	2:point track
	3:direction track
	4:point track parabola

camp:
	0:player
	1:enemy
	
state:
	0:none
	1:moving
	2:exploding

*/

//attack_type = 0;
//move_type = 0;
camp = 1;
releaser = "";
target_Obj = "";		//targe track bullet will fix direction to object
target_pointx = 0;		//point track bullet will fix direction to point
target_pointy = 0;		
target_direction = 0;	//direction track bullet will not fix direction during moving;
//move_speed = 0;

efficient = true;

explode_yspeed = 0;
explode_xspeed = 0;

state = 0;
attack = 0;

collision = false;
c_target = noone;
reflected = false;	//a bullet can only relfect once
remove = false;

last_time_tick = last_time;

if (move_type == 3 && last_time == -1) {
//if direction track bullet has no last time ,set a default time to it
	last_time = 1800;
}