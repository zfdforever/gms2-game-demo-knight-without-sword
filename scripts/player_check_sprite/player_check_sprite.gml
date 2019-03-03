/*
	argument0:Enemy Instance
*/

var plyr = argument0;
var si = "";
var dir;

if (plyr.direction == 0)
	dir = 1
else 
	dir = -1;

switch(plyr.state) {
	case 0://idle
		si = "sprite_player_idle";
		break;
	case 1://walk
		si = "sprite_player_move";
		break;
	case 2://blue sheild
		si = "sprite_player_bluesheild";
		break;
	case 3://red sheild
		si = "sprite_player_redsheild";
		break;
	case 4://blue sheild pre action
		si = "sprite_player_bluerelease";
		break;
	case 5://red sheild pre action
		si = "sprite_player_redrelease";
		break;
	case 6://both sheild
		si = "sprite_player_bothsheild";
		break;
	case 7:
		si = "sprite_player_bothrelease";
		break;
	case 8:
		si = "sprite_player_climb";
		dir = 1;
		break;
}

if (sprite_get_name(plyr.sprite_index) != si) {
	plyr.sprite_index = asset_get_index(si);
	plyr.image_index = 0;	
}

plyr.image_xscale = dir;