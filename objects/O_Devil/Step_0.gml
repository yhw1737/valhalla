
if !pause{
	//path_speed = spd;
	if hit = 1{
		if (val < 1) {val+=4/room_speed;}
		else {hit = 0;}
	}
	else{
		if (val > 0) {val-=4/room_speed;}
	}
	if point_distance(x,y,O_Life.x,O_Life.y) <= 5{
		O_Life.hit = 1;
		O_Life.val = 0;
		instance_destroy();
	}
}
else{
	//path_speed = 0;
}
