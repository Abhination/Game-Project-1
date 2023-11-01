// Draw Event of obj_controller

// Calculate the starting X position for life sprites
var startX = 32;
var spacing = 52; // Adjust this as needed

// Draw health bar
draw_rectangle_colour(15, 16, 117, 33, c_black, c_black, c_black, c_black, true);
draw_rectangle_colour(16, 16, 16 + health, 32, c_yellow, c_yellow, c_yellow, c_yellow, false);
draw_text(45, 16, string(health));

// Draw score
draw_set_color(c_black);
draw_text(16, 43, "Score: " + string(score));

// Draw remaining lives
for (var i = 0; i < lives; i++)
{
    draw_sprite(spr_life, 0, startX + i * spacing, 83);
}


if (global.game_over) 
{
	draw_set_color(c_black);
	draw_set_halign(fa_center)
	draw_text(room_width / 2, room_height / 2, "Game Over! Press R to restart.")
}