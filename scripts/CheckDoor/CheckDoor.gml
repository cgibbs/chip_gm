// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
global.door_list = [obj_redDoor]
function CheckDoor(dir){
	var doorToUnlock = undefined;
	switch(dir)
	{
		case "Left":
			if(place_meeting(x-tileSize, y, obj_redDoor))
			{
				var inst = instance_place(x-tileSize, y, obj_redDoor);
				if (array_contains(obj_player.keys, inst.doorKey)) {
					doorToUnlock = inst;	
				}
				//if(inst.doorKey)
				//{
				//	show_debug_message("door detected");
				//	//inst.x -= tileSize;
				//	//x -= tileSize;
				//}
			}
		break;
		
		case "Right":
			if(place_meeting(x+tileSize, y, obj_redDoor))
			{
				var inst = instance_place(x+tileSize, y, obj_redDoor);
				if (array_contains(obj_player.keys, inst.doorKey)) {
					doorToUnlock = inst;	
				}
			}
		break;
		
		case "Up":
			if(place_meeting(x, y-tileSize, obj_redDoor))
			{
				var inst = instance_place(x, y-tileSize, obj_redDoor);
				if (array_contains(obj_player.keys, inst.doorKey)) {
					doorToUnlock = inst;	
				}
			}
		break;
		
		case "Down":
			if(place_meeting(x, y+tileSize, obj_redDoor))
			{
				var inst = instance_place(x, y+tileSize, obj_redDoor);
				if (array_contains(obj_player.keys, inst.doorKey)) {
					doorToUnlock = inst;	
				}
			}
		break;
	}
	
	if doorToUnlock != undefined {
		instance_destroy(doorToUnlock);
	}
}