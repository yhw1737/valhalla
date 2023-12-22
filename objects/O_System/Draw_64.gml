
if room == R_Round{
	if pause{
		draw_sprite(S_Pause,0,display_get_gui_width()/2,128);
	}
	for(var i=0;i<heart;i++){
		draw_sprite(S_Heart,0,64+64*i,64);
	}
	draw_sprite(S_Gold,0,64,128);
}
