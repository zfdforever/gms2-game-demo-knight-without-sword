randomize();

tilesize = 64;
map = layer_tilemap_get_id("collisions");
global.pause = false;
global.game_over = false;

o_player = instance_find(obj_player,0);

img_index = 0;

allskill_slow_motion = false;

global.difficult = 1;
global.enemydata_basic_maxhp = 0;
global.enemydata_basic_attack = 5;
global.enemydata_basic_attack_interval = 90;
global.enemydata_strong_degree = 2

global.gamble_price = 100;
global.gamble_price_degree = 1.1;


system_skill_random_pool_init();


