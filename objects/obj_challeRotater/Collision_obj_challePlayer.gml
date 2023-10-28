/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x, y, obj_challePlayer)) 
{
    var push_speed = 1; // Adjust the push speed as needed
    var push_direction = 0; // 0 for left, 1 for right (adjust as needed)

    // Calculate the push direction
    if (push_direction == 0) 
	{
        obj_challePlayer.x -= push_speed;
    } else {
        obj_challePlayer.x += push_speed;
    }
}
