if(array_contains(obj_player.keys, obj_iceSkate)) {
	return;	
}
if (obj_player.facing == "Down") {
	obj_player.facing = "Left";
}
else if (obj_player.facing == "Right") {
	obj_player.facing = "Up";	
}