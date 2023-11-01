/// @description Insert description here
// You can write your code in this editor
var attack_offset_x = 74;
var attack_offset_y = 0;
var player = instance_find(obj_player, 0);
var attack_width = 32; 
var attack_height = 32;

if (player != noone) {
	x = player.x + attack_offset_x * player.image_xscale;
	y = player.y + attack_offset_y;
	
	image_xscale = attack_width / sprite_width;
    image_yscale = attack_height / sprite_height;
}

if lifespan > 0 {
	lifespan--;
} else {
	instance_destroy()
}
