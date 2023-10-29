// Draw GUI Event in obj_instructions
draw_set_font(fnt_menu); // Set the default font for the GUI

var headingFont = fnt_menu; // Set the font for headings
var contentFont = fnt_menu; // Set the font for content

// Center the text in the room
var centerX = display_get_width() / 2;
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
instructionsText += "- Press 'Up' Arrow to jump in challenge.\n";
instructionsText += "- Keep pressing 'A' Arrow to use the sword to attack enemies.\n";
instructionsText += "- Player wins when Score reaches 5.\n";
instructionsText += "- While playing the challenge, falling on the red block leads to Score = 0\n";
instructionsText += "- Collect honey and hover over the bee hive to drop off honey.\n\n";
draw_text( contentX, contentY, instructionsText );

// Adjust spacing for cheat codes
contentY += 150;

// Display cheat codes
var cheats = "Cheat Codes:";
draw_set_font(headingFont);
draw_text( centerX, contentY, cheats );

contentY += 40;
draw_set_font(contentFont);
var cheatText = "A: When near the sword use this to carry it along with you.\n";
cheatText += "R: Restart the room\n";
cheatText += "Alt + C: Restart the room\n";
cheatText += "Alt + G: Restart the game\n";
cheatText += "Alt + L: Increase lives by 5\n";
cheatText += "Alt + N: Move to the next room\n";
cheatText += "Alt + 1: Move to Room1\n";
cheatText += "Alt + 2: Move to Room2\n";
cheatText += "Alt + 3: Move to Room3\n";
draw_text( contentX, contentY, cheatText );

// Adjust spacing for team information
contentY += 150;

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
