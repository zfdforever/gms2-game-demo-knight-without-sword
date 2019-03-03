var sk = argument0;
var plyr = instance_find(obj_player,0);
var new_skill = true;

show_debug_message(ds_list_size(plyr.skilllist));


for (var i = 0; i < ds_list_size(plyr.skilllist); i++) {
//if player already has this skill, increase the skill level
	if (plyr.skilllist[|i].skill_name == sk.skill_name) {
		plyr.skilllist[|i].level ++;
		if (plyr.skilllist[|i].skill_type == 1)
			plyr.skilllist[|i].active = true;
		new_skill = false;
		
		sk.remove = true;
	}
}

if (new_skill) {
//if this skill is new skill, add it to player
	sk.releaser = plyr;
	sk.persistent = true;
	ds_list_add(plyr.skilllist, sk);
	if (sk.skill_type == 1)
		sk.active = true;
	
	//with (instance_create_layer(0,0,"system",sk)) {
	//	self.releaser = plyr;
	//	ds_list_add(plyr.skilllist, self);
	//	if (self.skill_type == 1)
	//		self.active = true;
	//}
}