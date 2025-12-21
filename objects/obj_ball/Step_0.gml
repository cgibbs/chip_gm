function check_forward_empty(facing) {
	switch (facing) {
		case "Left":
			return (instance_position(x-tileSize, y, collision_list) == noone)
		case "Down":
			return (instance_position(x, y+tileSize, collision_list) == noone)
		case "Right":
			return (instance_position(x+tileSize, y, collision_list) == noone)
		case "Up":
			return (instance_position(x, y-tileSize, collision_list) == noone)
	}
}

function move_forward(facing) {
	switch (facing) {
		case "Left":
				x -= tileSize;
			break;
		case "Down":
				y += tileSize;
			break;
		case "Right":
				x += tileSize;
			break;
		case "Up":
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
		update_sprite(facing);
		move_forward(facing);
	} else {
		self.facing = return_backward(self.facing);
	}
}