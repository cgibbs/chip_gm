if(stepped and (instance_position(x, y,moveable_list) == noone)) {
	stepped = false;	
}

if (!stepped and !(instance_position(x, y,moveable_list) == noone)) {
	// do clone stuff
	stepped = true;
}