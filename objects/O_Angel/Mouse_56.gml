
drag = false;
O_System.drag = false;
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
