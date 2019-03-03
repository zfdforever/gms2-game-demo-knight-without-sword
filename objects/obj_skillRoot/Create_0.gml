/*
	skill type: 
		0:block skill,will active when block successfully
		1:ability skill,will increase player's ability, active when collected
		2:kill skill,active when kill an enemy
		3:hit skill,active when hit an enemy
		4:kill skill,active when kill an enemy

*/


active = false;
target = noone;
releaser = noone;
level = 1;	//collect same skill will increase the level
allskill = false; //if player is in allskill state, set this to true;


flag1 = true;	//for inner calculation
counter1 = 0;	//for inner calculation

remove = false;