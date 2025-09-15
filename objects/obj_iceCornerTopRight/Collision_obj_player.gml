if(array_contains(obj_player.keys, obj_iceSkate)) {
	return;	
}
if (obj_player.facing == "Right") {
	obj_player.facing = "Down";
}
else if (obj_player.facing == "Up") {
	obj_player.facing = "Left";
}