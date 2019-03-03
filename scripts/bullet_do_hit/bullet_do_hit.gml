var bullet = argument0;
var target = argument1;

target.hp -= bullet.attack;
if (target.hp < 0)
	target.hp = 0;
	
bullet.efficient = false;

target.hit = true;