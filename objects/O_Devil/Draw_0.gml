
if hit = 1{
	draw_sprite_ext(sprite_index,0,x,y,1+0.1*easing.out_back(val),1+0.1*easing.out_back(val),0,c_white,1);
}
else{
	draw_sprite_ext(sprite_index,0,x,y,1+0.1*easing.in_back(val),1+0.1*easing.in_back(val),0,c_white,1);
}

draw_sprite_stretched(S_HealthBar,0,x-sprite_get_width(S_HealthBar)/2,y-48,sprite_get_width(S_HealthBar)*hp/maxhp,sprite_get_height(S_HealthBar));
