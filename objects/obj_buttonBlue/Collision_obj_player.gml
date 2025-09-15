if (!stepped) {
	for (var i = 0; i < instance_number(obj_tank); ++i;)
	{
	    var tankInst = instance_find(obj_tank,i);
		if (tankInst.facing == "Up") {
			tankInst.facing = "Down";
		} else if (tankInst.facing == "Down") {
			tankInst.facing = "Up";
		} else if (tankInst.facing == "Left") {
			tankInst.facing = "Right";
		} else if (tankInst.facing == "Right") {
			tankInst.facing = "Left";	
		}
		tankInst.stopped = false;
	}
	
	
	stepped = true;
}