array_push(obj_player.keys, obj_greenKey);
instance_destroy(self);
var ik = instance_nearest(0,0,obj_invGreenKey);
ik.visible = true;