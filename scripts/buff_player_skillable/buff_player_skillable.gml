var target = argument0;
var action = argument1;

if (instance_exists(target))
if (action == "dobuff") {
	target.skillable= true;
	if (target.state == 2)
	//in blue skillable
		target.image_blend = make_color_rgb(0,80,225);
	else if (target.state == 3)
	//in red skillable
		target.image_blend = make_color_rgb(225,80,0);
		
}
else {
	target.skillable= false;
	target.image_blend = -1;
}