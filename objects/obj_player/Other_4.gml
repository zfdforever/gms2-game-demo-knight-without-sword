var o_born = instance_find(obj_player_born,0);
x = o_born.x;
y = o_born.y

for (var i = 0 ; i < ds_list_size(bufflist); i++) {
	var buff = bufflist[|i].attach_to = self;
}

for (var i = 0 ; i < ds_list_size(skilllist); i++) {
	skilllist[|i].releaser = self;
}