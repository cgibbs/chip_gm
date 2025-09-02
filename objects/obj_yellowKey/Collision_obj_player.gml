array_push(obj_player.keys, obj_yellowKey);
instance_destroy(self);
var ik = instance_nearest(0,0,obj_invYellowKey);
ik.visible = true;