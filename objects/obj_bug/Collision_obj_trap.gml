var trapInst = instance_nearest(self.x,self.y,obj_trap);

if (trapInst.sticky) {
	move_lock = true;	
} else {
	move_lock = false;	
}