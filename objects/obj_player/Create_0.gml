move_input = 0;
sheild_input = 0;
climb_input = 0;
yspeed = 0;
yaccel = 0;
yspeedmax = 8;
standing_state = 0;
hit = false;

g1=-1;
g2=-1;
g3=-1;
lw=-1;
rw=-1;
mw=-1;
h1=-1;
h2=-1;
h3=-1;
lm=-1;
rm=-1
climb_upable=false;
climb_downable=false;


predirection = -1; // for uphill offset record
go_uphill = false;
go_downhill = false;

climb_up = false;
climb_down = false;
climb_speed = 5;

skillable = false;	//skillable == ture , player can do all skill
doskill = false;	//when reflect a bullet, do skill, will calulate chance
allskill = false;	//reflect a bullet in skillable state, all skills will be released, 100% chance

move_speed = 5;
xspeedl = 5;
xspeedr = 5;
camp = 0;
state = 0;

ep_cost_once_base = 10;
ep_cost_once_both_base = 0;		
ep_cost_last_base = 0.3;			
ep_cost_last_both_base = 0;
ep_gain_unhold_base = 0.01;

ep_cost_once = ep_cost_once_base;			//each time player do sheild will cost ep
ep_cost_once_both = ep_cost_once_both_base;		//both sheild cannot do any skill, cost lower than others
ep_cost_last = ep_cost_last_base;			//player holding sheild will cost ep each frame
ep_cost_last_both = ep_cost_last_both_base;
ep_gain_unhold = ep_gain_unhold_base;

maxhp_base = 100;
maxep_base = 100;
attack_base = 5;

extra_chance_all = 0;	//when do judgment,any chance will plus extra_chance;
extra_chance_doskill = 0;
extra_chance_allskill = 0;

maxhp = maxhp_base;
maxep = maxep_base;
hp = maxhp;
ep = maxep;
attack = attack_base;

coins = 0;

reflect_target = noone;

bufflist = ds_list_create();
bulletlist = ds_list_create();
skilllist = ds_list_create();

var gm = instance_find(obj_GameManager,0);
gm.o_player = self