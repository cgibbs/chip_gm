if (global.ticks % 10 == 0) {
	var inst = instance_nearest(x, y, obj_player)	
	inst.y += tileSize;
}