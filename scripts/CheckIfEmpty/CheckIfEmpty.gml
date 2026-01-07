// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckIfEmpty(dir){
	var successful = false;
	switch(dir)
	{
		case "Left":
			if(place_free(x-tileSize, y))
			{
				//x -= tileSize;
				facing = "Left";
				moving = true;
				successful = true;
			}
			else
			{
				if(place_meeting(x-tileSize, y, obj_dirtBlock) and place_free(x-tileSize*2, y))
				{
					var inst = instance_place(x-tileSize, y, obj_dirtBlock);
					inst.x -= tileSize;
					x -= tileSize;
					successful = true;
				} else if(place_meeting(x-tileSize, y, obj_blueWall)) 
				{
					var inst = instance_place(x-tileSize, y, obj_blueWall);
					instance_destroy(inst);
					instance_create_layer(x-tileSize, y, "Instances", obj_wall);
				} else if(place_meeting(x-tileSize, y, obj_hiddenWall)) 
				{
					var inst = instance_place(x-tileSize, y, obj_hiddenWall);
					instance_destroy(inst);
					instance_create_layer(x-tileSize, y, "Instances", obj_wall);
				}
			}
		break;
		
		case "Right":
			if(place_free(x+tileSize, y))
			{
				//x += tileSize;
				facing = "Right";
				moving = true;
				successful = true;
			}
			else
			{
				if(place_meeting(x+tileSize, y, obj_dirtBlock) and place_free(x+tileSize*2, y))
				{
					var inst = instance_place(x+tileSize, y, obj_dirtBlock);
					inst.x += tileSize;
					x += tileSize;
					successful = true;
				} else if(place_meeting(x+tileSize, y, obj_blueWall)) 
				{
					var inst = instance_place(x+tileSize, y, obj_blueWall);
					instance_destroy(inst);
					instance_create_layer(x+tileSize, y, "Instances", obj_wall);
				} else if(place_meeting(x+tileSize, y, obj_hiddenWall)) 
				{
					var inst = instance_place(x+tileSize, y, obj_hiddenWall);
					instance_destroy(inst);
					instance_create_layer(x+tileSize, y, "Instances", obj_wall);
				}
			}
		break;
		
		case "Up":
			if(place_free(x, y-tileSize))
			{
				//y -= tileSize;
				facing = "Up";
				moving = true;
				successful = true;
			}
			else
			{
				if(place_meeting(x, y-tileSize, obj_dirtBlock) and place_free(x, y-tileSize*2))
				{
					var inst = instance_place(x, y-tileSize, obj_dirtBlock);
					inst.y -= tileSize;
					y -= tileSize;
					successful = true;
				} else if(place_meeting(x, y-tileSize, obj_blueWall)) 
				{
					var inst = instance_place(x, y-tileSize, obj_blueWall);
					instance_destroy(inst);
					instance_create_layer(x, y-tileSize, "Instances", obj_wall);
				} else if(place_meeting(x, y-tileSize, obj_hiddenWall)) 
				{
					var inst = instance_place(x, y-tileSize, obj_hiddenWall);
					instance_destroy(inst);
					instance_create_layer(x, y-tileSize, "Instances", obj_wall);
				}
			}
		break;
		
		case "Down":
			if(place_free(x, y+tileSize))
			{
				//y += tileSize;
				facing = "Down";
				moving = true;
				successful = true;
			}
			else
			{
				if(place_meeting(x, y+tileSize, obj_dirtBlock) and place_free(x, y+tileSize*2))
				{
					var inst = instance_place(x, y+tileSize, obj_dirtBlock);
					inst.y += tileSize;
					y += tileSize;
					successful = true;
				} else if(place_meeting(x, y+tileSize, obj_blueWall)) 
				{
					var inst = instance_place(x, y+tileSize, obj_blueWall);
					instance_destroy(inst);
					instance_create_layer(x, y+tileSize, "Instances", obj_wall);
				} else if(place_meeting(x, y+tileSize, obj_hiddenWall)) 
				{
					var inst = instance_place(x, y+tileSize, obj_hiddenWall);
					instance_destroy(inst);
					instance_create_layer(x, y+tileSize, "Instances", obj_wall);
				}
			}
		break;
	}
	return successful;
}