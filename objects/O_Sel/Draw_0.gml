
if switch_ = 1{
	draw_sprite_ext(sprite_index,image_index,x,y,1+0.1*easing.out_back(val),1+0.1*easing.out_back(val),0,c_white,1);
}
else{
	draw_sprite_ext(sprite_index,image_index,x,y,1+0.1*easing.in_back(val),1+0.1*easing.in_back(val),0,c_white,1);
}
