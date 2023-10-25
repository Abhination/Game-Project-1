/// @description Insert description here
// You can write your code in this editor

// Step Event of obj_honeyDrop
if (visible_timer >= 0) {
    visible_timer++;

    if (visible_timer >= invisible_duration) {
        // The invisible duration has passed; make the honey drop visible again
        image_alpha = 1;
        visible_timer = -1; // Reset the timer
    }
}

