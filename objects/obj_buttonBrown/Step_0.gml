if(stepped and (instance_position(x, y,moveable_list) == noone)) {
	stepped = false;
	
	for (var i = 0; i < instance_number(obj_trap); ++i;)
	{
	    var trapInst = instance_find(obj_trap,i);
		trapInst.sticky = true;
	}
}

if (!stepped and !(instance_position(x, y,moveable_list) == noone)) {
	for (var i = 0; i < instance_number(obj_trap); ++i;)
	{
	    var trapInst = instance_find(obj_trap,i);
		trapInst.sticky = false;
	}
	
	stepped = true;
}