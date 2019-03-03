
if (instance_exists(releaser))
for (var i = 0; i < ds_list_size(releaser.bulletlist); i ++) {
	if (releaser.bulletlist[|i].id == self.id) {
		ds_list_delete(releaser.bulletlist,i);
		break;
	}
}