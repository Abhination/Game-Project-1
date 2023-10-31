if place_meeting(x, y, obj_pin) {
        // Separate the objects to prevent overlap
        while (place_meeting(x, y, obj_pin)) {
            x += sign(xprevious - x);
            y += sign(yprevious - y);
        }
    }