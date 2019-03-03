//add normal skill into normal pool;
global.skills[0,0] = obj_loot_skill_same_bullet_additional;
global.skills[0,1] = obj_loot_skill_ep_gain_increase_few;
global.skills[0,2] = obj_loot_skill_maxhp_increase_few;

//add rare skill into rare pool
global.skills[1,0] = obj_loot_skill_universal_bullet_additional;
//add perfect skill into perfect pool
global.skills[2,0] = obj_loot_skill_universal_bullet_additional;
//add epic skill into epic pool
global.skills[3,0] = obj_loot_skill_universal_bullet_additional;
//add legend skill into legend pool
global.skills[4,0] = obj_loot_skill_universal_bullet_additional;

//normal rate
global.gamble_rate[0] = 400;
//rare rate
global.gamble_rate[1] = 200;
//perfect rate 
global.gamble_rate[2] = 100;
//epic rate
global.gamble_rate[3] = 50;
//legend rate
global.gamble_rate[4] = 25;