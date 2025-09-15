function clearInventoryDisplay(){
	var ik = instance_nearest(0,0,obj_invBlueKey);
	ik.visible = false;
	ik = instance_nearest(0,0,obj_invGreenKey);
	ik.visible = false;
	ik = instance_nearest(0,0,obj_invRedKey);
	ik.visible = false;
	ik = instance_nearest(0,0,obj_invYellowKey);
	ik.visible = false;
	ik = instance_nearest(0,0,obj_invFireBoots);
	ik.visible = false;
	ik = instance_nearest(0,0,obj_invFlipper);
	ik.visible = false;
	ik = instance_nearest(0,0,obj_invIceSkates);
	ik.visible = false;
	ik = instance_nearest(0,0,obj_invMagnetBoots);
	ik.visible = false;
}