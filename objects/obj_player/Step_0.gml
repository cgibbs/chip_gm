/// @description Insert description here
// You can write your code in this editor

var left, right, up, down;

left = keyboard_check_pressed(vk_left);
right = keyboard_check_pressed(vk_right);
up = keyboard_check_pressed(vk_up);
down = keyboard_check_pressed(vk_down);

if(left)
{
	image_index = 3;
	VerificaSeLivre("Left");
}

if(right)
{
	image_index = 2;
	VerificaSeLivre("Right");
}

if(up)
{
	image_index = 0;
	VerificaSeLivre("Up");
}

if(down)
{
	image_index = 1;
	VerificaSeLivre("Down");
}
