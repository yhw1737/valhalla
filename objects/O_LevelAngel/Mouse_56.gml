
drag = false;
if inven{
	if object_exists(O_Dummy){
		if place_meeting(x,y,O_Dummy){
			var i_n = instance_nearest(x,y,O_Dummy);
			x = i_n.x;
			y = i_n.y;
			instance_destroy(i_n);
			inven = false;
		}
	}
}
if inven{
	if x <= room_width-50 && x >= 50 && y <= room_height-40 && y >= room_height-240{
		xx = x;
		yy = y;
	}
	else{
		x = xx;
		y = yy;
	}
}
