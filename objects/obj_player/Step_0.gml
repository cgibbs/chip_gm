/// @description Insert description here
// You can write your code in this editor
var left, right, up, down, restart;
global.ticks++; // increment on player object ONLY

left = keyboard_check_pressed(vk_left);
right = keyboard_check_pressed(vk_right);
up = keyboard_check_pressed(vk_up);
down = keyboard_check_pressed(vk_down);
restart = keyboard_check_pressed(ord("R"));

if(left and !move_lock)
{
	image_index = 3;
	CheckIfEmpty("Left");
	CheckDoor("Left");
}

if(right and !move_lock)
{
	image_index = 2;
	CheckIfEmpty("Right");
	CheckDoor("Right");
}

if(up and !move_lock)
{
	image_index = 0;
	CheckIfEmpty("Up");
	CheckDoor("Up");
}

if(down and !move_lock)
{
	image_index = 1;
	CheckIfEmpty("Down");
	CheckDoor("Down");
}

if(restart)
{
	room_restart();	
}

if(global.ticks % 10 == 0) {
	if (moving) {
		switch (facing) {
			// can change image index here
			case "Up":
				y -= tileSize;
				break;
			case "Down":
				y += tileSize;
				break;
			case "Left":
				x -= tileSize;
				break;
			case "Right":
				x += tileSize;
				break;
			default:
				break;
		}
		moving = false;
		ghosting_tick = global.ticks + 20;
	}
}

if(global.ticks == ghosting_tick and !move_lock) {
	facing = "Down";
}

// sliding on ice
if(move_lock) {
	if (!place_meeting(x, y, ice_list)) {
		move_lock = false;
		return;
	}
	
	// only bounce when not on an ice corner
	if(!CheckIfEmpty(facing) and place_meeting(x, y, obj_ice)) {
		// not empty, could not move, bounce back
		switch (facing) {
			case "Up":
				facing = "Down";
				break;
			case "Down":
				facing = "Up"
				break;
			case "Left":
				facing = "Right";
				break;
			case "Right":
				facing = "Left";
				break;
		}
	}
}

switch(facing) {
	case "Up":
		image_index = 2;
		break;
	case "Down":
		image_index = 0;
		break;
	case "Left":
		image_index = 1;
		break;
	case "Right":
		image_index = 3;
		break;
}