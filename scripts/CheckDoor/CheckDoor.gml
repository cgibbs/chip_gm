// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
global.door_list = [obj_redDoor, obj_blueDoor, obj_yellowDoor, obj_greenDoor]
// this shouldn't be global but I'm not going to figure out the right way to do it, lmao
global.doorToUnlock = undefined;
function CheckDoor(dir){
	for (var i = 0; i < array_length(global.door_list); i++) {
		global.doorToUnlock = undefined;
		var doorObj = global.door_list[i];
		switch(dir)
		{
			case "Left":
				if(place_meeting(x-tileSize, y, doorObj))
				{
					var inst = instance_place(x-tileSize, y, doorObj);
					if (array_contains(obj_player.keys, inst.doorKey)) {
						global.doorToUnlock = inst;	
					}
				}
			break;
		
			case "Right":
				if(place_meeting(x+tileSize, y, doorObj))
				{
					var inst = instance_place(x+tileSize, y, doorObj);
					if (array_contains(obj_player.keys, inst.doorKey)) {
						global.doorToUnlock = inst;	
					}
				}
			break;
		
			case "Up":
				if(place_meeting(x, y-tileSize, doorObj))
				{
					var inst = instance_place(x, y-tileSize, doorObj);
					if (array_contains(obj_player.keys, inst.doorKey)) {
						global.doorToUnlock = inst;	
					}
				}
			break;
		
			case "Down":
				if(place_meeting(x, y+tileSize, doorObj))
				{
					var inst = instance_place(x, y+tileSize, doorObj);
					if (array_contains(obj_player.keys, inst.doorKey)) {
						global.doorToUnlock = inst;	
					}
				}
			break;
		}
	
		if global.doorToUnlock != undefined {
			show_debug_message(obj_player.keys);
			var _f = function(_element, _index) {
				show_debug_message(_element);
				return _element == global.doorToUnlock.doorKey;
			}
			array_delete(obj_player.keys, array_find_index(obj_player.keys, _f),1)
			show_debug_message(obj_player.keys);
			instance_destroy(global.doorToUnlock);
		}
	}
	
	// chip door stuff, special case
	global.doorToUnlock = undefined;
	switch(dir)
	{
		case "Left":
			if(place_meeting(x-tileSize, y, obj_chipDoor))
			{
				var inst = instance_place(x-tileSize, y, obj_chipDoor);
				if (global.chipsRequired <= obj_player.chips) {
					global.doorToUnlock = inst;	
				}
			}
		break;
		
		case "Right":
			if(place_meeting(x+tileSize, y, obj_chipDoor))
			{
				var inst = instance_place(x+tileSize, y, obj_chipDoor);
				if (global.chipsRequired <= obj_player.chips) {
					global.doorToUnlock = inst;	
				}
			}
		break;
		
		case "Up":
			if(place_meeting(x, y-tileSize, obj_chipDoor))
			{
				var inst = instance_place(x, y-tileSize, obj_chipDoor);
				if (global.chipsRequired <= obj_player.chips) {
					global.doorToUnlock = inst;	
				}
			}
		break;
		
		case "Down":
			if(place_meeting(x, y+tileSize, obj_chipDoor))
			{
				var inst = instance_place(x, y+tileSize, obj_chipDoor);
				if (global.chipsRequired <= obj_player.chips) {
					global.doorToUnlock = inst;	
				}
			}
		break;
	}
	
	if global.doorToUnlock != undefined {
		instance_destroy(global.doorToUnlock);
	}
}