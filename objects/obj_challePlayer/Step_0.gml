// Limit player movement within the room boundaries
x = clamp(x, 0, room_width - sprite_width);
y = clamp(y, 0, room_height - sprite_height);
sprite_index=spr_player;
if (!keyboard_check(vk_anykey)) {
    sprite_index=spr_playeridle;	
}
if (vspeed > 0) 
{
    if (instance_place(x, y + vspeed, obj_challeBlock) and instance_place(x + vspeed, y, obj_challeBlock)) 
	{
		 
        // There's a collision with obj_block, so stop falling
        vspeed = 0;
        
        // Adjust the player's y position to be just above the ground
        y = floor(y);
		x = floor(x);
    }
}

vspeed = min(vspeed, 10);

if (vspeed > 0) 
{
    if (instance_place(x, y - vspeed, obj_challeRotater) and instance_place(x - vspeed, y, obj_challeRotater)) 
	{
		
        // There's a collision with obj_block, so stop falling
        vspeed = 0;
        
        // Adjust the player's y position to be just above the ground
        y = floor(y);
		x = floor(x);
    }
}

// Check for left movement
if keyboard_check(vk_left) {
    image_xscale = -0.25; // Flip the sprite horizontally
    if !place_meeting(x - move_speed, y, obj_challeRotater) {
        x -= move_speed; // Move to the left if there are no obstacles
    }
}

// Check for right movement
if keyboard_check(vk_right) {
    image_xscale = 0.25; // Set sprite to its default scale
    if !place_meeting(x + move_speed, y, obj_challeRotater) {
        x += move_speed; // Move to the right if there are no obstacles
    }
}

// Check if the player is trying to jump
if keyboard_check_pressed(vk_up) {
    // Check if the player is on the ground or a platform
	sprite_index=spr_playerjump;
	//alarm[0]=room_speed*3;
    if (place_meeting(x, y + 1, obj_challeBlock) || place_meeting(x, y + 1, obj_challeRotater)) {
        // Set vspeed to jump_height to apply vertical momentum
        vspeed = jump_height-5;
    }
}
gravity=0.25;
// Apply gravity to make the player come back down
//vspeed += gravity; // You need to define 'gravity' as a positive value in your Create event
