if (!collected) {
	var skill_menu = instance_find(obj_skill_collect_menu,0);
	
	skill_menu.skill_to_show = skill_attached;
	skill_menu.show = true;

	collected = true;
}