/*
	argument0:Enemy Instance
*/

var er = argument0;
var si = "";
var dir;

if (er.direction == 0)
	dir = 1
else 
	dir = -1;

switch(er.m_state) {
	case 0://idle
		si = "sprite_" + er.m_name + "_idle";
		break;
	case 1://wander
		si = "sprite_" + er.m_name + "_walk";
		break;
	case 2://chasing
		si = "sprite_" + er.m_name + "_walk";
		break;
	case 3://retreat
		si = "sprite_" + er.m_name + "_walk";
		break;
	case 4://attack
		si = "sprite_" + er.m_name + "_attack" + attack_suffix;
		break;
	case 5://guard
		si = "sprite_" + er.m_name + "_idle";
		break;
	case 90://hit
		si = "sprite_" + er.m_name + "_hit";
		break;
	case 99://die
		si = "sprite_" + er.m_name + "_die";
		break;
}

if (sprite_get_name(er.sprite_index) != si) {
	er.sprite_index = asset_get_index(si);
	er.image_index = 0;	
}

if (sprite_reverse)
dir *= -1;
er.image_xscale = dir;