if(stepped and (instance_position(x, y,moveable_list) == noone)) {
	stepped = false;	
}

if (!stepped and !(instance_position(x, y,moveable_list) == noone)) {
	// do clone stuff
	// check all cloners for matching clone key, then do cloning stuff with
	// that specific cloner
	var key = self.clone_key;
	with(obj_cloner) 
	{
		if (clone_key == key)
		{
			// clone the thing
			var clone_x = x;
			var clone_y = y;
			if facing == "Left" clone_x -= 1;
			else if facing == "Right" clone_x +=1;
			else if facing == "Up" clone_y -= 1;
			else if facing == "Down" clone_y += 1;
			var new_clone_obj = instance_create_layer(clone_x, clone_y, "Instances", clone_obj);
			new_clone_obj.facing = facing;
		}
	}
	stepped = true;
}