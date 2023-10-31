/// @description Insert description here
// You can write your code in this editor


// Collision with obj_block
if place_meeting(x, y, obj_block2)
{
    // Separate the objects to prevent overlap
    while (place_meeting(x, y, obj_block2))
    {
        x += sign(xprevious - x);
        y += sign(yprevious - y);
    }
}
