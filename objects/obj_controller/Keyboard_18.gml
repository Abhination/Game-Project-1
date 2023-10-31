if (keyboard_check_pressed(ord("G"))) {
    // Cheat code: Alt + G to restart the game
    room_restart();
}
if (keyboard_check_pressed(ord("L"))) {
    // Cheat code: Alt + L to increase lives by 5
    lives += 5;
}
if (keyboard_check_pressed(ord("B"))) {	
    // Cheat code: Alt + B to move to the previous room
    room_goto_previous();
}
if (keyboard_check_pressed(ord("N"))) {	
    // Cheat code: Alt + N to move to the next room
    room_goto_next();
}
if (keyboard_check_pressed(ord("1"))) {
    // Cheat code: Alt + 1 to move to room1
    room_goto(Room1);
}
if (keyboard_check_pressed(ord("2"))) {
    // Cheat code: Alt + 2 to move to room2
    room_goto(Room2);
}
if (keyboard_check_pressed(ord("3"))) {
    // Cheat code: Alt + 3 to move to room3
    room_goto(Room3);
}
if (keyboard_check_pressed(ord("C"))) {
    // Cheat code: Alt + C to go to challenge room
    room_goto(room_challenge1);
}
if (keyboard_check_pressed(ord("S"))) {
    // Cheat code: Alt + C to increase score by 1
    score+=1;
}


