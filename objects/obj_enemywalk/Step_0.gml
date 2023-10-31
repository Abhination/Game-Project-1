/// @description Insert description here
// You can write your code in this editor
// Collision event for obj_player with obj_enemy
sprite_index = spr_enemy2; // Change to the attack sprite

if (place_meeting(x, y+speed, obj_path )) {
    // If there's a block above, change direction
	
    speed = -speed; // Reverse the movement direction
	image_xscale=-image_xscale;
	
	//show_debug_message(direction);
}

// Move along the y-axis
y += speed;

