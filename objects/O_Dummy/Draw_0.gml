
if switch_ = 1{
	draw_sprite_ext(sprite_index,0,x,y,1+0.2*easing.out_back(val),1+0.2*easing.out_back(val),0,c_white,1);
}
else{
	draw_sprite_ext(sprite_index,0,x,y,1+0.2*easing.in_back(val),1+0.2*easing.in_back(val),0,c_white,1);
}
