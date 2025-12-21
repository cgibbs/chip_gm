if(stepped and !place_meeting(x, y, obj_player)) {
	stepped = false;
	
	for (var i = 0; i < instance_number(obj_trap); ++i;)
	{
	    var trapInst = instance_find(obj_trap,i);
		trapInst.sticky = true;
	}
}