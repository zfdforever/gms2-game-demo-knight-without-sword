var player = instance_find(obj_player,0);
player.hp = player.maxhp;
player.ep = player.maxep;

system_add_buff(player,obj_buff_plyr_heal_hp);
system_add_buff(player,obj_buff_plyr_heal_ep);