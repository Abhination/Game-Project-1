/// @description Insert description here
// You can write your code in this editor
var random_x = random_range(0, room_width); // Generate a random x-coordinate within the room's width
var random_y = random_range(0, room_height); // Generate a random y-coordinate within the room's height

instance_create_layer(random_x,random_y, "Instances", obj_enemywalk);

