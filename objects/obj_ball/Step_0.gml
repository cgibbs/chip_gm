function check_forward_empty(facing) {
	switch (facing) {
		case "left":
			return (instance_position(x-tileSize, y, collision_list) == noone)
		case "down":
			return (instance_position(x, y+tileSize, collision_list) == noone)
		case "right":
			return (instance_position(x+tileSize, y, collision_list) == noone)
		case "up":
			return (instance_position(x, y-tileSize, collision_list) == noone)
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

function return_backward(facing) {
	if(self.facing == "up") {
		return "down";
	}
	else if(self.facing == "left") {
		return "right";
	}
	else if(self.facing == "down") {
		return "up";
	}
	else if(self.facing == "right") {
		return "left";
	}	
}

if (global.ticks % 10 == 0) {
	if (check_forward_empty(facing)) {
		move_forward(facing);
	} else {
		self.facing = return_backward(self.facing);
	}
}