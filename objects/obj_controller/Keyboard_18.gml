if (keyboard_check_pressed(ord("G"))) {
    // Cheat code: Alt + G to restart the game
    game_restart();
}
if (keyboard_check_pressed(ord("L"))) {
    // Cheat code: Alt + L to increase lives by 5
    lives += 5;
}
if (keyboard_check_pressed(ord("N"))) {	
    // Cheat code: Alt + N to move to the next room
    room_goto_next();
}
if (keyboard_check_pressed(ord("1"))) {
    // Cheat code: Alt + N to move to the next room
    room_goto(Room1);
}
if (keyboard_check_pressed(ord("2"))) {
    // Cheat code: Alt + N to move to the next room
    room_goto(Room2);
}
if (keyboard_check_pressed(ord("3"))) {
    // Cheat code: Alt + N to move to the next room
    room_goto(Room3);
}
if (keyboard_check_pressed(ord("C"))) {
    // Cheat code: Alt + R to restart the room
    room_goto(room_challenge);
}