array_push(obj_player.keys, obj_magnetBoots);
instance_destroy(self);
var ik = instance_nearest(0,0,obj_invMagnetBoots);
ik.visible = true;