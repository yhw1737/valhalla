
if hit = 1{
	draw_sprite_ext(sprite_index,0,x,y,1+0.5*easing.out_back(val),1+0.5*easing.out_back(val),0,c_white,1);
}
else{
	draw_sprite_ext(sprite_index,0,x,y,1+0.5*easing.in_back(val),1+0.5*easing.in_back(val),0,c_white,1);
}
