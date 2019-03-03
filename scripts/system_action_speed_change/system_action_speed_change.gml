var speedscale = argument0;

var instance = layer_get_all_elements("instance");

for (var i = 0; i < array_length_1d(instance); i++)
{
    if (layer_get_element_type(instance[i]) == layerelementtype_instance)
    {
		var layerelement = instance[i];
		var inst = layer_instance_get_instance(layerelement);
		inst.image_speed = speedscale;
		inst.speed = inst.move_speed*speedscale;
    }
}