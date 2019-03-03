///system_add_particle(x,y,particle_type,number)
var xx = argument0;
var yy = argument1;
var part_type = "particle_type_" + argument2;
var num = argument3;

var obc = instance_find(obj_particle_creator,0);

part_particles_create(obc.particle_system_bottom,xx,yy,variable_instance_get(obc,part_type),num);
