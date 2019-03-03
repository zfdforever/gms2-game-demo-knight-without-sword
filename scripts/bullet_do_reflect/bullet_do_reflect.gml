var bullet = argument0;

//system_action_speed_change(0.1);

bullet.camp = 0;//change bullet's camp to player
bullet.target_Obj = bullet.releaser;
bullet.target_pointx = bullet.releaser.x;
bullet.target_pointy = bullet.releaser.y;

last_time_tick = last_time;

//unfinishied