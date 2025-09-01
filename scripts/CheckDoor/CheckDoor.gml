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
			var _f = function(_element, _index) {
				return _element == global.doorToUnlock.doorKey;
			}
			array_delete(obj_player.keys, array_find_index(obj_player.keys, _f),1)
			if array_find_index(obj_player.keys, _f) < 0 {
				var ui_flexpanels = layer_get_flexpanel_node("UILayer_1");
				switch global.doorToUnlock.doorKey {
					case obj_redKey:
					var redKey_panel = flexpanel_node_get_child(ui_flexpanels, "redKey");
						flexpanel_node_style_set_display(redKey_panel, flexpanel_display.none);
						break;
					case obj_blueKey:
						var blueKey_panel = flexpanel_node_get_child(ui_flexpanels, "blueKey");
						flexpanel_node_style_set_display(blueKey_panel, flexpanel_display.none);
						break;
					case obj_greenKey:
						var greenKey_panel = flexpanel_node_get_child(ui_flexpanels, "greenKey");
						flexpanel_node_style_set_display(greenKey_panel, flexpanel_display.none);
						break;
					case obj_yellowKey:
						var yellowKey_panel = flexpanel_node_get_child(ui_flexpanels, "yellowKey");
						flexpanel_node_style_set_display(yellowKey_panel, flexpanel_display.none);
						break;
				}
			}
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