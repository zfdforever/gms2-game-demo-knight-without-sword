if (buff_effect != -1)
script_execute(buff_effect,attach_to,"undobuff");

if (instance_exists(attach_to))
for (var i = 0; i < ds_list_size(attach_to.bufflist); i ++) {
	if (attach_to.bufflist[|i].id == self.id) {
		ds_list_delete(attach_to.bufflist,i);
		break;
	}
}