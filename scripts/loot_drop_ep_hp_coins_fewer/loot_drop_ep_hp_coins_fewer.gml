with( instance_create_layer(x+irandom_range(-20,20),y+sprite_get_height(sprite_index)/2,"loot",obj_loot_coins_fewer)) {

	self.amount = irandom_range(1,10);
	self.image_index = irandom_range(0,sprite_get_number(sprite_index) - 1);
} 

with( instance_create_layer(x+irandom_range(-20,20),y+sprite_get_height(sprite_index)/2,"loot",obj_loot_hp_fewer)) {

	self.amount = irandom_range(5,10);
	self.image_index = irandom_range(0,sprite_get_number(sprite_index) - 1);
}

with( instance_create_layer(x+irandom_range(-20,20),y+sprite_get_height(sprite_index)/2,"loot",obj_loot_ep_fewer)) {

	self.amount = irandom_range(5,10);
	self.image_index = irandom_range(0,sprite_get_number(sprite_index) - 1);
}