if (!stepped) {
	for (var i = 0; i < instance_number(obj_trap); ++i;)
	{
	    var trapInst = instance_find(obj_trap,i);
		trapInst.sticky = false;
	}
	
	stepped = true;
}