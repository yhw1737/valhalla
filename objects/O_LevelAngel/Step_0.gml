
if !pause && !inven{
	var in = -4;
	if instance_exists(O_Devil) {in = instance_nearest(x,y,O_Devil);}
	else {in = -4}

	if in != -4{
		if point_distance(x,y,in.x,in.y) <= attrange{
			//image_angle = point_distance(x,y,in.x,in.y);
			if delay <= 0{
				var it = instance_create_depth(x,y,depth-1,O_Bullet);
				it.dmg = dmg;
				it.target = in;
				it.from = id;
				delay = attspd;
				hit = 1;
			}
		}
	}

	if hit = 1{
		if (val < 1) {val+=4/room_speed;}
		else {hit = 0;}
	}
	else{
		if (val > 0) {val-=4/room_speed;}
	}
	
	if level >= 5{
		dmg+=dmg_*0.1;
		level -= 5;
		reallevel++;
	}
	
	if reallevel >= 5{
		attspd *= 0.95;
		dmg_ = dmg;
		attrange+=32;
	}
}

if inven && drag{
	x = mouse_x;
	y = mouse_y;
}
