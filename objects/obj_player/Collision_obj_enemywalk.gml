// Collision event for obj_player with obj_enemy
 // Change to the attack sprite
//show_debug_message(sprite_index);
if(keyboard_check(ord("A")))
{
	x+=10;
	y+=0;
	//sprite_index = spr_enemyAttackPlayer;
	//image_speed=0.1;
	alarm[1]=room_speed/4;
}
else
{
	x+=10;
	y+=0;
	alarm[1]=room_speed/4;
}
//alarm[2]=room_speed;//to make attacking visible

