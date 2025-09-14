show_debug_message(self.facing);

function check_relative_left_wall_exists(facing) {
	switch (facing) {
		case "up":
			//return !place_free(x-tileSize, y);
			return !(instance_position(x-tileSize, y, [obj_wall, obj_dirtBlock, obj_softDirt]) == noone)
		case "left":
			//return !place_free(x, y+tileSize);
			return !(instance_position(x, y+tileSize, [obj_wall, obj_dirtBlock, obj_softDirt]) == noone)
		case "down":
			//return !place_free(x+tileSize, y);
			return !(instance_position(x+tileSize, y, [obj_wall, obj_dirtBlock, obj_softDirt]) == noone)
		case "right":
			//return !place_free(x, y-tileSize);
			return !(instance_position(x, y-tileSize, [obj_wall, obj_dirtBlock, obj_softDirt]) == noone)
	}
}

function check_forward_empty(facing) {
	switch (facing) {
		case "left":
			//return place_free(x-tileSize, y);
			return (instance_position(x-tileSize, y, [obj_wall, obj_dirtBlock, obj_softDirt]) == noone)
		case "down":
			//return place_free(x, y+tileSize);
			return (instance_position(x, y+tileSize, [obj_wall, obj_dirtBlock, obj_softDirt]) == noone)
		case "right":
			//return place_free(x+tileSize, y);
			return (instance_position(x+tileSize, y, [obj_wall, obj_dirtBlock, obj_softDirt]) == noone)
		case "up":
			//return place_free(x, y-tileSize);
			return (instance_position(x, y-tileSize, [obj_wall, obj_dirtBlock, obj_softDirt]) == noone)
	}
}

function move_forward(facing) {
	switch (facing) {
		case "left":
				x -= tileSize;
			break;
		case "down":
				y += tileSize;
			break;
		case "right":
				x += tileSize;
			break;
		case "up":
				y-= tileSize;
			break;
	}
}

function return_relative_right(facing) {
	switch (facing) {
		case "left":
			return "up";
		case "down":
			return "left";
		case "right":
			return "down";
		case "up":
			return "right";
	}
}

function return_relative_left(facing) {
	if(self.facing == "up") {
		return "left";
	}
	else if(self.facing == "left") {
		return "down";
	}
	else if(self.facing == "down") {
		return "right";
	}
	else if(self.facing == "right") {
		return "up";
	}	
}

if (self.ticks % 10 = 0) {
	// do bug stuff
	
	// move forward if empty
	if (check_forward_empty(self.facing)) {
		show_debug_message("moving forward");
		move_forward(self.facing);
	}

	// choose next move direction
	if (check_relative_left_wall_exists(self.facing)) {
		// left wall exists, check if way forward is clear
		if (check_forward_empty(self.facing)) {
			// you're good
		}
		// forward not empty, face right
		else {
			self.facing = return_relative_right(self.facing);
		}
	}
	else {
		// no left wall, turn left
		self.facing = return_relative_left(self.facing);
	}
}

self.ticks++;	
