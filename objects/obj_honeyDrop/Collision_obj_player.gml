// Collision Event with obj_honeyDrop
if (visible_timer == -1) {
    // The honey drop is currently visible
    global.backpack += 1; // Increment the backpack variable
	if(global.backpack>=3)
	{
		global.backpack=3;
	}
    visible_timer = 0; // Start the timer to make the honey drop invisible
    image_alpha = 0; // Make the honey drop invisible
	//show_debug_message(backpack);
}
