/*

bullet check sprite each frame

*/
 
var br = argument0;
var dir,si="";

if (br.direction == 0)
	dir = 1
else 
	dir = -1;
	
switch (br.state){
	case 0:
	break;
	
	case 1:
		si = "sprite_" + br.b_name ;
	break;
	
	case 2:
		si = "sprite_" + br.b_name + "_explode";
	break;
}

if (sprite_get_name(br.sprite_index) != si) {
	br.sprite_index = asset_get_index(si);
	br.image_index = 0;	
}

br.image_xscale = dir;