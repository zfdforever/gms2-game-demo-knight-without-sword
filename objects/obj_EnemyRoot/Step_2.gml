if (m_state == 99 && image_speed > 0 && image_index > image_number - 1) {
	if (loot_drop_script != -1) {
		script_execute(loot_drop_script);
	}
	
	for (var i = 0; i < ds_list_size(bufflist); i++)
		instance_destroy(bufflist[|i]);
	for (var i = 0; i < ds_list_size(bulletlist); i++) {
		if (instance_exists(bulletlist[|i]))
		bulletlist[|i].remove = true;
	}
	instance_destroy();
}