/*

enemy state:
	0:idle
	1:wander
	2:chasing
	3:retreat
	4:attack
	5:guard
	
	90:hit
	99:die
		
*/

if (global.pause) {

	state = 0;
	speed = 0;
	exit;
}

//if enemy is in attack cool down, reduce the attack cd
if (self.attack_interval_tick > 0)
	self.attack_interval_tick --;

attack_suffix = "";

//do tractics
enemy_do_tractics(self);

//execute state checking
enemy_check_state(self); 

//change sprite after state checking
enemy_check_sprite(self);