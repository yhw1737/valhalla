
if !pause{
	path_speed = spd;
	if hit = 1{
		if (val < 1) {val+=4/room_speed;}
		else {hit = 0;}
	}
	else{
		if (val > 0) {val-=4/room_speed;}
	}
}
else{
	path_speed = 0;
}
