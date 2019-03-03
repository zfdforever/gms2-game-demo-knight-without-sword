if (global.game_over) {
	global.pause = true;
	
	var skill_collect_menu = instance_find(obj_skill_collect_menu,0);
	var particle_creator = instance_find(obj_particle_creator,0); 
	instance_destroy(skill_collect_menu);
	instance_destroy(particle_creator);
	
	room_goto(0);
	
	
	instance_destroy();
}