if (instance_exists(releaser) && variable_instance_exists(releaser,"skilllist") && ds_exists(releaser.skilllist,ds_type_list)) {
	for (var i = 0 ; i < ds_list_size(releaser.skilllist); i++) {
		if (releaser.skilllist[|i].id == self.id)
			ds_list_delete(releaser.skilllist,i);
	}
}