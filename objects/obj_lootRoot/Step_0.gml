/*

	resource type:
		0:coins
		1:hp
		2:ep

*/

if (collected && efficient) {
	efficient = false;
	
	var plyr = instance_find(obj_player,0);
	
	switch (resource_type) {
	
		case 0:
		//if resource is coins
			plyr.coins += amount;
		break;
		
		case 1:
		//if resource is hp	
			plyr.hp += amount;
			if (plyr.hp > plyr.maxhp)
				plyr.hp = plyr.maxhp;
		break;
		
		case 2:
		//if resource is ep
			plyr.ep += amount;
			if (plyr.ep > plyr.maxep)
				plyr.ep = plyr.maxep;
		break;
	
	}
}