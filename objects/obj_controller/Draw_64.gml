// Draw Event of obj_controller

// Calculate the starting X position for life sprites
var startX = 16;
var spacing = 72; // Adjust this as needed

// Draw health bar
draw_rectangle(16, 16, 16 + health, 32, false);
draw_text(32 + health, 16, "Health: " + string(health));

// Draw score
draw_text(16, 64, "Score: " + string(score));

// Draw remaining lives
for (var i = 0; i < lives; i++)
{
    draw_sprite(spr_life, 0, startX + i * spacing, 112);
}


if (global.game_over) 
{
	draw_set_halign(fa_center)
	draw_text(room_width / 2, room_height / 2, "Game Over! Press R to restart.")
}