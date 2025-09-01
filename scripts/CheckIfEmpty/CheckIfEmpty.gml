// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckIfEmpty(dir){
	switch(dir)
	{
		case "Left":
			if(place_free(x-tileSize, y))
			{
				x -= tileSize;
			}
			else
			{
				if(place_meeting(x-tileSize, y, obj_box) and place_free(x-tileSize*2, y))
				{
					var inst = instance_place(x-tileSize, y, obj_box);
					if(!inst.snap)
					{
						inst.x -= tileSize;
						x -= tileSize;
					}
				}
			}
		break;
		
		case "Right":
			if(place_free(x+tileSize, y))
			{
				x += tileSize;
			}
			else
			{
				if(place_meeting(x+tileSize, y, obj_box) and place_free(x+tileSize*2, y))
				{
					var inst = instance_place(x+tileSize, y, obj_box);
					if(!inst.snap)
					{
						inst.x += tileSize;
						x += tileSize;
					}	
				}
			}
		break;
		
		case "Up":
			if(place_free(x, y-tileSize))
			{
				y -= tileSize;
			}
			else
			{
				if(place_meeting(x, y-tileSize, obj_box) and place_free(x, y-tileSize*2))
				{
					var inst = instance_place(x, y-tileSize, obj_box);
					if(!inst.snap)
					{
						inst.y -= tileSize;
						y -= tileSize;
					}
				}
			}
		break;
		
		case "Down":
			if(place_free(x, y+tileSize))
			{
				y += tileSize;
			}
			else
			{
				if(place_meeting(x, y+tileSize, obj_box) and place_free(x, y+tileSize*2))
				{
					var inst = instance_place(x, y+tileSize, obj_box);
					if(!inst.snap)
					{
						inst.y += tileSize;
						y += tileSize;
					}
				}
			}
		break;
	}
}