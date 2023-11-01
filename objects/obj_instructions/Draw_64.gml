// Draw GUI Event in obj_instructions
draw_set_font(fnt_menu); // Set the default font for the GUI

var headingFont = fnt_menu; // Set the font for headings
var contentFont = fnt_menu; // Set the font for content

// Center the text in the room
var centerX = display_get_width() / 3;
var centerY = display_get_height() / 3;

// Display game instructions
var instructions = "Welcome to Our Game!";
draw_set_font(headingFont);
draw_text( centerX, centerY - 100, instructions);

var contentX = centerX - 200;
var contentY = centerY - 30;

draw_set_font(contentFont);
var instructionsText = "Instructions:\n";
instructionsText += "- Use the arrow keys to move.\n";
instructionsText += "- Press 'Up' arrow to jump in challenge.\n";
instructionsText += "- ***Press 'Space Bar' key to attack enemies.***\n";
instructionsText += "- ***Player can only attack on the left side of the enemy.***\n";
instructionsText += "- ***Use Space only when colliding and on the enemy. Player should be on the enemy. ***\n";
instructionsText += "- Collect honey to gain score.\n";
instructionsText += "- Player wins when Score reaches 5 and they go back to hive.\n";
instructionsText += "- While playing the challenge, falling on the red block resets the score to zero\n";

draw_text( contentX, contentY, instructionsText );

// Adjust spacing for cheat codes
contentY += 200;

// Display cheat codes
var cheats = "Cheat Codes:";
draw_set_font(headingFont);
draw_text( centerX, contentY, cheats );

contentY += 40;
draw_set_font(contentFont);
var cheatText = "R: Restart the room\n";
cheatText += "Alt + C: Restart the room\n";
cheatText += "Alt + G: Restart the game\n";
cheatText += "Alt + L: Increase lives by 5\n";
cheatText += "Alt + B: Move to the previous room\n";
cheatText += "Alt + N: Move to the next room\n";
cheatText += "Alt + 1: Move to Room1\n";
cheatText += "Alt + 2: Move to Room2\n";
cheatText += "Alt + 3: Move to Room3\n";
draw_text( contentX, contentY, cheatText );

// Adjust spacing for team information
contentY += 190;

// Display team member names and roles
var teamInfo = "Meet the Team:";
draw_set_font(headingFont);
draw_text( centerX, contentY, teamInfo );

contentY += 40;
draw_set_font(contentFont);
var teamText = "Phani Kiran Reddy D - Programmer\n";
teamText += "Abhinav Sharma - Game Producer\n";
teamText += "Kiet Mai - Game Designer\n";
teamText += "Greyson Hoover - Artist\n";
draw_text( contentX, contentY, teamText );

draw_set_font(fnt_menu); // Reset the font to the default font
