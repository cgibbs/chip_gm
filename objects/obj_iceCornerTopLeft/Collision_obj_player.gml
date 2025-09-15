if(array_contains(obj_player.keys, obj_iceSkate)) {
	return;	
}
if (obj_player.facing == "Up") {
	obj_player.facing = "Right";
}
else if (obj_player.facing == "Left") {
	obj_player.facing = "Down";
}