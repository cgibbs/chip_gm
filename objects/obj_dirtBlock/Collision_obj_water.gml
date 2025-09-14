var water_inst = instance_nearest(self.x, self.y, obj_water);
instance_destroy(water_inst);
instance_change(obj_softDirt, false);