if(stepped and (instance_position(x, y,moveable_list) == noone)) {
	stepped = false;	
}

if (!stepped and !(instance_position(x, y,moveable_list) == noone)) {
	var toggledOnCount = instance_number(obj_toggleWallOn);
	var testToggledOffCount = instance_number(obj_toggleWallOff);
	var testToggledCount = instance_number(obj_toggleWall);
	
	with(obj_toggleWallOn) 
	{
		instance_change(obj_toggleWallTemp, false);
	}
	
	with(obj_toggleWallOff)
	{
		instance_change(obj_toggleWallOn, false);	
	}
	
	with(obj_toggleWallTemp)
	{
		instance_change(obj_toggleWallOff, false);	
	}
	
	var toggledOnCount2 = instance_number(obj_toggleWallOn);
	var testToggledOffCount2 = instance_number(obj_toggleWallOff);
	var toggledTempCount2 = instance_number(obj_toggleWallTemp);
	stepped = true;
}