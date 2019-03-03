self.attack = instance_find(obj_player,0).maxhp * attack_hundred_percent / 100;

if (first_attack_delay_tick > 0) {
	first_attack_delay_tick --
} else {
	if (attack_interval_tick <= 0) {
		system_add_bullet(self,self,obj_bullet_trap_01);
		attack_interval_tick = attack_interval
	} else {
		attack_interval_tick --;
	}
}