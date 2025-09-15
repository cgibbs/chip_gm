if (global.ticks % 10 == 0) {
	if (!array_contains(obj_player.keys, obj_magnetBoots)) {
		var inst = instance_nearest(x, y, obj_player)	
		inst.x -= tileSize;
	}
}