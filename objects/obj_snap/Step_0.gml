/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x,y,obj_box) and !verificado)
{
	var inst_box = instance_place(x,y,obj_box);
	inst_box.snap = true;
	global.encaixes++;
	verificado = true;
}
