// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function VerificaSeLivre(_lado){
	switch(_lado)
	{
		case "Left":
			if(place_free(x-64, y))
			{
				x -= 64;
			}
			else
			{
				if(place_meeting(x-64, y, obj_box) and place_free(x-128, y))
				{
					var inst = instance_place(x-64, y, obj_box);
					if(!inst.snap)
					{
						inst.x -= 64;
						x -= 64;
					}
				}
			}
		break;
		
		case "Right":
			if(place_free(x+64, y))
			{
				x += 64;
			}
			else
			{
				if(place_meeting(x+64, y, obj_box) and place_free(x+128, y))
				{
					var inst = instance_place(x+64, y, obj_box);
					if(!inst.snap)
					{
						inst.x += 64;
						x += 64;
					}	
				}
			}
		break;
		
		case "Up":
			if(place_free(x, y-64))
			{
				y -= 64;
			}
			else
			{
				if(place_meeting(x, y-64, obj_box) and place_free(x, y-128))
				{
					var inst = instance_place(x, y-64, obj_box);
					if(!inst.snap)
					{
						inst.y -= 64;
						y -= 64;
					}
				}
			}
		break;
		
		case "Down":
			if(place_free(x, y+64))
			{
				y += 64;
			}
			else
			{
				if(place_meeting(x, y+64, obj_box) and place_free(x, y+128))
				{
					var inst = instance_place(x, y+64, obj_box);
					if(!inst.snap)
					{
						inst.y += 64;
						y += 64;
					}
				}
			}
		break;
	}
}