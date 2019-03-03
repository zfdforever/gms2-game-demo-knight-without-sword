camp = 1;
bornPosX = x;
attack_interval_tick = 0; //every time enemy do attack, set attack_interval_tick = attack_interval
direction = 180;
hp = maxhp;
hit = false;

bufflist = ds_list_create();
bulletlist = ds_list_create();

attack_suffix = "";
