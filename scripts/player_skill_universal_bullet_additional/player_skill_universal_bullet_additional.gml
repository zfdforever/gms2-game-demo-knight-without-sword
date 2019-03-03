var chance,compare_chance;

if (flag1) {
	release_tick = 3;
	release_count = 0;
	flag1 = false;
}


if (target == noone) {
	active = false;
	return
}


if (release_count < level) {
	release_tick --
	if (release_tick == 0) {
		
		randomize();
		chance = random_range(0,100);
		compare_chance = allskill? allskill_chance:release_chance;
		compare_chance += allskill? releaser.extra_chance_allskill:releaser.extra_chance_doskill;
		compare_chance += releaser.extra_chance_all;
		
		if(chance <= compare_chance)
			system_add_bullet(releaser,target,obj_bullet_direction_track_universal_1);
		
		release_tick = 3;
		release_count ++;
	}	
} else {
	
	active = false;
	target = noone;
	allskill = false;
}
	
