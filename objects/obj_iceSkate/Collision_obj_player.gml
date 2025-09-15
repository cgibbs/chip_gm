array_push(obj_player.keys, obj_iceSkate);
instance_destroy(self);
var ik = instance_nearest(0,0,obj_invIceSkates);
ik.visible = true;