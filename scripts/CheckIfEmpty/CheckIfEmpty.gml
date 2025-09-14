// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckIfEmpty(dir){
	switch(dir)
	{
		case "Left":
			if(place_free(x-tileSize, y))
			{
				//x -= tileSize;
				facing = "left";
				moving = true;
			}
			else
			{
				if(place_meeting(x-tileSize, y, obj_dirtBlock) and place_free(x-tileSize*2, y))
				{
					var inst = instance_place(x-tileSize, y, obj_dirtBlock);
					inst.x -= tileSize;
					x -= tileSize;
				}
			}
		break;
		
		case "Right":
			if(place_free(x+tileSize, y))
			{
				//x += tileSize;
				facing = "right";
				moving = true;
			}
			else
			{
				if(place_meeting(x+tileSize, y, obj_dirtBlock) and place_free(x+tileSize*2, y))
				{
					var inst = instance_place(x+tileSize, y, obj_dirtBlock);
					inst.x += tileSize;
					x += tileSize;
				}
			}
		break;
		
		case "Up":
			if(place_free(x, y-tileSize))
			{
				//y -= tileSize;
				facing = "up";
				moving = true;
			}
			else
			{
				if(place_meeting(x, y-tileSize, obj_dirtBlock) and place_free(x, y-tileSize*2))
				{
					var inst = instance_place(x, y-tileSize, obj_dirtBlock);
					inst.y -= tileSize;
					y -= tileSize;
				}
			}
		break;
		
		case "Down":
			if(place_free(x, y+tileSize))
			{
				//y += tileSize;
				facing = "down";
				moving = true;
			}
			else
			{
				if(place_meeting(x, y+tileSize, obj_dirtBlock) and place_free(x, y+tileSize*2))
				{
					var inst = instance_place(x, y+tileSize, obj_dirtBlock);
					inst.y += tileSize;
					y += tileSize;
				}
			}
		break;
	}
}