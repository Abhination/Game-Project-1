/// @description Insert description here
// You can write your code in this editor

if room == Room1 || Room2 || Room3 || room_challenge1
{
if keyboard_check_pressed(ord("P"))
    {
    paused = !paused;
    if paused == false
        {
        instance_activate_all();
        surface_free(paused_surf);
                paused_surf = -1;
        }
    }
if paused == true
    {
    alarm[2]++;
    alarm[3]++;
    }
}

//show_debug_message(lives);

