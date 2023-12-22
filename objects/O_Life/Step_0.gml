
if hit = 1{
	if (val < 1) {val+=4/room_speed;}
	else {hit = 0; O_System.heart--;}
}
else{
	if (val > 0) {val-=4/room_speed;}
}
