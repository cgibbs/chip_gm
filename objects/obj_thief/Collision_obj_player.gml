var inst = instance_nearest(x, y, obj_player);
inst.keys = array_intersection(inst.keys, [obj_redKey, obj_greenKey, obj_blueKey, obj_yellowKey]);

var ik = instance_nearest(0,0,obj_invMagnetBoots);
ik.visible = false;

ik = instance_nearest(0,0,obj_invFireBoots);
ik.visible = false;

ik = instance_nearest(0,0,obj_invFlipper);
ik.visible = false;

ik = instance_nearest(0,0,obj_invIceSkates);
ik.visible = false;