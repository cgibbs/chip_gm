
function check_relative_left_wall_exists(facing) {
	switch (facing) {
		case "up":
			return !(instance_position(x-tileSize, y, collision_list) == noone)
		case "left":
			return !(instance_position(x, y+tileSize, collision_list) == noone)
		case "down":
			return !(instance_position(x+tileSize, y, collision_list) == noone)
		case "right":
			return !(instance_position(x, y-tileSize, collision_list) == noone)
	}
}

function check_relative_right_wall_exists(facing) {
	switch (facing) {
		case "up":
			return !(instance_position(x+tileSize, y, collision_list) == noone)
		case "left":
			return !(instance_position(x, y-tileSize, collision_list) == noone)
		case "down":
			return !(instance_position(x-tileSize, y, collision_list) == noone)
		case "right":
			return !(instance_position(x, y+tileSize, collision_list) == noone)
	}
}

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

function check_backward_empty(facing) {
	switch (facing) {
		case "left":
			return (instance_position(x+tileSize, y, collision_list) == noone)
		case "down":
			return (instance_position(x, y-tileSize, collision_list) == noone)
		case "right":
			return (instance_position(x-tileSize, y, collision_list) == noone)
		case "up":
			return (instance_position(x, y+tileSize, collision_list) == noone)
	}
}

function move_forward(facing) {
	if (move_lock) return;
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

function update_sprite(facing) {
	switch (facing) {
		case "down":
			image_index = 0;
			break;
		case "left":
			image_index = 1;
			break;
		case "up":
			image_index = 2;
			break;
		case "right":
			image_index = 3;
			break;
	}
}

if (global.ticks % 10 == 0) {
	if (!check_forward_empty(self.facing)) {
		 if (!check_relative_left_wall_exists(self.facing)) {
			self.facing = return_relative_left(self.facing);
			move_forward(self.facing);
		}
		 else if (!check_relative_right_wall_exists(self.facing)) {
			self.facing = return_relative_right(self.facing);
			move_forward(self.facing);
		} else if (!check_backward_empty(self.facing)) {
			self.facing = return_backward(self.facing);
			move_forward(self.facing);
		} else {
			// do nothing, stuck	
		}
		
	} else {
		move_forward(self.facing);	
	}
	update_sprite(facing);
}