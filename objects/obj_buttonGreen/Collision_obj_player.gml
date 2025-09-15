if (!stepped) {
	for (var i = 0; i < instance_number(obj_toggleWall); ++i;)
	{
	    var toggleWallInst = instance_find(obj_toggleWall,i);
		toggleWallInst.toggledOn = !toggleWallInst.toggledOn;
		if (toggleWallInst.toggledOn) {
			toggleWallInst.image_index = 0;	
		} else {
			toggleWallInst.image_index = 1;	
		}
	}
	stepped = true;
}