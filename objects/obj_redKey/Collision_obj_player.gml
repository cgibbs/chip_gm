array_push(obj_player.keys, obj_redKey);
instance_destroy(self);
var ik = instance_nearest(0,0,obj_invRedKey);
ik.visible = true;