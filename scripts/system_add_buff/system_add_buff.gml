var buff_attach_to = argument0;
var buff = argument1;

with (instance_create_layer(0,0,"system",buff)) {
	attach_to = buff_attach_to;
	ds_list_add(buff_attach_to.bufflist,self);
}