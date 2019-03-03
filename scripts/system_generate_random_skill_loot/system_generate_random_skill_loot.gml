var total_rate = 0;
var random_number = 0;
var skill_rare = 0;
var total_skill = 0;
var skill_number = 0;

for (var i = 0; i < 5; i ++)
	total_rate += global.gamble_rate[i];
	
randomize();
random_number = random_range(0,total_rate);

for (var i = 4; i >= 0 ; i --) {
	if (random_number < global.gamble_rate[i]){
		skill_rare = i;
		break;
	}
}


total_skill = array_length_2d(global.skills,skill_rare) - 1;
skill_number = irandom_range(0, total_skill);


show_debug_message("total_skill" + string(total_skill));
show_debug_message("skill_number" + string(skill_number));

return global.skills[skill_rare,skill_number];