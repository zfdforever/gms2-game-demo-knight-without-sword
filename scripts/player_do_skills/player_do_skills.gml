var p_attck_type = 1

if (state == 3)
p_attck_type = 2;

if (allskill)
	global.game_manager.allskill_slow_motion = true;


for (var i = 0; i < ds_list_size(skilllist); i++) {
	
	if (skilllist[|i].skill_type == 0) {
		skilllist[|i].active = true;
		skilllist[|i].allskill = allskill;
		if (reflect_target != noone)
			skilllist[|i].target = reflect_target;	
	}
}

doskill = false;
allskill = false;
reflect_target = noone;