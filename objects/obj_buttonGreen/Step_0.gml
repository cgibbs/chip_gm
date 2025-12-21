if(stepped and (instance_position(x, y,moveable_list) == noone)) {
	stepped = false;	
}

if (!stepped and !(instance_position(x, y,moveable_list) == noone)) {
	for (var i = 0; i < instance_number(obj_toggleWallOn); ++i;)
	{
	    var toggleWallOnInst = instance_find(obj_toggleWallOn,i);
		//if (instance_exists(toggleWallOnInst)) toggleWallOnInst.instance_change(obj_toggleWallTemp, true);
		instance_create_layer(toggleWallOnInst.x, toggleWallOnInst.y, "Instances", obj_toggleWallTemp);
		instance_destroy(toggleWallOnInst);
	}
	
	for (var i = 0; i < instance_number(obj_toggleWallOff); ++i;)
	{
	    var toggleWallOffInst = instance_find(obj_toggleWallOff,i);
		//if (instance_exists(toggleWallOffInst)) toggleWallOffInst.instance_change(obj_toggleWallOn, true);
		instance_create_layer(toggleWallOffInst.x, toggleWallOffInst.y, "Instances", obj_toggleWallOn);
		instance_destroy(toggleWallOffInst);
	}
	
	for (var i = 0; i < instance_number(obj_toggleWallTemp); ++i;)
	{
	    var toggleWallOnInst = instance_find(obj_toggleWallTemp,i);
		//if (instance_exists(toggleWallOnInst)) toggleWallOnInst.instance_change(obj_toggleWallOff, true);
		instance_create_layer(toggleWallOnInst.x, toggleWallOnInst.y, "Instances", obj_toggleWallOff);
		instance_destroy(toggleWallOnInst);
	}
	
	stepped = true;
}