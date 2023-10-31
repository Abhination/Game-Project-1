// Player movement
var move_x = 0;
var move_y = 0;

// Limit player movement within the room boundaries
x = clamp(x, 0, room_width);
y = clamp(y, 0, room_height);

// Set movement speed
var movement_speed = 4; // Adjust as needed

// Check for arrow key presses
var up_key = keyboard_check(vk_up);
var down_key = keyboard_check(vk_down);
var left_key = keyboard_check(vk_left);
var right_key = keyboard_check(vk_right);
//var w_key = keyboard_check(ord("W"));
var f_key = keyboard_check(ord("F"));
var a_key = keyboard_check(ord("A"));
var d_key = keyboard_check(ord("D"));


if (!place_meeting(x, y, beeHive) and health>0)
{
	state = State.Flying; // Automatically switch to flying mode when not on the hive
}

switch (state)
{
    case State.Flying:
        // Flying mode: Apply flying controls
		image_angle=0;
		
        if (up_key)
        {
			//image_angle=0;
            move_y -= movement_speed; // Move upward
        }
        if (down_key)
        {
			//image_angle=0;
            move_y += movement_speed; // Move downward
        }
        if (left_key)
        {
			//image_angle=0;
            move_x -= movement_speed; // Move left
			image_xscale = -0.5;
        }
        if (right_key)
        {
			//image_angle=0;
            move_x += movement_speed; // Move right
            image_xscale = 0.5; // Set the sprite to its original direction when moving right
        }
		
		break;

   /* case State.OnBeeHive:
        // On the beeHive: Apply walking controls
		//image_xscale=0.25;
		//image_yscale=0.25;
		
        if (up_key)
        {
            move_y -= movement_speed; // Move upward
			image_angle=0;
			//image_yscale=0.25
        }
        if (down_key)
        {
            move_y += movement_speed; // Move downward
			image_angle=180;
			//image_yscale=0.25
        }
        if (left_key)
        {
            move_x -= movement_speed; // Move left
			image_angle=90;
            //image_xscale = 0.25; // Flip the sprite when moving left
        }
        if (right_key)
        {
            move_x += movement_speed; // Move right
            image_angle=270;
			//image_xscale = 0.25; // Set the sprite to its original direction when moving right
        }

        if (f_key)
        {
			sprite_index=spr_player;
            state = State.Flying; // Switch to flying mode when pressing "F"
        }	
        break;*/
		
}

// Update the bee's position
x += move_x;
y += move_y;

if(health<=0)
{
	sprite_index=spr_playerDie;
	obj_player.instance_destroy();
}

if keyboard_check_pressed(vk_space){
	if can_attack {
		sprite_index=spr_enemyAttackPlayer
		
		if place_meeting(x, y, obj_enemywalk) {
			var enemy = instance_place(x, y, obj_enemywalk);
			instance_destroy(enemy)
		}
		
		var attack_x = x + image_xscale * (sprite_width / 2 + 16);
		var attack_y = y;
		
		var attack_instance = instance_create_layer(attack_x, attack_y, "Instances", obj_playerAttack);
		attack_instance.image_xscale = image_xscale;
		
		can_attack = false;
		attack_cooldown = 120
		attack_timer = 100;
		invinc_timer = 100;
	}
}

if !can_attack {
	attack_cooldown--;
	
	if attack_cooldown <= 0 {
		can_attack = true;
		attack_cooldown = 0;
	}
	
	if invinc_timer > 0 {
		invinc_timer--;
		
		if invinc_timer <= 0 {
			invinc_timer = 0;
		}
	}
}

if attack_timer > 0 {
	attack_timer--;
	
	if attack_timer <= 0 {
		sprite_index = spr_player;
	}
}
	






