#macro tileSize 32
keys = [];
depth =  -2000;

image_speed = 0;

// this keeps Chip animating smoothly by acting as 
// a constantly-updating offset on each movement input, 
// after which point the facing is returned to default 
// down position
ghosting_tick = 0;

ice_list = [obj_ice, obj_iceCornerBottomLeft, obj_iceCornerBottomRight, obj_iceCornerTopLeft, obj_iceCornerTopRight]