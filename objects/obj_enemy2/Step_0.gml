// Inherit the parent event
event_inherited();

if instance_exists(obj_player)
{
    path_end();
    // Aim at the player
    direction = point_direction(x, y, obj_player.x, obj_player.y);

    // Set speed to the desired chase speed (hsp in this case)
    // speed = hsp;

    // Move in the direction of the player
    x += lengthdir_x(speed, direction);
    y += lengthdir_y(speed, direction);
}
