array_push(obj_player.keys, obj_flipper);
instance_destroy(self);
var ik = instance_nearest(0,0,obj_invFlipper);
ik.visible = true;