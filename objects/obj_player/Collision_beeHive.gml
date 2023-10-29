// Collision event with beeHive
state = State.OnBeeHive;
sprite_index = spr_playerOn;
//image_xscale=0.25;
//image_yscale=0.25;
score+=global.backpack;
global.backpack=0;
if(score>=5)
{
	room_goto(room_end);
}
//show_debug_message(obj_honeyDrop.backpack);
//on_beehive = true; // Set the variable to true
