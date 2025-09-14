function check_relative_left_wall_exists(facing) {
	switch (facing) {
		case "up":
			return !(instance_position(x-tileSize, y, [obj_wall, obj_dirtBlock, obj_softDirt]) == noone)
		case "left":
			return !(instance_position(x, y+tileSize, [obj_wall, obj_dirtBlock, obj_softDirt]) == noone)
		case "down":
			return !(instance_position(x+tileSize, y, [obj_wall, obj_dirtBlock, obj_softDirt]) == noone)
		case "right":
			return !(instance_position(x, y-tileSize, [obj_wall, obj_dirtBlock, obj_softDirt]) == noone)
	}
}

function check_forward_empty(facing) {
	switch (facing) {
		case "left":
			return (instance_position(x-tileSize, y, [obj_wall, obj_dirtBlock, obj_softDirt]) == noone)
		case "down":
			return (instance_position(x, y+tileSize, [obj_wall, obj_dirtBlock, obj_softDirt]) == noone)
		case "right":
			return (instance_position(x+tileSize, y, [obj_wall, obj_dirtBlock, obj_softDirt]) == noone)
		case "up":
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

if (global.ticks % 10 = 0) {
	// do bug stuff once every n ticks

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
	
	// move forward if empty
	if (check_forward_empty(self.facing)) {
		move_forward(self.facing);
	}
}	
