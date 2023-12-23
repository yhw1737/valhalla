
if hit = 1{
	draw_sprite_ext(sprite_index,0,x,y,1+0.1*easing.out_back(val),1+0.1*easing.out_back(val),0,c_white,1);
}
else{
	draw_sprite_ext(sprite_index,0,x,y,1+0.1*easing.in_back(val),1+0.1*easing.in_back(val),0,c_white,1);
}

if alarm_[wave] > room_speed{
	draw_sprite(S_Numbers,floor(alarm_[wave]/room_speed),x,y-32);
}
