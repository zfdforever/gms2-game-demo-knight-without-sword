var attacker = argument0;
var target = argument1;


if (attacker.attack_interval_tick <= 0) {
//if enemy is able to attack, do attack

	attacker.speed = 0;
	attacker.attack_interval_tick = attack_interval;

	if (target.x < attacker.x) {
		attacker.direction = 180;
	}
	else {
		attacker.direction = 0;
	}

} else if (attacker.image_index == attacker.attack_bullet_frame) {
// if enemy has attacked,

	system_add_bullet(attacker,target,obj_bullet0);
	
} else if (attacker.image_speed > 0 && attacker.image_index > attacker.image_number - 1) {
//if enemy attack animation is finished, jump into 0 state;
	attacker.m_state = 0;
}



