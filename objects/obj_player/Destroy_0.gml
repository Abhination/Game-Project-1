/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor

// Decrease the global lives variable

	
// Check if the player has remaining lives
if (lives > 0) 
{
	lives -= 1;
	//show_debug_message(lives);
    // Restart the room
    room_restart();
	health=100;
	//show_debug_message(lives);
} 
else 
{
	//show_debug_message(lives);
    // No lives left, set game_over to true
    global.game_over = true;
}


