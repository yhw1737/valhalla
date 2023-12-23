
draw_sprite(S_Mouse,0,mouse_x,mouse_y);

if room == R_Round{
	if pause && !selpause{
		draw_sprite(S_Pause,0,display_get_gui_width()/2,128);
	}
	for(var i=0;i<heart;i++){
		draw_sprite(S_Heart,0,64+64*i,64);
	}
	draw_sprite(S_Gold,0,64,128);
	var p = 1;
	for(var i=1;i<11;i++){
		if gold div power(10,i) < 1{
			p = i;
			break;
		}
	}
	for(var i=0;i<p;i++){
		draw_sprite(S_Numbers,gold/power(10,p-i-1),128+48*i,128);
	}
	if object_exists(O_Devil){
		with(O_Devil){
			draw_sprite_stretched(S_HealthBar,0,x-sprite_get_width(S_HealthBar)/2,y-48,sprite_get_width(S_HealthBar)*hp/maxhp,sprite_get_height(S_HealthBar));
		}
	}
	if object_exists(O_Angel){
		with(O_Angel){
			for(var i=0;i<star;i++) draw_sprite(S_Star,0,x-(star-1)*8+16*i,y+32);
		}
	}
}
