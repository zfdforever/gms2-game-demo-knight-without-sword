///system_add_bullet(releaser,target,bullet)

var releaser = argument0;
var target = argument1;
var bullet = argument2;
var dir = 0;

if (releaser.direction == 180)
	dir = -1;
else 
	dir = 1;

with (instance_create_layer(releaser.x ,releaser.y ,"bullet",bullet)) {
	
	self.releaser = releaser;
	if (instance_exists(target)) {
		self.target_Obj = target;
		self.target_pointx = target.x;
		self.target_pointy = target.y;
	}
	self.camp = releaser.camp;
	self.attack = releaser.attack;
	self.target_direction = releaser.direction;
	
	self.x += dir*self.xoffset;
	self.y += self.yoffset;
	
	ds_list_add(releaser.bulletlist,self);
}