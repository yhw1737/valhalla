if point_distance(x,y,mouse_x,mouse_y) <= 64{
	move_towards_point(mouse_x,mouse_y,1);
	if point_distance(x,y,mouse_x,mouse_y) <= 10{
		O_System.exp_++;
		instance_destroy();
	}
}
else{
	speed = 0;
}