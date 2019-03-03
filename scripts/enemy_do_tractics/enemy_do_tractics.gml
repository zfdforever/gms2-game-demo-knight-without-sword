var er = argument0;

//if hit
if (er.hit && er.hp > 0) {
	system_add_buff(er,obj_buff_enmy_hit);
	er.hit = false;
}

if (er.hp <= 0) {
	er.m_state = 99;
	return;
}

	


if (er.m_type == "wander" || er.m_type == "blink") {
//if enemy is wanderer

	if (er.m_state == 4)
	//if enemy is attcking, return.
	return;

	var player_in_same_height = false;
	var instPlayer = instance_find(obj_player,0);
	
	
	if (real(er.y&$ffffffc0) == real(instPlayer.y&$ffffffc0))
	player_in_same_height = true;
	
	if ((distance_to_object(obj_player) > er.alarm_range || !player_in_same_height) && er.wander_range == 0) {
		er.m_state = 0;
	} else if (distance_to_object(obj_player) > er.alarm_range || !player_in_same_height) {
		er.m_state = 1;
	} else if (er.safe_range > 0 && distance_to_object(obj_player)<er.safe_range && er.attack_interval_tick >0) {
	//if this enemy has a safe range,and player is in safe range, jump into retreat state
		er.m_state = 3;
	} else if (distance_to_object(obj_player) > er.attack_range && attack_interval_tick <= 0) {
	//if player is out of safe range ,and out of attack range , jump into chasing state
		er.m_state = 2;
	} else if (distance_to_object(obj_player) <= er.attack_range && er.attack_interval_tick <= 0) {
	//if player is in the attack range ,jump into attack state
		er.m_state = 4;
	} else {
	//if else jump into wander state
		if (er.m_state == 3)
			er.direction -= 180;
		er.m_state = 0;
	}

} 


