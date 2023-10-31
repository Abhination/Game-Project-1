/// @description Insert description here
// You can write your code in this editor
var attack_offset_x = 64;
var attack_offset_y = 0;
var player = instance_find(obj_player, 0);

if (player != noone) {
	x = player.x + attack_offset_x * player.image_xscale;
	y = player.y + attack_offset_y;
}

if lifespan > 0 {
	lifespan--;
} else {
	instance_destroy()
}
