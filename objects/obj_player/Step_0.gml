/// @description Insert description here
// You can write your code in this editor
var left, right, up, down, restart;
global.ticks++; // increment on player object ONLY

left = keyboard_check_pressed(vk_left);
right = keyboard_check_pressed(vk_right);
up = keyboard_check_pressed(vk_up);
down = keyboard_check_pressed(vk_down);
restart = keyboard_check_pressed(ord("R"));

if(left)
{
	image_index = 3;
	CheckIfEmpty("Left");
	CheckDoor("Left");
}

if(right)
{
	image_index = 2;
	CheckIfEmpty("Right");
	CheckDoor("Right");
}

if(up)
{
	image_index = 0;
	CheckIfEmpty("Up");
	CheckDoor("Up");
}

if(down)
{
	image_index = 1;
	CheckIfEmpty("Down");
	CheckDoor("Down");
}

if(restart)
{
	room_restart();	
}
