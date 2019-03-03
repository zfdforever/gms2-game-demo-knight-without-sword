var attacker = argument0;
var target = argument1;

if (attacker.attack_interval_tick <= 0) {
//if enemy is able to attack, do attack
	var rd = random_range(0,100);
	if (rd <= 50)
		do_attack_1 = true;
	else 
		do_attack_1 = false;
	attacker.speed = 0;
	attacker.attack_interval_tick = attack_interval * irandom_range(1,4);

	if (target.x < attacker.x) {
		attacker.direction = 180;
	}
	else {
		attacker.direction = 0;
	}

} else if (attacker.image_index == attacker.attack_bullet_frame) {
// if enemy has attacked,
	if (do_attack_1)
		system_add_bullet(attacker,target,obj_bullet_releaser_blue_1);
	else
		system_add_bullet(attacker,target,obj_bullet_releaser_red_1);
	
} else if (attacker.image_speed > 0 && attacker.image_index > attacker.image_number - 1) {
//if enemy attack animation is finished, jump into 0 state;
	attacker.m_state = 0;
	
	var rd = random_range(0,100);
	
	if (rd <= 50) {
		attacker.x = target.x + attacker.safe_range;
	}
	else {
		attacker.x = target.x - attacker.safe_range;
	}
}

if (do_attack_1)
	attack_suffix = "_01";
else
	attack_suffix = "_02";

