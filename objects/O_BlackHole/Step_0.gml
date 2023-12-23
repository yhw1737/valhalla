
if !pause{
	if alarm_[0] == 0{
		if cnt0 > 0 {
			instance_create_depth(x,y,depth,O_Devil);
			hit = 1;
			cnt0--;
			alarm_[0] = room_speed;
		}
		else{
			alarm_[1] = room_speed*9;
			wave++;
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
