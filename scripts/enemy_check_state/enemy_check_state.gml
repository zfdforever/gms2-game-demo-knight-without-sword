/*

this is for enemy execute action in different state.

*/
 
var er = argument0;

switch (er.m_state) 
{
	case 0:
	//idle state, do idle
		enemy_do_idle(er);
		break;
	case 1:
	//wander state, do wandering
		enemy_do_wandering(er);
		break;
	case 2:
	//chasing state, chasing playere
		enemy_do_chasing(er);
		break;
	case 3:
	//retreat state, do retreat	
		enemy_do_retreat(er);
		break;
	case 4:
	//attack state, do attack
		script_execute(er.attack_script,er,instance_find(obj_player,0));
		break;
	case 99:
		enemy_do_die(er);
		break;
}