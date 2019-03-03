if (self.difficult == "weak") {
	self.attack = global.enemydata_basic_attack + global.difficult;
	self.maxhp = self.attack;
	self.hp = self.maxhp;
	self.attack_interval = global.enemydata_basic_attack_interval*2*(15/(15+global.difficult-1));
} else if (self.difficult == "normal") {
	self.attack = global.enemydata_basic_attack * global.difficult;
	self.maxhp = self.attack * global.difficult + global.enemydata_basic_maxhp;
	self.hp = self.maxhp;
	self.attack_interval = global.enemydata_basic_attack_interval*(15/(15+global.difficult-1));
} else if (self.difficult == "strong") {
	self.attack = global.enemydata_basic_attack * (global.difficult+global.enemydata_strong_degree);
	self.maxhp = self.attack * (global.difficult + global.enemydata_strong_degree) + global.enemydata_basic_maxhp;
	self.hp = self.maxhp;
	self.attack_interval = global.enemydata_basic_attack_interval*(10/(10+global.difficult-1));
}
