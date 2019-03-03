var br = argument0;
var c_target = argument1;

if (!br.efficient || !instance_exists(c_target))
return;

if (c_target.camp == 0 && br.camp == 1) {
//if enemy bullet collision player

	var is_direction_fit = true ;
	var ad;

	//check if player is in correct direction
	ad = angle_difference(br.direction,c_target.direction);
	if (ad > -90 && ad <= 90 )
		is_direction_fit = false;

	if (br.state != 2) {
		
		if (is_direction_fit && 
		((c_target.state == 2 && br.attack_type == 1) 
			|| (c_target.state == 3 && br.attack_type == 2)
			|| c_target.state == 6)) {
		//if player is in correct sheild and direction is correct
			if (c_target.state == 6) {
			//both sheild state can only block bullet
				bullet_do_explode(br);
			} else {
				if (c_target.skillable) {
				//if player is in skillable state, do all skill
					if (!reflected) {
						bullet_do_reflect(br);
						c_target.allskill = true;
						if (instance_exists(br.releaser))
							c_target.reflect_target = br.releaser;
							
						reflected = true;
					}
					
				} else {
				//if player is not in skillable state, do skill
					if (!reflected) {
						bullet_do_reflect(br);
						c_target.doskill = true;
						if (instance_exists(br.releaser))
							c_target.reflect_target = br.releaser;	
						reflected = true;
					}					
				}
			}
		} else {
		//if player isnot in correct sheild or direction is wrong
			bullet_do_explode(br);
			bullet_do_hit(br,c_target);
		}
	}
}

if (c_target.camp == 1 && br.camp == 0) {
//if player bullet collision enemy
	if (self.state != 2 && c_target.m_state != 99) {
		
		bullet_do_explode(br);
		
		if (br.attack_type != c_target.defense_type)
			bullet_do_hit(br,c_target);
	}
}