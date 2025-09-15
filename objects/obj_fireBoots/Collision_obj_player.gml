array_push(obj_player.keys, obj_fireBoots);
instance_destroy(self);
var ik = instance_nearest(0,0,obj_invFireBoots);
ik.visible = true;