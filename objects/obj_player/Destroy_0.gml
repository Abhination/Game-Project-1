/// @description Insert description here
// You can write your code in this editor
// Decrease the global lives variable

	
// Check if the player has remaining lives
lives --;
health=100;

if (lives > 0) 
{
	 room_restart();
	 
	//show_debug_message(lives);
    // Restart the room
   
	
	//show_debug_message(lives);
} 
else 
{
	//show_debug_message(lives);
    // No lives left, set game_over to true
    global.game_over = true;
}
