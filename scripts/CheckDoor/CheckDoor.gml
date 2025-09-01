// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
global.door_list = [obj_redDoor, obj_blueDoor, obj_yellowDoor, obj_greenDoor]
function CheckDoor(dir){
	for (var i = 0; i < array_length(global.door_list); i++) {
		var doorToUnlock = undefined;
		var doorObj = global.door_list[i];
		switch(dir)
		{
			case "Left":
				if(place_meeting(x-tileSize, y, doorObj))
				{
					var inst = instance_place(x-tileSize, y, doorObj);
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
				if(place_meeting(x+tileSize, y, doorObj))
				{
					var inst = instance_place(x+tileSize, y, doorObj);
					if (array_contains(obj_player.keys, inst.doorKey)) {
						doorToUnlock = inst;	
					}
				}
			break;
		
			case "Up":
				if(place_meeting(x, y-tileSize, doorObj))
				{
					var inst = instance_place(x, y-tileSize, doorObj);
					if (array_contains(obj_player.keys, inst.doorKey)) {
						doorToUnlock = inst;	
					}
				}
			break;
		
			case "Down":
				if(place_meeting(x, y+tileSize, doorObj))
				{
					var inst = instance_place(x, y+tileSize, doorObj);
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
	
	// chip door stuff, special case
	var doorToUnlock = undefined;
	switch(dir)
	{
		case "Left":
			if(place_meeting(x-tileSize, y, obj_chipDoor))
			{
				var inst = instance_place(x-tileSize, y, obj_chipDoor);
				if (global.chipsRequired <= obj_player.chips) {
					doorToUnlock = inst;	
				}
			}
		break;
		
		case "Right":
			if(place_meeting(x+tileSize, y, obj_chipDoor))
			{
				var inst = instance_place(x+tileSize, y, obj_chipDoor);
				if (global.chipsRequired <= obj_player.chips) {
					doorToUnlock = inst;	
				}
			}
		break;
		
		case "Up":
			if(place_meeting(x, y-tileSize, obj_chipDoor))
			{
				var inst = instance_place(x, y-tileSize, obj_chipDoor);
				if (global.chipsRequired <= obj_player.chips) {
					doorToUnlock = inst;	
				}
			}
		break;
		
		case "Down":
			if(place_meeting(x, y+tileSize, obj_chipDoor))
			{
				var inst = instance_place(x, y+tileSize, obj_chipDoor);
				if (global.chipsRequired <= obj_player.chips) {
					doorToUnlock = inst;	
				}
			}
		break;
	}
	
	if doorToUnlock != undefined {
		instance_destroy(doorToUnlock);
	}
}