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

function update_sprite(facing) {
	switch (facing) {
		case "Down":
			image_index = 0;
			break;
		case "Left":
			image_index = 1;
			break;
		case "Up":
			image_index = 2;
			break;
		case "Right":
			image_index = 3;
			break;
	}
}

if (global.ticks % 10 == 0) {
	if (!stopped and check_forward_empty(facing)) {
		update_sprite(facing);
		move_forward(facing);
	} else {
		stopped = true;	
	}
}